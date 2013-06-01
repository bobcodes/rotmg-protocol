package korer
{
[CLASS1024]   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.utils.getQualifiedClassName;


   public class Zumer extends Object
   {
      public function Zumer(param1:Fiwocazut) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Gonawegyn = null;
         super();
         this.include=param1;
         this.include.addEventListener(Kezihe.vomy,this.wyqej);
         this.include.addEventListener(Kezihe.merepuf,this.feziha);
         for each (_loc2_ in this.include.lujec)
         {
            this.habahy(_loc2_.container);
         }
         return;
      }

      private const _filter:RegExp = new RegExp("^mx\\.|^spark\\.|^flash\\.");

      private var include:Fiwocazut;

      public function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Gonawegyn = null;
         this.include.removeEventListener(Kezihe.vomy,this.wyqej);
         this.include.removeEventListener(Kezihe.merepuf,this.feziha);
         for each (_loc1_ in this.include.lujec)
         {
            this.sahitez(_loc1_.container);
         }
         return;
      }

      private function wyqej(param1:Kezihe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.habahy(param1.container);
         return;
      }

      private function feziha(param1:Kezihe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sahitez(param1.container);
         return;
      }

      private function habahy(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(Event.ADDED_TO_STAGE,this.dufar,true);
         param1.addEventListener(Event.ADDED_TO_STAGE,this.laf);
         return;
      }

      private function sahitez(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.removeEventListener(Event.ADDED_TO_STAGE,this.dufar,true);
         param1.removeEventListener(Event.ADDED_TO_STAGE,this.laf);
         return;
      }

      private function dufar(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:DisplayObject = null;
         var _loc3_:String = null;
         _loc2_=param1.target as DisplayObject;
         _loc3_=getQualifiedClassName(_loc2_);
         var _loc4_:Boolean = this._filter.test(_loc3_);
         if(_loc4_)
         {
            return;
         }
         var _loc5_:Class = _loc2_["constructor"];
         var _loc6_:Gonawegyn = this.include.kyhoh(_loc2_);
         while(_loc6_)
         {
            _loc6_.tadylugi(_loc2_,_loc5_);
            _loc6_=_loc6_.parent;
         }
         return;
      }

      private function laf(param1:Event) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:DisplayObjectContainer = null;
         _loc2_=param1.target as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,this.laf);
         var _loc3_:Class = _loc2_["constructor"];
         var _loc4_:Gonawegyn = this.include.wyri(_loc2_);
         _loc4_.tadylugi(_loc2_,_loc3_);
         return;
      }
   }
[/CLASS]
}