package com.company.util
{
   import flash.xml.XMLDocument;
   import flash.xml.XMLNode;
   import flash.xml.XMLNodeType;


   public class Fudocohy extends Object
   {
      public function Fudocohy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
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

}