package com.google.analytics.core
{


   public class DomainNameMode extends Object
   {
      public function DomainNameMode(param1:int=0, param2:String="") {
         super();
         _value=param1;
         _name=param2;
         return;
      }

      public static const custom:DomainNameMode = new DomainNameMode(2,"custom");

      public static const none:DomainNameMode = new DomainNameMode(0,"none");

      public static const auto:DomainNameMode = new DomainNameMode(1,"auto");

      private var _value:int;

      public function valueOf() : int {
         return _value;
      }

      private var _name:String;

      public function toString() : String {
         return _name;
      }
   }

}