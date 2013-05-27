package coh
{
   import qov.Kalefu;
   import zoroc.Gecezyw;
   import wegyluke.Hez;
   import zoroc.Taqosohuf;


   public class Zuma extends Kalefu
   {
      public function Zuma() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:PetFeeder;

      public var duqa:Gecezyw;

      public var naval:Hez;

      public var paqocahu:Taqosohuf;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.paqocahu.puda)
         {
            this.paqocahu.puda=this.duqa.rizidakuv();
         }
         this.view.initialize(this.paqocahu);
         this.view.sozy.addOnce(this.sozy);
         return;
      }

      private function sozy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paqocahu.selected=Taqosohuf.LEFT;
         return;
      }
   }

}