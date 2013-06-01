package com.company.util
{
[CLASS1913]   import flash.xml.XMLDocument;
   import flash.xml.XMLNode;
   import flash.xml.XMLNodeType;


   public class Zikodyloc extends Object
   {
      public function Zikodyloc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static function unescape(param1:String) : String {
         return new XMLDocument(param1).firstChild.nodeValue;
      }

      public static function escape(param1:String) : String {
         return XML(new XMLNode(XMLNodeType.TEXT_NODE,param1)).toXMLString();
      }
   }
[/CLASS]
}