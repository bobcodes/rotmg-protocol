package zyciwin
{
   import gag.Cub;
   import dopumitud.Jetemiqon;


   public class Soguda extends Cub implements Jetemiqon
   {
      public function Soguda() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var kalazycot:Gemysomyd;

      public var venupog:Lob;

      public function setup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         add(this.kalazycot);
         add(this.venupog);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.startTask();
         return;
      }
   }

}