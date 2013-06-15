package cigo
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Faruge extends Object
   {
      public function Faruge(param1:Fipyqoleb) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Docekar = null;
         super();
         this.gofozod=param1;
         this.gofozod.addEventListener(Pipocy.zav,this.dajygi);
         this.gofozod.addEventListener(Pipocy.jajah,this.kyfaqala);
         for each (_loc2_ in this.gofozod.kugimet)
         {
            this.vuwef(_loc2_.container);
         }
         return;
      }

      private var gofozod:Fipyqoleb;

      public function destroy() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Docekar = null;
         this.gofozod.removeEventListener(Pipocy.zav,this.dajygi);
         this.gofozod.removeEventListener(Pipocy.jajah,this.kyfaqala);
         for each (_loc1_ in this.gofozod.kugimet)
         {
            this.nut(_loc1_.container);
         }
         return;
      }

      private function dajygi(param1:Pipocy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vuwef(param1.container);
         return;
      }

      private function kyfaqala(param1:Pipocy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nut(param1.container);
         return;
      }

      private function vuwef(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.addEventListener(Laru.pytejono,this.nafyjifi);
         return;
      }

      private function nut(param1:DisplayObjectContainer) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.removeEventListener(Laru.pytejono,this.nafyjifi);
         return;
      }

      private function nafyjifi(param1:Laru) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:DisplayObject = null;
         param1.stopImmediatePropagation();
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc3_=param1.target as DisplayObject;
         var _loc4_:Class = _loc3_["constructor"];
         this.gofozod.jopi(_loc2_).jihe(_loc3_,_loc4_);
         return;
      }
   }

}