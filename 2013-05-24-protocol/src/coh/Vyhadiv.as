package coh
{
   import qov.Kalefu;
   import wegyluke.Hez;
   import zoroc.Gecezyw;
   import ruwa.Account;
   import flash.events.MouseEvent;
   import zoroc.Fywisiku;
   import fidymu.CaretakerQueryDialog;
   import gepa.YardUpgraderView;


   public class Vyhadiv extends Kalefu
   {
      public function Vyhadiv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Razagi;

      public var naval:Hez;

      public var gimyliq:Gecezyw;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.init(this.hev());
         this.kofytagu();
         return;
      }

      private function kofytagu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.view.zemimu)
         {
            this.view.zemimu.addEventListener(MouseEvent.CLICK,this.zatyfam);
            this.view.datevysez.addEventListener(MouseEvent.CLICK,this.dodukyz);
         }
         else
         {
            this.view.datevysez.addEventListener(MouseEvent.CLICK,this.dodukyz);
         }
         return;
      }

      private function hev() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(!this.account.bugi())
         {
            return false;
         }
         _loc1_=this.gimyliq.liqas();
         return _loc1_<Fywisiku.nobykez;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.destroy();
         return;
      }

      protected function dodukyz(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.naval.dispatch(new CaretakerQueryDialog());
         return;
      }

      protected function zatyfam(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.naval.dispatch(new YardUpgraderView());
         return;
      }
   }

}