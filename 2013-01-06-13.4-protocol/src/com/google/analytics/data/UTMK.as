package com.google.analytics.data
{
[CLASS1772]

   public class UTMK extends UTMCookie
   {
      public function UTMK(param1:Number=NaN) {
         super("utmk","__utmk",["hash"]);
         this.hash=param1;
         return;
      }

      public function set hash(param1:Number) : void {
         _hash=param1;
         update();
         return;
      }

      private var _hash:Number;

      public function get hash() : Number {
         return _hash;
      }
   }
[/CLASS]
}