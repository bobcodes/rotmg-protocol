package fidymu
{
   import qov.Kalefu;
   import zoroc.Gecezyw;
   import coh.Jumekama;
   import zoroc.Taqosohuf;
   import wegyluke.Nifu;
   import zoroc.Bezuco;


   public class Lywotifoz extends Kalefu
   {
      public function Lywotifoz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:PetPicker;

      public var model:Gecezyw;

      public var kaqotetuh:Jumekama;

      public var paqocahu:Taqosohuf;

      public var naval:Nifu;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.synota(this.model.zeqi());
         var _loc1_:Bezuco = this.paqocahu.selected==Taqosohuf.LEFT?this.paqocahu.wehyte:this.paqocahu.puda;
         if(_loc1_)
         {
            this.view.tucyjin(_loc1_);
         }
         this.view.hotuwed.addOnce(this.fuqu);
         return;
      }

      private function fuqu(param1:Bezuco) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.paqocahu.selected==Taqosohuf.LEFT)
         {
            this.paqocahu.puda=param1;
         }
         else
         {
            this.paqocahu.wehyte=param1;
         }
         this.naval.dispatch(new this.paqocahu.caller());
         return;
      }
   }

}