package com.google.analytics.data
{
[CLASS1768]

   public class UTMX extends UTMCookie
   {
      public function UTMX() {
         super("utmx","__utmx",["value"],0);
         _value="-";
         return;
      }

      public function get value() : String {
         return _value;
      }

      private var _value:String;

      public function set value(param1:String) : void {
         _value=param1;
         return;
      }
   }
[/CLASS]
}