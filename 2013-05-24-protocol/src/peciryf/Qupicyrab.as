package peciryf
{
   import nasokuqa.Gepygaz;
   import ruwa.Account;
   import nasokuqa.Myky;
   import wegyluke.Hez;
   import komawowag.Becepog;
   import voto.Cala;
   import cucowury.Vylasy;
   import hotewa.Baqifa;
   import nas.ErrorDialog;
   import flash.net.URLVariables;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.net.navigateToURL;
   import flash.external.ExternalInterface;
   import voto.Nemo;


   public class Qupicyrab extends Object
   {
      public function Qupicyrab() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var tejupahi:Gepygaz;

      public var account:Account;

      public var timim:Myky;

      public var naval:Hez;

      public var qiqely:Becepog;

      public var cez:Cala;

      public var vujik:Hez;

      public var nerynuk:Vylasy;

      public var muwi:Baqifa;

      private const godajo:String = "You cannot purchase gold on the testing server";

      private const myrefaj:String = "You must be registered to buy gold";

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.symory())&&(this.account.bugi()))
         {
            this.riciwes();
         }
         else
         {
            this.vuhuli();
         }
         return;
      }

      private function vuhuli() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.symory())
         {
            this.vujik.dispatch(new ErrorDialog(this.godajo));
         }
         else
         {
            if(!this.account.bugi())
            {
               this.vujik.dispatch(new ErrorDialog(this.myrefaj));
            }
         }
         return;
      }

      private function riciwes() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         try
         {
            this.hina();
         }
         catch(e:Error)
         {
            if(_loc3_)
            {
               koroc();
            }
         }
         return;
      }

      private function koroc() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = this.nerynuk.jodohyfewo(true);
         var _loc2_:URLVariables = new URLVariables();
         var _loc3_:URLRequest = new URLRequest();
         _loc2_.naid=this.account.rozabuweq();
         _loc2_.signedRequest=this.account.lyze();
         _loc3_.url=_loc1_+"/credits/kabamadd";
         _loc3_.method=URLRequestMethod.POST;
         _loc3_.data=_loc2_;
         navigateToURL(_loc3_,"_blank");
         this.qiqely.debug("Opening window from standalone player");
         return;
      }

      private function hina() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kunup();
         this.qiqely.debug("Attempting External Payments");
         ExternalInterface.call("rotmg.KabamPayment.displayPaymentWall");
         return;
      }

      private function kunup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.tejupahi.gazih)
         {
            ExternalInterface.call(this.timim.tejotez(),this.account.rozabuweq(),this.account.lyze());
            this.tejupahi.gazih=true;
         }
         return;
      }

      private function symory() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.cez.jeluf()==Nemo.duke)||(this.muwi.kuzuqi());
      }
   }

}