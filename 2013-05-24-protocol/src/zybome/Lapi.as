package zybome
{
   import ruwa.Account;
   import wegyluke.Hez;
   import hotewa.Baqifa;
   import raqu.Doqavi;
   import raqu.Jewyd;
   import gag.Gawu;
   import cidehov.PurchaseCharacterClassTask;
   import cidehov.Qeceseku;
   import dopumitud.Wib;
   import kat.Puqyfebal;
   import gag.Cub;
   import gag.Poh;
   import gag.Myzawob;
   import gag.Bysyg;
   import ruwysepyd.Zew;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Lapi extends Object
   {
      public function Lapi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var classType:int;

      public var account:Account;

      public var naval:Hez;

      public var muwi:Baqifa;

      public var kab:Doqavi;

      public var qalagiv:Jewyd;

      public var rurusedi:Gawu;

      public var zoritu:PurchaseCharacterClassTask;

      public var failure:Qeceseku;

      public var qyk:Wib;

      private var cost:int;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cost=this.vekagu();
         if(!this.account.bugi())
         {
            this.mutale();
         }
         else
         {
            if(this.ciryhy())
            {
               this.pifybi();
            }
            else
            {
               this.gihig();
            }
         }
         return;
      }

      private function mutale() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new Puqyfebal("In order to unlock a class type you must be a registered user."));
         this.kab.dispatch();
         return;
      }

      private function pifybi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.muwi.wemafowyq(-1*this.cost);
         this.qalagiv.dispatch(this.classType);
         var _loc1_:Cub = new Cub();
         _loc1_.add(new Poh(this.zoritu,this.qyk,this.fupoky()));
         _loc1_.add(new Myzawob(this.kab));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }

      private function fupoky() : Bysyg {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.failure.pynikyf=this.zoritu;
         return this.failure;
      }

      private function gihig() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Zew = new Zew();
         _loc1_.bipefybo(I18nKeys.mycamiwo,{cost:this.cost});
         this.naval.dispatch(_loc1_);
         this.kab.dispatch();
         return;
      }

      private function vekagu() : int {
         return ObjectLibrary.tem[this.classType].UnlockCost;
      }

      private function ciryhy() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !this.cost||this.cost<=this.muwi.cuvo();
      }
   }

}