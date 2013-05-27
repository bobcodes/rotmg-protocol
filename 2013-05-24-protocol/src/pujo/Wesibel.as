package pujo
{
   import qov.Command;
   import zoroc.Labe;
   import jypuq.Pyzokipu;
   import aaa.rotmg.net.RotMGNetworkHandler;
   import ruwa.Account;
   import wegyluke.Hez;
   import bisok.Mynaqu;
   import zoroc.Tokaj;
   import bisok.Qiwycuz;
   import zoroc.Dyziwif;
   import zoroc.Gipi;
   import kat.Puqyfebal;


   public class Wesibel extends Command
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wesibel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const viby:String = "In order to upgrade your yard you must be a registered user.";

      public var qocuseho:Labe;

      public var govizupas:Pyzokipu;

      public var server:RotMGNetworkHandler;

      public var account:Account;

      public var naval:Hez;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Mynaqu = null;
         if(this.qocuseho is Tokaj)
         {
            if(!this.account.bugi())
            {
               this.mutale(viby);
            }
            _loc1_=this.govizupas.runozak(Qiwycuz.fumygak) as Mynaqu;
            _loc1_.zokubip=1;
            _loc1_.objectId=Tokaj(this.qocuseho).wohacu;
            _loc1_.bymuhok=Tokaj(this.qocuseho).bymuhok;
         }
         if(this.qocuseho is Dyziwif)
         {
            _loc1_=this.govizupas.runozak(Qiwycuz.fumygak) as Mynaqu;
            _loc1_.zokubip=2;
            _loc1_.peluq=Dyziwif(this.qocuseho).zyrypolet;
            _loc1_.wigyq=Dyziwif(this.qocuseho).wigyq;
            _loc1_.bymuhok=Dyziwif(this.qocuseho).bymuhok;
         }
         if(this.qocuseho is Gipi)
         {
            _loc1_=this.govizupas.runozak(Qiwycuz.fumygak) as Mynaqu;
            _loc1_.zokubip=3;
            _loc1_.peluq=Gipi(this.qocuseho).tycuc;
            _loc1_.bidugylu=Gipi(this.qocuseho).hadamoh;
            _loc1_.bymuhok=Gipi(this.qocuseho).bymuhok;
         }
         if(_loc1_)
         {
            this.server.sendMessage(_loc1_);
         }
         return;
      }

      private function mutale(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.naval.dispatch(new Puqyfebal(param1));
         return;
      }
   }

}