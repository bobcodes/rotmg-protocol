package gabufo
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import civino.Kidy;
   import cizagamym.Boquzojul;


   public class Vid extends Kyjefe
   {
      public function Vid() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Tydagid;

      public var account:Account;

      public var logout:Kidy;

      public var ridecy:Boquzojul;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.login.add(this.rysul);
         this.view.register.add(this.mijy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.login.remove(this.rysul);
         this.view.register.remove(this.mijy);
         return;
      }

      private function mijy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new Meqeguru());
         return;
      }

      private function rysul() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.zuqic())
         {
            this.kamujakav();
         }
         else
         {
            this.ridecy.dispatch(new WebLoginDialog());
         }
         return;
      }

      private function kamujakav() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.logout.dispatch();
         this.view.zyfa("",false);
         return;
      }
   }

}