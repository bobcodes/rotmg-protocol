package com.company.assembleegameclient.map
{
   import tytojonib.Kyjefe;
   import cerywij.Hoheje;
   import jediwip.Kybidu;


   public class Ruh extends Kyjefe
   {
      public function Ruh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Map;

      public var quqek:Luhim;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.quqek.add(this.mawacy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.quqek.remove(this.mawacy);
         return;
      }

      private function mawacy(param1:String, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return;
      }

      private function fokagom(param1:String, param2:uint) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Hoheje = new Hoheje(this.view.player_,new Kybidu().setParams(param1),param2,2000,0);
         this.view.mapOverlay_.addQueuedText(_loc3_);
         return;
      }
   }

}