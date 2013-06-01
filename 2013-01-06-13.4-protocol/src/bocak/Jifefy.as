package bocak
{
[CLASS289]   import tysenyzy.Command;
   import qypupet.Nosiref;
   import zun.Fyqyna;
   import lafol.Vidales;
   import leselo.Account;
   import kirofyny.Hehuf;
   import sanijijiz.Fyhigu;
   import qypupet.Hatozaq;
   import sanijijiz.Cilym;
   import qypupet.Vuke;
   import qypupet.Ruze;
   import sojul.Viropisos;


   public class Jifefy extends Command
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jifefy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const kotywo:String = "In order to upgrade your yard you must be a registered user.";

      public var wakutehe:Nosiref;

      public var vivohasu:Fyqyna;

      public var server:Vidales;

      public var account:Account;

      public var lyhog:Hehuf;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Fyhigu = null;
         if(this.wakutehe is Hatozaq)
         {
            if(!this.account.tuq())
            {
               this.rek(kotywo);
            }
            _loc1_=this.vivohasu.suqyz(Cilym.gypavur) as Fyhigu;
            _loc1_.fuje=1;
            _loc1_.objectId=Hatozaq(this.wakutehe).tebafenun;
            _loc1_.qota=Hatozaq(this.wakutehe).qota;
         }
         if(this.wakutehe is Vuke)
         {
            _loc1_=this.vivohasu.suqyz(Cilym.gypavur) as Fyhigu;
            _loc1_.fuje=2;
            _loc1_.tejy=Vuke(this.wakutehe).kifukiraw;
            _loc1_.jadi=Vuke(this.wakutehe).jadi;
            _loc1_.qota=Vuke(this.wakutehe).qota;
         }
         if(this.wakutehe is Ruze)
         {
            _loc1_=this.vivohasu.suqyz(Cilym.gypavur) as Fyhigu;
            _loc1_.fuje=3;
            _loc1_.tejy=Ruze(this.wakutehe).gasuvawo;
            _loc1_.tol=Ruze(this.wakutehe).hazil;
            _loc1_.qota=Ruze(this.wakutehe).qota;
         }
         if(_loc1_)
         {
            this.server.sendMessage(_loc1_);
         }
         return;
      }

      private function rek(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyhog.dispatch(new Viropisos(param1));
         return;
      }
   }
[/CLASS]
}