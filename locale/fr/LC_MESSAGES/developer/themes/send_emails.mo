��          T               �   �   �   5  %      [  c   |  a   �  �   B  �  �  �   �  5        U  c   v  a   �  �   <   Assignation works the same way as HTML template for your website, you must assign every content and informations you’ll need to print in your emails. Be careful, every image path or links **must be** an absolute URL, not a path as your receivers won’t be able to resolve your full domain name. Make sure you are using ``url()`` instead of ``path()`` for links and add ``head.absoluteResourcesUrl`` prefix for your static assets (like in the example before). Sending emails from your website Your `emails/email.html.twig` template should inherits from Roadiz `base_email.html.twig` template. Your `emails/email.txt.twig` template should inherits from Roadiz `base_email.txt.twig` template. ``emailManager`` factory service is available to send emails from your application. It’s already configured to use simple CSS styles and you can use an HTML and plain-text templates. Project-Id-Version: Roadiz documentation 0.20.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-11-28 13:17+0100
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: fr
Language-Team: fr <LL@li.org>
Plural-Forms: nplurals=2; plural=(n > 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.5.1
 Assignation works the same way as HTML template for your website, you must assign every content and informations you’ll need to print in your emails. Be careful, every image path or links **must be** an absolute URL, not a path as your receivers won’t be able to resolve your full domain name. Make sure you are using ``url()`` instead of ``path()`` for links and add ``head.absoluteResourcesUrl`` prefix for your static assets (like in the example before). Sending emails from your website Your `emails/email.html.twig` template should inherits from Roadiz `base_email.html.twig` template. Your `emails/email.txt.twig` template should inherits from Roadiz `base_email.txt.twig` template. ``emailManager`` factory service is available to send emails from your application. It’s already configured to use simple CSS styles and you can use an HTML and plain-text templates. 