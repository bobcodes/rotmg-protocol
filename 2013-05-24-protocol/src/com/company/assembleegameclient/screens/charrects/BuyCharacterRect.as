package com.company.assembleegameclient.screens.charrects
{
   import hotewa.Baqifa;
   import flash.display.Bitmap;
   import kabam.rotmg.assets.services.Rogih;
   import flash.display.BitmapData;
   import movimet.Lufub;
   import flash.text.TextFieldAutoSize;
   import nec.Nara;
   import flash.filters.DropShadowFilter;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.display.Shape;


   public class BuyCharacterRect extends CharacterRect
   {
      public function BuyCharacterRect(param1:Baqifa) {
         super();
         this.model=param1;
         super.color=2039583;
         super.overColor=4342338;
         className=new Sire().setParams(BUY_CHARACTER_RECT_CLASS_NAME_TEXT,{nth:param1.getMaxChars()+1});
         super.init();
         this.makeIcon();
         this.makeTagline();
         this.makePriceText();
         this.makeCoin();
         return;
      }

      public static const BUY_CHARACTER_RECT_CLASS_NAME_TEXT:String = "BuyCharacterRect.classNameText";

      private var model:Baqifa;

      private function makeCoin() : void {
         var _loc2_:Bitmap = null;
         var _loc1_:BitmapData = Rogih.makeCoin();
         _loc2_=new Bitmap(_loc1_);
         _loc2_.x=WIDTH-43;
         _loc2_.y=(HEIGHT-_loc2_.height)*0.5-1;
         selectContainer.addChild(_loc2_);
         return;
      }

      private function makePriceText() : void {
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(18).setColor(16777215).setAutoSize(TextFieldAutoSize.RIGHT);
         _loc1_.setStringBuilder(new Nara(this.model.kut().toString()));
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.x=WIDTH-43;
         _loc1_.y=19;
         selectContainer.addChild(_loc1_);
         return;
      }

      private function makeTagline() : void {
         var _loc1_:int = 100-this.model.kut()/10;
         var _loc2_:String = String(_loc1_);
         if(_loc1_!=0)
         {
            makeTaglineText(new Sire().setParams(I18nKeys.sazura,{percentage:_loc2_}));
         }
         return;
      }

      private function makeIcon() : void {
         var _loc1_:Shape = null;
         _loc1_=this.buildIcon();
         _loc1_.x=CharacterRectConstants.ICON_POS_X+5;
         _loc1_.y=(HEIGHT-_loc1_.height)*0.5;
         addChild(_loc1_);
         return;
      }

      private function buildIcon() : Shape {
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.beginFill(3880246);
         _loc1_.graphics.lineStyle(1,4603457);
         _loc1_.graphics.drawCircle(19,19,19);
         _loc1_.graphics.lineStyle();
         _loc1_.graphics.endFill();
         _loc1_.graphics.beginFill(2039583);
         _loc1_.graphics.drawRect(11,17,16,4);
         _loc1_.graphics.endFill();
         _loc1_.graphics.beginFill(2039583);
         _loc1_.graphics.drawRect(17,11,4,16);
         _loc1_.graphics.endFill();
         return _loc1_;
      }
   }

}