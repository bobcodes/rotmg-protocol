package com.company.assembleegameclient.screens.charrects
{
[CLASS1058]   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.util.Huroj;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import dylaqezo.Vusun;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.Gugi;


   public class CreateNewCharacterRect extends CharacterRect
   {
      public function CreateNewCharacterRect(param1:Vusun) {
         var _loc2_:* = 0;
         super();
         super.className=new Zufi().setParams(Kefyfa.momon);
         super.color=5526612;
         super.overColor=7829367;
         super.init();
         this.makeBitmap();
         if(param1.pytoseqah()!=Gugi.zicub())
         {
            _loc2_=Gugi.zicub()-param1.pytoseqah();
            super.makeTaglineIcon();
            super.makeTaglineText(new Zufi().setParams(Kefyfa.gypolak,{remainingStars:_loc2_}));
            taglineText.x=taglineText.x+taglineIcon.width;
         }
         return;
      }

      private var bitmap_:Bitmap;

      public function makeBitmap() : void {
         var _loc1_:XML = ObjectLibrary.vyhytu[int(ObjectLibrary.vyhytu.length*Math.random())];
         var _loc2_:BitmapData = SavedCharacter.getImage(null,_loc1_,Huroj.RIGHT,Huroj.wyqel,0,false,false);
         _loc2_=BitmapUtil.wukofy(_loc2_,6,6,_loc2_.width-12,_loc2_.height-6);
         this.bitmap_=new Bitmap();
         this.bitmap_.bitmapData=_loc2_;
         this.bitmap_.x=CharacterRectConstants.ICON_POS_X;
         this.bitmap_.y=CharacterRectConstants.ICON_POS_Y;
         selectContainer.addChild(this.bitmap_);
         return;
      }
   }
[/CLASS]
}