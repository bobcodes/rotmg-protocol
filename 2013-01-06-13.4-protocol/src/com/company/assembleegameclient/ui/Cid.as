package com.company.assembleegameclient.ui
{
[CLASS708]   import tinava.Dab;
   import totuhare.Zufi;


   public class Cid extends Falap
   {
      public function Cid(param1:int, param2:String, param3:int=0) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param3);
         cyjobate(param1);
         text_.setStringBuilder(new Zufi().setParams(param2));
         text_.textChanged.addOnce(this.onTextChanged);
         return;
      }

      public const textChanged:Dab = new Dab();

      protected function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         initText();
         this.textChanged.dispatch();
         return;
      }
   }
[/CLASS]
}