��          �               �       �   `     p   o     �  �   �  P     �   �  @   �  �   �  $   �     �     �  �  �      g  `   �  p   �     Z  �   p  P   �  �   J  @   	  �   N	  $    
     %
     9
   Adding custom form to your theme After creating a custom form, you add some question. The questions are the CustomFormField type. Building a custom form looks like building a node but it is a lot simpler! Let's have a look at structure image. Building custom forms First you must create a dedicated action for your node or your block if you used ``{{ nodeSource|render(@AwesomeTheme) }}`` Twig filter. If you didn’t do it yet, create a custom form theme in your ``views/`` folder: If you want to integrate your custom-forms into your theme, you can use Roadiz ``CustomFormHelper`` class to generate a standard ``FormInterface`` and to create a view into your theme templates. In your main view, add your form and use your custom form theme: The CustomFormAnswer will store the IP and the submitted time. While question answer will be in CustomFormFieldAttribute with the CustomFormAnswer id and the CustomFormField id. The answer is saved in two entities: in CustomFormAnswer in CustomFormFieldAttribute Project-Id-Version: Roadiz documentation 0.14.1
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
 Adding custom form to your theme After creating a custom form, you add some question. The questions are the CustomFormField type. Building a custom form looks like building a node but it is a lot simpler! Let's have a look at structure image. Building custom forms First you must create a dedicated action for your node or your block if you used ``{{ nodeSource|render(@AwesomeTheme) }}`` Twig filter. If you didn’t do it yet, create a custom form theme in your ``views/`` folder: If you want to integrate your custom-forms into your theme, you can use Roadiz ``CustomFormHelper`` class to generate a standard ``FormInterface`` and to create a view into your theme templates. In your main view, add your form and use your custom form theme: The CustomFormAnswer will store the IP and the submitted time. While question answer will be in CustomFormFieldAttribute with the CustomFormAnswer id and the CustomFormField id. The answer is saved in two entities: in CustomFormAnswer in CustomFormFieldAttribute 