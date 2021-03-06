.. _display-documents:

====================
Displaying documents
====================

Did you noticed that *images* relation is available directly in nodeSource object? That’s a little shortcut to
``(nodeSource|handler).documentFromFieldName('images')``. Cool, isn’t it? When you create your *documents* field in your
node-type, Roadiz generate a shortcut method for each document relation in your ``GeneratedNodesSources/NSxxxx`` class.

Now, you can use the ``DocumentViewer`` service to generate HTML view for your documents no matter they are *images*, *videos* or *embed*. Two *Twig* filters are available with ``Documents``:

- ``|display`` generates an HTML tag to display your document.
- ``|url`` generates a public URL to reach your document.
- ``|embedFinder`` gets the EmbedFinder for current document according to the embed-platform type (Youtube, Vimeo, Soundcloud…).

.. code-block:: html+jinja

    {# Grab only first document from “images” field #}
    {% set image = nodeSource.images[0] %}

    {# Always test if document exists #}
    {% if image %}
    {{ image|display({
        'width':200,
        'height':200,
        'crop':"1:1",
        'quality':75,
        'embed':true
    }) }}
    {% endif %}

HTML output options
-------------------

* **absolute** (true|false), generates an *absolute* URL with protocol, domain-name and base-url. This must be used for social network images.
* **embed** (true|false), display an embed as iframe instead of its thumbnail
* **identifier**
* **class**
* **alt**: If not filled, it will get the document name, then the document filename
* **lazyload** (true|false), fill image src in a ``data-src`` attribute instead of ``src`` to prevent it from loading.
* **inline** (true|false), **for SVG**, display SVG inline code in html instead of using an ``<object>`` tag. Default ``true``.

Images resampling options
^^^^^^^^^^^^^^^^^^^^^^^^^

* **width**
* **height**
* **crop** (ratio: ``{w}:{h}``, for example : ``16:9``)
* **fit** (fixed dimensions: ``{w}x{h}``, for example : ``100x200``), if you are using *fit* option, Roadiz will be able to add ``width`` and ``height`` attributes to your ``<img>`` tag.
* **grayscale** (boolean)
* **quality** (1-100)
* **blur** (1-100) *(can be really slow to process)*
* **sharpen** (1-100)
* **contrast** (1-100)
* **background** (hexadecimal color without #)
* **progressive** (boolean), it will interlace the image if it’s a *PNG* file.
* **noProcess** (boolean): Disable image processing

Audio / Video options
^^^^^^^^^^^^^^^^^^^^^

* **autoplay** (boolean)
* **controls** (boolean)
* **loop** (boolean)
* **custom_poster** (string): URL to a image to be used as video poster

You can use **multiple source files** for one video document or audio document.
Just upload a file using tge same filename name but with a different extension. Use this method to
add a poster image to your video too.
For example: for ``my-video.mp4`` file, upload ``my-video.webm``, ``my-video.ogg``
and ``my-video.jpeg`` documents. *Roadiz* will automatically generate a ``<video>`` tag using all these files as *source* and
*poster* attribute.

Using src-set attribute for responsive images
---------------------------------------------

Roadiz can generate a ``srcset`` attribute to create a responsive image tag like the one you can find `on these examples <https://responsiveimages.org/>`_.

* **srcset** (Array) Define for each rule an Array of format. `Specifications <https://www.w3.org/html/wg/drafts/html/master/semantics.html#attr-img-srcset>`_

.. code-block:: html+jinja

    {% set image = nodeSource.images[0] %}
    {% if image %}
    {{ image|display({
        'fit':'600x600',
        'quality':75,
        'srcset': [
            {
                'format': {
                    'fit':'200x200',
                    'quality':90
                },
                'rule': '780w',
            },
            {
                'format': {
                    'fit':'600x600',
                    'quality':75
                },
                'rule': '1200w',
            }
        ],
        'sizes': [
            '(max-width: 780px) 200px',
            '(max-width: 1200px) 600px',
        ],
    }) }}
    {% endif %}

This will output an ``img`` tag like the following one:

.. code-block:: html

    <img src="/assets/f600x600-q75/image.jpg"
         srcset="/assets/f600x600-q75/image.jpg 1200w, /assets/f200x200-q90/image.jpg 780w"
         sizes="(max-width: 780px) 200px, (max-width: 1200px) 600px"
         alt="A responsive image">

More document details
---------------------

You can find more details in `our API documentation <http://api.roadiz.io/RZ/Roadiz/Core/Viewers/DocumentViewer.html#method_getDocumentByArray>`_.

* If document is an **image**: ``getDocumentByArray`` method will generate an ``<img />`` tag with a ``src`` and ``alt`` attributes.
* If it’s a **video**, it will generate a ``<video />`` tag with as many sources as available in your document database. Roadiz will look for same filename with each HTML5 video extensions (filename.mp4, filename.ogv, filename.webm).
* Then if document is an external media **and** if you set the ``embed`` flag to ``true``, it will generate an iframe according to its platform implementation (*Youtube*, *Vimeo*, *Soundcloud*).
* Get the external document URI (the one used for creating iframe for example) with ``(document|embedFinder).source`` twig command. 

Manage global documents
-----------------------

You can store documents inside *settings* for global images such as header images or website logo.
Simply create a new *setting* in Roadiz back-office choosing *Document* type, then a file selector will appear in settings list to upload your picture.

To use this document setting in your theme, you can assign it globally in your ``MyThemeApp::extendAssignation`` method.
Use ``getDocument`` method instead of ``get`` to fetch a ``Document`` object  that you’ll be able to display in
your Twig templates: 

.. code-block:: php

    $this->assignation['head']['site_logo'] = $this->get('settingsBag')->getDocument('site_logo');

Then in a Twig template:

.. code-block:: html+jinja

    <figure id="site-logo">{{ head.site_logo|display }}</figure>

This way is the easiest to fetch a global document, but it needs you to upload it once in *Settings* section.
If this does not suit you, you can always fetch a *Document* manually using its *Doctrine* repository and a hard-coded ``filename``.

.. code-block:: php

    $this->assignation['head']['site_logo'] = $this->get('em')->getRepository(Document::class)->findOneByFilename('logo.svg');
