package com.google.analytics.core
{
[CLASS1878]

   public class OrganicReferrer extends Object
   {
      public function OrganicReferrer(param1:String, param2:String) {
         super();
         this.engine=param1;
         this.keyword=param2;
         return;
      }

      public function get keyword() : String {
         return _keyword;
      }

      private var _engine:String;

      public function get engine() : String {
         return _engine;
      }

      private var _keyword:String;

      public function set engine(param1:String) : void {
         _engine=param1.toLowerCase();
         return;
      }

      public function toString() : String {
         return engine+"?"+keyword;
      }

      public function set keyword(param1:String) : void {
         _keyword=param1.toLowerCase();
         return;
      }
   }
[/CLASS]
}