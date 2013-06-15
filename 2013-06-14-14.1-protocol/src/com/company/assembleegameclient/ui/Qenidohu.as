package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   import kewasum.Sazu;
   import flash.display.BitmapData;


   public class Qenidohu extends Sprite
   {
      public function Qenidohu(param1:BitmapData) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.bitmap_=new Bitmap(param1);
         addChild(this.bitmap_);
         this.ric=new Tivinu(16,"Save");
         addChild(this.ric);
         this.fon=new Tivinu(16,"Close");
         addChild(this.fon);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var bitmap_:Bitmap;

      private var ric:Tivinu;

      private var fon:Tivinu;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ric.addEventListener(MouseEvent.CLICK,this.wowafu);
         this.fon.addEventListener(MouseEvent.CLICK,this.lyb);
         this.bitmap_.x=stage.stageHeight/2-this.bitmap_.width/2;
         this.bitmap_.y=stage.stageHeight/2-this.bitmap_.height/2;
         this.fon.x=this.bitmap_.x+this.bitmap_.width-this.fon.width;
         this.fon.y=this.bitmap_.y+this.bitmap_.height+10;
         this.ric.x=this.fon.x-this.ric.width-10;
         this.ric.y=this.bitmap_.y+this.bitmap_.height+10;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ric.removeEventListener(MouseEvent.CLICK,this.wowafu);
         this.fon.removeEventListener(MouseEvent.CLICK,this.lyb);
         return;
      }

      private function wowafu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         new FileReference().save(Sazu.encode(this.bitmap_.bitmapData),"map.png");
         return;
      }

      private function lyb(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(parent!=null)
         {
            parent.removeChild(this);
         }
         return;
      }
   }

}