package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   import tesizagiw.Bikag;
   import flash.display.BitmapData;


   public class Delifu extends Sprite
   {
      public function Delifu(param1:BitmapData) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.bitmap_=new Bitmap(param1);
         addChild(this.bitmap_);
         this.surazamin=new Dogyqijec(16,"Save");
         addChild(this.surazamin);
         this.roroqumif=new Dogyqijec(16,"Close");
         addChild(this.roroqumif);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var bitmap_:Bitmap;

      private var surazamin:Dogyqijec;

      private var roroqumif:Dogyqijec;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.surazamin.addEventListener(MouseEvent.CLICK,this.jucafiso);
         this.roroqumif.addEventListener(MouseEvent.CLICK,this.onClose);
         this.bitmap_.x=stage.stageHeight/2-this.bitmap_.width/2;
         this.bitmap_.y=stage.stageHeight/2-this.bitmap_.height/2;
         this.roroqumif.x=this.bitmap_.x+this.bitmap_.width-this.roroqumif.width;
         this.roroqumif.y=this.bitmap_.y+this.bitmap_.height+10;
         this.surazamin.x=this.roroqumif.x-this.surazamin.width-10;
         this.surazamin.y=this.bitmap_.y+this.bitmap_.height+10;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.surazamin.removeEventListener(MouseEvent.CLICK,this.jucafiso);
         this.roroqumif.removeEventListener(MouseEvent.CLICK,this.onClose);
         return;
      }

      private function jucafiso(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         new FileReference().save(Bikag.encode(this.bitmap_.bitmapData),"map.png");
         return;
      }

      private function onClose(param1:Event) : void {
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