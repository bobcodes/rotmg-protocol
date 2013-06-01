package sibaworop
{
   import __AS3__.vec.Vector;


   public class Pamokut extends Object
   {
      public function Pamokut() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timespan=Timespan.dojirov;
         super();
         return;
      }

      private var timespan:Timespan;

      private const map:Object = {};

      public function jusihuz() : Timespan {
         return this.timespan;
      }

      public function hyqolo(param1:Timespan) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.timespan=param1;
         return;
      }

      public function hogeweku() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.map[this.timespan.tufu()]==null);
      }

      public function riwihak() : Vector.<Seqyw> {
         return this.map[this.timespan.tufu()];
      }

      public function myb(param1:Vector.<Seqyw>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.map[this.timespan.tufu()]=param1;
         return;
      }

      public function clear() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = null;
         for (_loc1_ in this.map)
         {
            this.dispose(this.map[_loc1_]);
            delete this.map[[_loc1_]];
         }
         return;
      }

      private function dispose(param1:Vector.<Seqyw>) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Seqyw = null;
         for each (_loc2_ in param1)
         {
         }
         return;
      }

      private function jenisequn(param1:Seqyw) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.character.dispose();
         param1.character=null;
         return;
      }
   }

}