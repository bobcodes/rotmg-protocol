package com.company.assembleegameclient.ui
{
[CLASS1038]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import aaa.Parameters;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import gawulu.Mude;
   import gawulu.Jel;
   import flash.filters.GlowFilter;


   public class Ryrigyp extends Sprite
   {
      public function Ryrigyp() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bitmap_=new Bitmap();
         super();
         addChild(this.bitmap_);
         this.bitmap_.scaleX=2;
         this.bitmap_.scaleY=2;
         this.vegame();
         addEventListener(MouseEvent.CLICK,this.sakeru);
         filters=[new GlowFilter(0,1,4,4,2,1)];
         return;
      }

      private var bitmap_:Bitmap;

      private function vegame() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bitmap_.bitmapData=(Parameters.data_.playMusic)||(Parameters.data_.playSFX)?AssetLibrary.zovy("lofiInterfaceBig",3):AssetLibrary.zovy("lofiInterfaceBig",4);
         return;
      }

      private function sakeru(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = !((Parameters.data_.playMusic)||(Parameters.data_.playSFX));
         Mude.guwat(_loc2_);
         Jel.turip(_loc2_);
         Parameters.data_.playPewPew=_loc2_;
         Parameters.save();
         this.vegame();
         return;
      }
   }
[/CLASS]
}