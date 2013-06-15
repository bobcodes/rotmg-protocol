package haj
{
   import tytojonib.Kyjefe;
   import cizagamym.Boquzojul;
   import fanij.Namejaja;
   import pugem.Account;
   import flash.events.MouseEvent;
   import fanij.Woho;
   import racitagy.CaretakerQueryDialog;
   import vuwit.YardUpgraderView;


   public class Tezola extends Kyjefe
   {
      public function Tezola() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tiba;

      public var ridecy:Boquzojul;

      public var buguzunag:Namejaja;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.init(this.vur());
         this.zofolet();
         return;
      }

      private function zofolet() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.view.jepedo)
         {
            this.view.jepedo.addEventListener(MouseEvent.CLICK,this.qahe);
            this.view.dafutubi.addEventListener(MouseEvent.CLICK,this.nukylok);
         }
         else
         {
            this.view.dafutubi.addEventListener(MouseEvent.CLICK,this.nukylok);
         }
         return;
      }

      private function vur() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         if(!this.account.zuqic())
         {
            return false;
         }
         _loc1_=this.buguzunag.pusijywyl();
         return _loc1_<Woho.vuzopaba;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.destroy();
         return;
      }

      protected function nukylok(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ridecy.dispatch(new CaretakerQueryDialog());
         return;
      }

      protected function qahe(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ridecy.dispatch(new YardUpgraderView());
         return;
      }
   }

}