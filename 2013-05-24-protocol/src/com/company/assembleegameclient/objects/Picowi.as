package com.company.assembleegameclient.objects
{
   import nec.Zirewe;
   import nec.Noz;


   public class Picowi extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Picowi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const fisenol:RegExp = new RegExp("(.+)\\s\\((.+)\\)");

      public function parse(param1:String) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = param1.match(fisenol);
         if(_loc2_==null)
         {
            return this.cupobyj(param1);
         }
         return this.pytenoj(_loc2_);
      }

      private function cupobyj(param1:String) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.charAt(0)=="{"&&param1.charAt(param1.length-1)=="}")
         {
            return param1;
         }
         return "{"+param1+"}";
      }

      private function pytenoj(param1:Array) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = "{"+param1[1]+"}";
         if(param1.length>1)
         {
            _loc2_=_loc2_+(" ("+param1[2]+")");
         }
         return _loc2_;
      }

      public function makeBuilder(param1:String) : Zirewe {
         return new Noz().setPattern(this.parse(param1));
      }
   }

}