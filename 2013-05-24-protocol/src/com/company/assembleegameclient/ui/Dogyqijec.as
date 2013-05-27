package com.company.assembleegameclient.ui
{
   import tulunyno.Hugyqufyq;
   import nec.Sire;


   public class Dogyqijec extends Tecym
   {
      public function Dogyqijec(param1:int, param2:String, param3:int=0) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param3);
         debiryno(param1);
         text_.setStringBuilder(new Sire().setParams(param2));
         text_.textChanged.addOnce(this.onTextChanged);
         return;
      }

      public const textChanged:Hugyqufyq = new Hugyqufyq();

      protected function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         initText();
         this.textChanged.dispatch();
         return;
      }
   }

}