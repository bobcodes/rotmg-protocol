package decivuv
{
[CLASS335]   import haqakel.Kefyfa;
   import leselo.Account;
   import jet.Varusici;
   import kirofyny.Hehuf;
   import rysuho.Doj;
   import sakaja.Laq;
   import gyjad.Jibaw;
   import zeva.Few;
   import behe.Wugito;
   import leselo.Cetyqysy;
   import sojul.Viropisos;


   public class BuyBeginnersPackageCommand extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BuyBeginnersPackageCommand() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const fatipu:String = Kefyfa.pebujamiv;

      public var account:Account;

      public var model:Varusici;

      public var lyhog:Hehuf;

      public var qolofo:Doj;

      public var gomanydi:Laq;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.tuq())
         {
            this.gafelo();
         }
         else
         {
            this.wogoc();
         }
         return;
      }

      private function gafelo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account is Jibaw||this.account is Few)
         {
            this.lyhog.dispatch(new Wugito());
         }
         else
         {
            this.cud();
         }
         return;
      }

      private function cud() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Cetyqysy = new Cetyqysy();
         _loc1_.offer=this.model.vypiqyq();
         this.gomanydi.dispatch(_loc1_);
         return;
      }

      private function wogoc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new Viropisos(fatipu));
         return;
      }
   }
[/CLASS]
}