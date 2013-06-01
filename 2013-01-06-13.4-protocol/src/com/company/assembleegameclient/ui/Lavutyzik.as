package com.company.assembleegameclient.ui
{
[CLASS1482]   import flash.display.Sprite;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.net.FileReference;
   import lyjec.Hireg;
   import flash.display.BitmapData;


   public class Lavutyzik extends Sprite
   {
      public function Lavutyzik(param1:BitmapData) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.bitmap_=new Bitmap(param1);
         addChild(this.bitmap_);
         this.gafacys=new Cid(16,"Save");
         addChild(this.gafacys);
         this.wunejiwa=new Cid(16,"Close");
         addChild(this.wunejiwa);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private var bitmap_:Bitmap;

      private var gafacys:Cid;

      private var wunejiwa:Cid;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gafacys.addEventListener(MouseEvent.CLICK,this.hef);
         this.wunejiwa.addEventListener(MouseEvent.CLICK,this.pikymasa);
         this.bitmap_.x=stage.stageHeight/2-this.bitmap_.width/2;
         this.bitmap_.y=stage.stageHeight/2-this.bitmap_.height/2;
         this.wunejiwa.x=this.bitmap_.x+this.bitmap_.width-this.wunejiwa.width;
         this.wunejiwa.y=this.bitmap_.y+this.bitmap_.height+10;
         this.gafacys.x=this.wunejiwa.x-this.gafacys.width-10;
         this.gafacys.y=this.bitmap_.y+this.bitmap_.height+10;
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gafacys.removeEventListener(MouseEvent.CLICK,this.hef);
         this.wunejiwa.removeEventListener(MouseEvent.CLICK,this.pikymasa);
         return;
      }

      private function hef(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         new FileReference().save(Hireg.encode(this.bitmap_.bitmapData),"map.png");
         return;
      }

      private function pikymasa(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(parent!=null)
         {
            parent.removeChild(this);
         }
         return;
      }
   }
[/CLASS]
}