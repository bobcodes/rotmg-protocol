package com.company.assembleegameclient.objects
{
   import povopito.Ryduwi;
   import flash.display.BitmapData;
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import biqacufo.SellableObjectPanel;


   public class SellableObject extends GameObject implements Putafyhil
   {
      public function SellableObject(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         return;
      }

      public var price_:int = 0;

      public var currency_:int = -1;

      public var rykikor:int = 0;

      public var qaloken:int = -1;

      public function setPrice(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.price_=param1;
         return;
      }

      public function byf(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.currency_=param1;
         return;
      }

      public function setRankReq(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rykikor=param1;
         return;
      }

      public function soldObjectName() : String {
         return null;
      }

      public function soldObjectInternalName() : String {
         return null;
      }

      public function getTooltip() : Ryduwi {
         return null;
      }

      public function getIcon() : BitmapData {
         return null;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new SellableObjectPanel(param1,this);
      }
   }

}