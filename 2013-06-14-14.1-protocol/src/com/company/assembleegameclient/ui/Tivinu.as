package com.company.assembleegameclient.ui
{
   import mukyrosu.Qanyduk;
   import jediwip.Kybidu;


   public class Tivinu extends Memady
   {
      public function Tivinu(param1:int, param2:String, param3:int=0) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param3);
         zeledizi(param1);
         text_.setStringBuilder(new Kybidu().setParams(param2));
         text_.textChanged.addOnce(this.onTextChanged);
         return;
      }

      public const textChanged:Qanyduk = new Qanyduk();

      protected function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         initText();
         this.textChanged.dispatch();
         return;
      }
   }

}