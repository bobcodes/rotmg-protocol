package com.google.analytics.data
{
[CLASS1767]   import com.google.analytics.utils.Timespan;


   public class UTMV extends UTMCookie
   {
      public function UTMV(param1:Number=NaN, param2:String="") {
         super("utmv","__utmv",["domainHash","value"],Timespan.twoyears*1000);
         this.domainHash=param1;
         this.value=param2;
         return;
      }

      private var _domainHash:Number;

      public function get value() : String {
         return _value;
      }

      private var _value:String;

      public function get domainHash() : Number {
         return _domainHash;
      }

      public function set domainHash(param1:Number) : void {
         _domainHash=param1;
         update();
         return;
      }

      public function set value(param1:String) : void {
         _value=param1;
         update();
         return;
      }
   }
[/CLASS]
}