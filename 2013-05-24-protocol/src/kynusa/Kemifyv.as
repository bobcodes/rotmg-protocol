package kynusa
{
   import wegyluke.Hez;
   import liwaqa.Qazukifat;


   public class Kemifyv extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Kemifyv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const wag:String = "Package Purchased";

      private static const vitodukep:String = "You\'ve already purchased this package!";

      private static const dycij:String = "Please check your vault for any items purchased";

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(this.detuloca());
         return;
      }

      private function detuloca() : Qazukifat {
         return new Qazukifat().setTitle(wag).setBody(vitodukep,dycij);
      }
   }

}