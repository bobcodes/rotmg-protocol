package com.company.assembleegameclient.objects
{
[CLASS1123]   import totuhare.Qebar;
   import totuhare.Jased;


   public class Hikymiz extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hikymiz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const fatuc:RegExp = new RegExp("(.+)\\s\\((.+)\\)");

      public function parse(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = param1.match(fatuc);
         if(_loc2_==null)
         {
            return this.bir(param1);
         }
         return this.wymi(_loc2_);
      }

      private function bir(param1:String) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}")
         {
            return param1;
         }
         return "{"+param1+"}";
      }

      private function wymi(param1:Array) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = "{"+param1[1]+"}";
         if(param1.length>1)
         {
            _loc2_=_loc2_+(" ("+param1[2]+")");
         }
         return _loc2_;
      }

      public function makeBuilder(param1:String) : Qebar {
         return new Jased().setPattern(this.parse(param1));
      }
   }
[/CLASS]
}