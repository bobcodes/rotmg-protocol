package gemydeh
{
   import komi.Vibemod;
   import pugem.Account;
   import jufu.Jawojicyw;
   import cizagamym.Boquzojul;
   import civino.Puwyqo;
   import lafilow.Quco;
   import risic.Jyr;
   import myh.Suba;
   import pufelih.Guwesica;
   import pugem.Febyc;
   import sefylew.Fadyqe;


   public class BuyBeginnersPackageCommand extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function BuyBeginnersPackageCommand() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const rolapan:String = Vibemod.moc;

      public var account:Account;

      public var model:Jawojicyw;

      public var ridecy:Boquzojul;

      public var mylorali:Puwyqo;

      public var jojuk:Quco;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.zuqic())
         {
            this.kigazikyp();
         }
         else
         {
            this.reqa();
         }
         return;
      }

      private function kigazikyp() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account is Jyr||this.account is Suba)
         {
            this.ridecy.dispatch(new Guwesica());
         }
         else
         {
            this.fyjyqijabi();
         }
         return;
      }

      private function fyjyqijabi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Febyc = new Febyc();
         _loc1_.offer=this.model.qycosac();
         this.jojuk.dispatch(_loc1_);
         return;
      }

      private function reqa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new Fadyqe(rolapan));
         return;
      }
   }

}