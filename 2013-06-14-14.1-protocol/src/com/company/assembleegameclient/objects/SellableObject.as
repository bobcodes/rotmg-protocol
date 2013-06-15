package com.company.assembleegameclient.objects
{
   import mavew.Qyryl;
   import flash.display.BitmapData;
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import kofaz.SellableObjectPanel;


   public class SellableObject extends GameObject implements Gim
   {
      public function SellableObject(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         return;
      }

      public var price_:int = 0;

      public var currency_:int = -1;

      public var toq:int = 0;

      public var lehihafo:int = -1;

      public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.price_=param1;
         return;
      }

      public function venoqal(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.currency_=param1;
         return;
      }

      public function setRankReq(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.toq=param1;
         return;
      }

      public function soldObjectName() : String {
         return null;
      }

      public function soldObjectInternalName() : String {
         return null;
      }

      public function getTooltip() : Qyryl {
         return null;
      }

      public function getIcon() : BitmapData {
         return null;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new SellableObjectPanel(param1,this);
      }
   }

}