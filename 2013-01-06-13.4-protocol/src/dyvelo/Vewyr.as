package dyvelo
{
[CLASS157]   import __AS3__.vec.Vector;


   public class Vewyr extends Object
   {
      public function Vewyr() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.timespan=Timespan.bawop;
         super();
         return;
      }

      private var timespan:Timespan;

      private const map:Object = {};

      public function qase() : Timespan {
         return this.timespan;
      }

      public function jyd(param1:Timespan) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.timespan=param1;
         return;
      }

      public function zak() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.map[this.timespan.venad()]==null);
      }

      public function fabineha() : Vector.<Tobyd> {
         return this.map[this.timespan.venad()];
      }

      public function belejiva(param1:Vector.<Tobyd>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.map[this.timespan.venad()]=param1;
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

      private function dispose(param1:Vector.<Tobyd>) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Tobyd = null;
         for each (_loc2_ in param1)
         {
         }
         return;
      }

      private function lopanorebe(param1:Tobyd) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.character.dispose();
         param1.character=null;
         return;
      }
   }
[/CLASS]
}