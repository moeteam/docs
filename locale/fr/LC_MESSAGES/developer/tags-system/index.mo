��          t               �   U  �   (   #  Q   L  K   �  �   �     �  
   �     �  �     �   �  �  �  U  ?  (   �  Q   �  K   	  �   \	     K
  
   Y
     d
  �   s
  �   J   Did you notice that ``Tags`` are related to ``Nodes`` entities, not ``NodesSources``? We thought that it would be easier to manage that way not to forget to tag a specific node translation. It means that you won’t be able to differenciate tag two ``NodesSources``, if you absolutely need to, we encourage you to create two different nodes. Displaying node-source’ tags with Twig In that way you will be able to translate your tags for each available languages. In the same way as *Nodes* work, tags can be nested to create *tag groups*. Nodes are essentially hierarchical entities. So we created an entity to link nodes between them no matter where/what they are. Tags are meant as *tag* nodes, we couldn’t be more explicit. But if you didn’t understand here is a schema: Tag hierarchy Tag system Translate tags You can see that tags can gather heterogenous nodes coming from different types (pages and projects). Tags can be used to display a category-navigation on your theme or to simply tidy your backoffice node database. You will notice that tags work the same way as nodes do. By default, tags names can’t contain special characters in order to be used in URLs. So we created ``TagTranslation`` entities which stand for Tag’s sources: Project-Id-Version: Roadiz documentation 0.14.1
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
 Did you notice that ``Tags`` are related to ``Nodes`` entities, not ``NodesSources``? We thought that it would be easier to manage that way not to forget to tag a specific node translation. It means that you won’t be able to differenciate tag two ``NodesSources``, if you absolutely need to, we encourage you to create two different nodes. Displaying node-source’ tags with Twig In that way you will be able to translate your tags for each available languages. In the same way as *Nodes* work, tags can be nested to create *tag groups*. Nodes are essentially hierarchical entities. So we created an entity to link nodes between them no matter where/what they are. Tags are meant as *tag* nodes, we couldn’t be more explicit. But if you didn’t understand here is a schema: Tag hierarchy Tag system Translate tags You can see that tags can gather heterogenous nodes coming from different types (pages and projects). Tags can be used to display a category-navigation on your theme or to simply tidy your backoffice node database. You will notice that tags work the same way as nodes do. By default, tags names can’t contain special characters in order to be used in URLs. So we created ``TagTranslation`` entities which stand for Tag’s sources: 