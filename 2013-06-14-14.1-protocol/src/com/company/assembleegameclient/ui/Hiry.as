package com.company.assembleegameclient.ui
{
   import hivysif.Guzowoja;


   public class Hiry extends Gadaj
   {
      public function Hiry(param1:int, param2:Boolean, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2,param3);
         return;
      }

      override protected function makeText() : Guzowoja {
         return new Guzowoja();
      }
   }

}