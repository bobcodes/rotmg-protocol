package com.company.assembleegameclient.objects
{
[CLASS1142]   import pigeguwo.Jazyv;
   import flash.display.BitmapData;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import rucedosu.SellableObjectPanel;


   public class SellableObject extends GameObject implements Gofa
   {
      public function SellableObject(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         wywag=true;
         return;
      }

      public var price_:int = 0;

      public var currency_:int = -1;

      public var wufawojof:int = 0;

      public var kaj:int = -1;

      public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.price_=param1;
         return;
      }

      public function wawil(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.currency_=param1;
         return;
      }

      public function setRankReq(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wufawojof=param1;
         return;
      }

      public function soldObjectName() : String {
         return null;
      }

      public function soldObjectInternalName() : String {
         return null;
      }

      public function getTooltip() : Jazyv {
         return null;
      }

      public function getIcon() : BitmapData {
         return null;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new SellableObjectPanel(param1,this);
      }
   }
[/CLASS]
}