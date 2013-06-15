package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import dorepoji.Zywytezof;
   import dorepoji.Mobu;
   import flash.filters.GlowFilter;


   public class Turanojag extends Sprite
   {
      public function Turanojag() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bitmap_=new Bitmap();
         super();
         addChild(this.bitmap_);
         this.bitmap_.scaleX=2;
         this.bitmap_.scaleY=2;
         this.cavatak();
         addEventListener(MouseEvent.CLICK,this.qud);
         filters=[new GlowFilter(0,1,4,4,2,1)];
         return;
      }

      private var bitmap_:Bitmap;

      private function cavatak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bitmap_.bitmapData=(RotmgParameters.data_.playMusic)||(RotmgParameters.data_.playSFX)?AssetLibrary.tem("lofiInterfaceBig",3):AssetLibrary.tem("lofiInterfaceBig",4);
         return;
      }

      private function qud(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = !((RotmgParameters.data_.playMusic)||(RotmgParameters.data_.playSFX));
         Zywytezof.wyda(_loc2_);
         Mobu.qunyneviz(_loc2_);
         RotmgParameters.data_.playPewPew=_loc2_;
         RotmgParameters.save();
         this.cavatak();
         return;
      }
   }

}