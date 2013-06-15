package com.company.assembleegameclient.screens.charrects
{
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.appengine.SavedCharacter;
   import com.company.assembleegameclient.util.Jiqefatok;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import lemugo.Wokycuku;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.Cinihel;


   public class CreateNewCharacterRect extends CharacterRect
   {
      public function CreateNewCharacterRect(param1:Wokycuku) {
         var _loc2_:* = 0;
         super();
         super.className=new Kybidu().setParams(Vibemod.net);
         super.color=5526612;
         super.overColor=7829367;
         super.init();
         this.makeBitmap();
         if(param1.pikir()!=Cinihel.pibyj())
         {
            _loc2_=Cinihel.pibyj()-param1.pikir();
            super.makeTaglineIcon();
            super.makeTaglineText(new Kybidu().setParams(Vibemod.jacasuz,{remainingStars:_loc2_}));
            taglineText.x=taglineText.x+taglineIcon.width;
         }
         return;
      }

      private var bitmap_:Bitmap;

      public function makeBitmap() : void {
         var _loc1_:XML = ObjectLibrary.vemociged[int(ObjectLibrary.vemociged.length*Math.random())];
         var _loc2_:BitmapData = SavedCharacter.getImage(null,_loc1_,Jiqefatok.RIGHT,Jiqefatok.radev,0,false,false);
         _loc2_=BitmapUtil.kodopomid(_loc2_,6,6,_loc2_.width-12,_loc2_.height-6);
         this.bitmap_=new Bitmap();
         this.bitmap_.bitmapData=_loc2_;
         this.bitmap_.x=CharacterRectConstants.ICON_POS_X;
         this.bitmap_.y=CharacterRectConstants.ICON_POS_Y;
         selectContainer.addChild(this.bitmap_);
         return;
      }
   }

}