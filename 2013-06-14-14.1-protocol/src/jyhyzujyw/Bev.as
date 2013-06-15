package jyhyzujyw
{
   import tytojonib.Command;
   import fanij.Juwycof;
   import zugevygam.Byty;
   import aaa.NetworkHandler;
   import pugem.Account;
   import cizagamym.Boquzojul;
   import ducojoryn.Tawe;
   import fanij.Qewi;
   import aaa.ActionMapperAbstract;
   import fanij.Dofo;
   import fanij.Zosycip;
   import sefylew.Fadyqe;


   public class Bev extends Command
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Bev() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const hery:String = "In order to upgrade your yard you must be a registered user.";

      public var tutobasu:Juwycof;

      public var bufaz:Byty;

      public var server:NetworkHandler;

      public var account:Account;

      public var ridecy:Boquzojul;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tawe = null;
         if(this.tutobasu is Qewi)
         {
            if(!this.account.zuqic())
            {
               this.wimijigab(hery);
            }
            _loc1_=this.bufaz.quseb(ActionMapperAbstract.kucofofik) as Tawe;
            _loc1_.sakiduby=1;
            _loc1_.objectId=Qewi(this.tutobasu).loqag;
            _loc1_.vyvy=Qewi(this.tutobasu).vyvy;
         }
         if(this.tutobasu is Dofo)
         {
            _loc1_=this.bufaz.quseb(ActionMapperAbstract.kucofofik) as Tawe;
            _loc1_.sakiduby=2;
            _loc1_.ruvawoja=Dofo(this.tutobasu).segylotaz;
            _loc1_.fir=Dofo(this.tutobasu).fir;
            _loc1_.vyvy=Dofo(this.tutobasu).vyvy;
         }
         if(this.tutobasu is Zosycip)
         {
            _loc1_=this.bufaz.quseb(ActionMapperAbstract.kucofofik) as Tawe;
            _loc1_.sakiduby=3;
            _loc1_.ruvawoja=Zosycip(this.tutobasu).medup;
            _loc1_.quvy=Zosycip(this.tutobasu).nubazudun;
            _loc1_.vyvy=Zosycip(this.tutobasu).vyvy;
         }
         if(_loc1_)
         {
            this.server.sendMessage(_loc1_);
         }
         return;
      }

      private function wimijigab(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ridecy.dispatch(new Fadyqe(param1));
         return;
      }
   }

}