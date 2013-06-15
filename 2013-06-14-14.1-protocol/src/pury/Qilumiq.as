package pury
{
   import kylelimib.Wibivip;
   import pugem.Account;
   import kylelimib.Cygusupu;
   import cizagamym.Boquzojul;
   import hunavefeg.Depyrew;
   import zevyd.Kujyketyh;
   import daqun.Qobeta;
   import lemugo.Wokycuku;
   import vysob.ErrorDialog;
   import flash.net.URLVariables;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.external.ExternalInterface;
   import zevyd.Wufoduj;


   public class Qilumiq extends Object
   {
      public function Qilumiq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var jog:Wibivip;

      public var account:Account;

      public var sydataq:Cygusupu;

      public var ridecy:Boquzojul;

      public var con:Depyrew;

      public var nylitebu:Kujyketyh;

      public var jipus:Boquzojul;

      public var cew:Qobeta;

      public var kejisacok:Wokycuku;

      private const zyberoru:String = "You cannot purchase gold on the testing server";

      private const tota:String = "You must be registered to buy gold";

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.pupup())&&(this.account.zuqic()))
         {
            this.pyce();
         }
         else
         {
            this.mysazytun();
         }
         return;
      }

      private function mysazytun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.pupup())
         {
            this.jipus.dispatch(new ErrorDialog(this.zyberoru));
         }
         else
         {
            if(!this.account.zuqic())
            {
               this.jipus.dispatch(new ErrorDialog(this.tota));
            }
         }
         return;
      }

      private function pyce() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         try
         {
            this.ryt();
         }
         catch(e:Error)
         {
            if(!_loc3_)
            {
               tawudyp();
            }
         }
         return;
      }

      private function tawudyp() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = this.cew.kegadag(true);
         var _loc2_:URLVariables = new URLVariables();
         var _loc3_:URLRequest = new URLRequest();
         _loc2_.naid=this.account.bujadal();
         _loc2_.signedRequest=this.account.pedul();
         _loc3_.url=_loc1_+"/credits/kabamadd";
         _loc3_.method=URLRequestMethod.POST;
         _loc3_.data=_loc2_;
         navigateToURL(_loc3_,"_blank");
         this.con.debug("Opening window from standalone player");
         return;
      }

      private function ryt() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zizywir();
         this.con.debug("Attempting External Payments");
         ExternalInterface.call("rotmg.KabamPayment.displayPaymentWall");
         return;
      }

      private function zizywir() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.jog.zilyl)
         {
            ExternalInterface.call(this.sydataq.gepoza(),this.account.bujadal(),this.account.pedul());
            this.jog.zilyl=true;
         }
         return;
      }

      private function pupup() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.nylitebu.jozeguk()==Wufoduj.nobuta)||(this.kejisacok.mupububiq());
      }
   }

}