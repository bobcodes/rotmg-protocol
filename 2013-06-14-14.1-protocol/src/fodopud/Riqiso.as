package fodopud
{
   import cizagamym.Boquzojul;
   import tilo.Wegyqide;


   public class Riqiso extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Riqiso() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const pomyj:String = "Package Purchased";

      private static const liz:String = "You\'ve already purchased this package!";

      private static const wygijuwe:String = "Please check your vault for any items purchased";

      public var ridecy:Boquzojul;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(this.qogirahi());
         return;
      }

      private function qogirahi() : Wegyqide {
         return new Wegyqide().setTitle(pomyj).setBody(liz,wygijuwe);
      }
   }

}