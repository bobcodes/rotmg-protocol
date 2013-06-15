package padin
{
   import gycu.Begotyl;
   import vilova.Sekevizi;


   public class Zipydovu extends Begotyl implements Sekevizi
   {
      public function Zipydovu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var woru:Gyfamafuf;

      public var pedavitu:Sekese;

      public function setup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         add(this.woru);
         add(this.pedavitu);
         return;
      }

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.startTask();
         return;
      }
   }

}