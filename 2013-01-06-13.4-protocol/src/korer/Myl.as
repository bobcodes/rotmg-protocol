package korer
{
[CLASS1013]   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Myl extends Object
   {
      public function Myl(param1:Fiwocazut) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Gonawegyn = null;
         super();
         this.include=param1;
         this.include.addEventListener(Kezihe.wowow,this.qys);
         this.include.addEventListener(Kezihe.mynyhyqo,this.syky);
         for each (_loc2_ in this.include.tavu)
         {
            this.zujeduta(_loc2_.container);
         }
         return;
      }

      private var include:Fiwocazut;

      public function destroy() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Gonawegyn = null;
         this.include.removeEventListener(Kezihe.wowow,this.qys);
         this.include.removeEventListener(Kezihe.mynyhyqo,this.syky);
         for each (_loc1_ in this.include.tavu)
         {
            this.cybuh(_loc1_.container);
         }
         return;
      }

      private function qys(param1:Kezihe) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zujeduta(param1.container);
         return;
      }

      private function syky(param1:Kezihe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cybuh(param1.container);
         return;
      }

      private function zujeduta(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(Dufateqad.zicir,this.mor);
         return;
      }

      private function cybuh(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.removeEventListener(Dufateqad.zicir,this.mor);
         return;
      }

      private function mor(param1:Dufateqad) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:DisplayObject = null;
         param1.stopImmediatePropagation();
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc3_=param1.target as DisplayObject;
         var _loc4_:Class = _loc3_["constructor"];
         this.include.wyri(_loc2_).tadylugi(_loc3_,_loc4_);
         return;
      }
   }
[/CLASS]
}