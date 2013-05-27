package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Jetemiqon;
   import gag.Gawu;
   import gag.Cub;
   import gag.Bysyg;


   public class Malukanew extends Fijarih implements Jetemiqon
   {
      public function Malukanew() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var joruler:Jaqagub;

      public var venupog:Kazecylap;

      public var rurusedi:Gawu;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Cub = new Cub();
         _loc1_.add(this.joruler);
         _loc1_.add(this.venupog);
         _loc1_.lastly.add(this.dihyren);
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function dihyren(param1:Bysyg, param2:Boolean, param3:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         syjavimu(true);
         return;
      }
   }

}