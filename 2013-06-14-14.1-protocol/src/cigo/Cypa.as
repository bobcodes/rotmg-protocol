package cigo
{
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.utils.getQualifiedClassName;


   public class Cypa extends Object
   {
      public function Cypa(param1:Fipyqoleb) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Docekar = null;
         super();
         this.gofozod=param1;
         this.gofozod.addEventListener(Pipocy.mema,this.gafewuwi);
         this.gofozod.addEventListener(Pipocy.masac,this.pynizeho);
         for each (_loc2_ in this.gofozod.byc)
         {
            this.tynotaq(_loc2_.container);
         }
         return;
      }

      private const _filter:RegExp = new RegExp("^mx\\.|^spark\\.|^flash\\.");

      private var gofozod:Fipyqoleb;

      public function destroy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Docekar = null;
         this.gofozod.removeEventListener(Pipocy.mema,this.gafewuwi);
         this.gofozod.removeEventListener(Pipocy.masac,this.pynizeho);
         for each (_loc1_ in this.gofozod.byc)
         {
            this.zanadih(_loc1_.container);
         }
         return;
      }

      private function gafewuwi(param1:Pipocy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tynotaq(param1.container);
         return;
      }

      private function pynizeho(param1:Pipocy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zanadih(param1.container);
         return;
      }

      private function tynotaq(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(Event.ADDED_TO_STAGE,this.kajaderil,true);
         param1.addEventListener(Event.ADDED_TO_STAGE,this.zobizowo);
         return;
      }

      private function zanadih(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.removeEventListener(Event.ADDED_TO_STAGE,this.kajaderil,true);
         param1.removeEventListener(Event.ADDED_TO_STAGE,this.zobizowo);
         return;
      }

      private function kajaderil(param1:Event) : void {
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
         var _loc6_:Docekar = this.gofozod.raciguly(_loc2_);
         while(_loc6_)
         {
            _loc6_.jihe(_loc2_,_loc5_);
            _loc6_=_loc6_.parent;
         }
         return;
      }

      private function zobizowo(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObjectContainer = null;
         _loc2_=param1.target as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,this.zobizowo);
         var _loc3_:Class = _loc2_["constructor"];
         var _loc4_:Docekar = this.gofozod.jopi(_loc2_);
         _loc4_.jihe(_loc2_,_loc3_);
         return;
      }
   }

}