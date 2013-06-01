package com.company.assembleegameclient.screens.charrects
{
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import hotewa.Baqifa;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.Wagoq;


   public class CreateNewCharacterRect extends CharacterRect
   {
      public function CreateNewCharacterRect(param1:Baqifa) {
         var _loc2_:* = 0;
         super();
         super.className=new Sire().setParams(I18nKeys.terikog);
         super.color=5526612;
         super.overColor=7829367;
         super.init();
         this.makeBitmap();
         if(param1.lyr()!=Wagoq.topowac())
         {
            _loc2_=Wagoq.topowac()-param1.lyr();
            super.makeTaglineIcon();
            super.makeTaglineText(new Sire().setParams(I18nKeys.nurag,{remainingStars:_loc2_}));
            taglineText.x=taglineText.x+taglineIcon.width;
         }
         return;
      }

      private var bitmap_:Bitmap;

      public function makeBitmap() : void {
         var _loc1_:XML = ObjectLibrary.supy[int(ObjectLibrary.supy.length*Math.random())];
         var _loc2_:BitmapData = SavedCharacter.getImage(null,_loc1_,Zuwomuguk.RIGHT,Zuwomuguk.pazyladar,0,false,false);
         _loc2_=BitmapUtil.wygoci(_loc2_,6,6,_loc2_.width-12,_loc2_.height-6);
         this.bitmap_=new Bitmap();
         this.bitmap_.bitmapData=_loc2_;
         this.bitmap_.x=CharacterRectConstants.ICON_POS_X;
         this.bitmap_.y=CharacterRectConstants.ICON_POS_Y;
         selectContainer.addChild(this.bitmap_);
         return;
      }
   }

}