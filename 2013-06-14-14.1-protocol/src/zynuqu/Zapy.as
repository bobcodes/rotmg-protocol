package zynuqu
{
   import __AS3__.vec.Vector;


   public class Zapy extends Object
   {
      public function Zapy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timespan=Timespan.wimij;
         super();
         return;
      }

      private var timespan:Timespan;

      private const map:Object = {};

      public function lymaw() : Timespan {
         return this.timespan;
      }

      public function nufoki(param1:Timespan) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timespan=param1;
         return;
      }

      public function luvigu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.map[this.timespan.rivur()]==null);
      }

      public function haca() : Vector.<Topunu> {
         return this.map[this.timespan.rivur()];
      }

      public function nywojodal(param1:Vector.<Topunu>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.map[this.timespan.rivur()]=param1;
         return;
      }

      public function clear() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         for (_loc1_ in this.map)
         {
            this.dispose(this.map[_loc1_]);
            GlobalNotificationActionte this.map[[_loc1_]];
         }
         return;
      }

      private function dispose(param1:Vector.<Topunu>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Topunu = null;
         for each (_loc2_ in param1)
         {
         }
         return;
      }

      private function mebijun(param1:Topunu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.character.dispose();
         param1.character=null;
         return;
      }
   }

}