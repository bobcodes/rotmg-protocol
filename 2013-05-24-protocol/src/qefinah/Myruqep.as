package qefinah
{
   import flash.display.Sprite;
   import fom.Lihivak;


   public class Myruqep extends Sprite
   {
      public function Myruqep(param1:uint) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stats=new Miqik();
         super();
         this.init();
         this.hezuc(param1);
         this.qohinep();
         return;
      }

      private var stats:Miqik;

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.stats);
         return;
      }

      private function hezuc(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.stats.y=(param1-Lased.gipac)/2-this.stats.height/2;
         return;
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.stats.name=Lihivak.rasajahoro;
         return;
      }
   }

}