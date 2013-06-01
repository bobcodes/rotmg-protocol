package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import aaa.rotmg.config.UserConfig;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import vozireni.Sugibowel;
   import vozireni.Nenypeful;
   import flash.filters.GlowFilter;


   public class Nuzufiqo extends Sprite
   {
      public function Nuzufiqo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bitmap_=new Bitmap();
         super();
         addChild(this.bitmap_);
         this.bitmap_.scaleX=2;
         this.bitmap_.scaleY=2;
         this.kes();
         addEventListener(MouseEvent.CLICK,this.wataku);
         filters=[new GlowFilter(0,1,4,4,2,1)];
         return;
      }

      private var bitmap_:Bitmap;

      private function kes() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bitmap_.bitmapData=(UserConfig.data_.playMusic)||(UserConfig.data_.playSFX)?AssetLibrary.jeqycu("lofiInterfaceBig",3):AssetLibrary.jeqycu("lofiInterfaceBig",4);
         return;
      }

      private function wataku(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = !((UserConfig.data_.playMusic)||(UserConfig.data_.playSFX));
         Sugibowel.nazykep(_loc2_);
         Nenypeful.rykozad(_loc2_);
         UserConfig.data_.playPewPew=_loc2_;
         UserConfig.save();
         this.kes();
         return;
      }
   }

}