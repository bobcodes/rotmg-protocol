package jehihe
{
[CLASS1004]   import helepebas.Delo;
   import leselo.Account;
   import helepebas.Wewizy;
   import kirofyny.Hehuf;
   import bikyvym.Voduzak;
   import minobyb.Vol;
   import natus.Hewoda;
   import dylaqezo.Vusun;
   import cejyva.ErrorDialog;
   import flash.net.URLVariables;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.external.ExternalInterface;
   import minobyb.Pycilylu;


   public class Kelycihi extends Object
   {
      public function Kelycihi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var kugulik:Delo;

      public var account:Account;

      public var syhijed:Wewizy;

      public var lyhog:Hehuf;

      public var wop:Voduzak;

      public var wywotavuz:Vol;

      public var rypin:Hehuf;

      public var syk:Hewoda;

      public var jojun:Vusun;

      private const doma:String = "You cannot purchase gold on the testing server";

      private const lecapojom:String = "You must be registered to buy gold";

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.vope())&&(this.account.tuq()))
         {
            this.gutecace();
         }
         else
         {
            this.nifuk();
         }
         return;
      }

      private function nifuk() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.vope())
         {
            this.rypin.dispatch(new ErrorDialog(this.doma));
         }
         else
         {
            if(!this.account.tuq())
            {
               this.rypin.dispatch(new ErrorDialog(this.lecapojom));
            }
         }
         return;
      }

      private function gutecace() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         try
         {
            this.dynyta();
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
               duw();
            }
         }
         return;
      }

      private function duw() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = this.syk.static(true);
         var _loc2_:URLVariables = new URLVariables();
         var _loc3_:URLRequest = new URLRequest();
         _loc2_.naid=this.account.jypy();
         _loc2_.signedRequest=this.account.mucana();
         _loc3_.url=_loc1_+"/credits/kabamadd";
         _loc3_.method=URLRequestMethod.POST;
         _loc3_.data=_loc2_;
         navigateToURL(_loc3_,"_blank");
         this.wop.debug("Opening window from standalone player");
         return;
      }

      private function dynyta() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nep();
         this.wop.debug("Attempting External Payments");
         ExternalInterface.call("rotmg.KabamPayment.displayPaymentWall");
         return;
      }

      private function nep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.kugulik.gor)
         {
            ExternalInterface.call(this.syhijed.bydec(),this.account.jypy(),this.account.mucana());
            this.kugulik.gor=true;
         }
         return;
      }

      private function vope() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this.wywotavuz.surusul()==Pycilylu.wybebic)||(this.jojun.cevewaza());
      }
   }
[/CLASS]
}