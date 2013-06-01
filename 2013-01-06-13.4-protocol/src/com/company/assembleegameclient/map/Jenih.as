package com.company.assembleegameclient.map
{
[CLASS566]   import tysenyzy.Zovisis;
   import dugahymu.Bisu;
   import totuhare.Zufi;


   public class Jenih extends Zovisis
   {
      public function Jenih() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Map;

      public var mesafezoq:Pywyz;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mesafezoq.add(this.tovali);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mesafezoq.remove(this.tovali);
         return;
      }

      private function tovali(param1:String, param2:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return;
      }

      private function pynum(param1:String, param2:uint) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Bisu = new Bisu(this.view.player_,new Zufi().setParams(param1),param2,2000,0);
         this.view.mapOverlay_.addQueuedText(_loc3_);
         return;
      }
   }
[/CLASS]
}