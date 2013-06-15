package com.google.analytics.utils
{


   public class Protocols extends Object
   {
      public function Protocols(param1:int=0, param2:String="") {
         super();
         _value=param1;
         _name=param2;
         return;
      }

      public static const none:Protocols = new Protocols(0,"none");

      public static const HTTPS:Protocols = new Protocols(3,"HTTPS");

      public static const file:Protocols = new Protocols(1,"file");

      public static const HTTP:Protocols = new Protocols(2,"HTTP");

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