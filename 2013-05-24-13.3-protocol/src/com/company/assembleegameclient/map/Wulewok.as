package com.company.assembleegameclient.map
{
   import qov.Kalefu;
   import qefinah.Vujesewo;
   import nec.Sire;


   public class Wulewok extends Kalefu
   {
      public function Wulewok() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Map;

      public var diqerikuc:Volyrowu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.diqerikuc.add(this.faraw);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.diqerikuc.remove(this.faraw);
         return;
      }

      private function faraw(param1:String, param2:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return;
      }

      private function cylaky(param1:String, param2:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Vujesewo = new Vujesewo(this.view.player_,new Sire().setParams(param1),param2,2000,0);
         this.view.mapOverlay_.addQueuedText(_loc3_);
         return;
      }
   }

}