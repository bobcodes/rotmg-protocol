package ruwysepyd
{
   import qov.Kalefu;
   import sakugyt.Mecunenim;
   import ruwa.Account;
   import hotewa.Baqifa;
   import raqu.Hujuhy;
   import raqu.Goq;
   import kat.Jyhyk;
   import mafu.Few;
   import naj.KabamAccountInfoView;
   import nukobi.KongregateAccountInfoView;
   import tycerinos.Madiwuj;
   import ric.Durujeduj;
   import ninu.Ryq;
   import dijojygeg.Pan;
   import cyt.Car;
   import povopito.Ryduwi;


   public class Bimica extends Kalefu
   {
      public function Bimica() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Mecunenim;

      public var account:Account;

      public var muwi:Baqifa;

      public var kyzytanuh:Hujuhy;

      public var tihe:Goq;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tooltip.add(this.dykoto);
         this.view.kewe(this.muwi.lyr());
         this.view.fadyb(this.muwi.mybyqevo(),this.muwi.vypykosi());
         this.view.mogi(this.kuq());
         return;
      }

      private function kuq() : Jyhyk {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Jyhyk = null;
         switch(this.account.vajydor())
         {
            case Durujeduj.tatuzo:
               _loc1_=new Few();
               break;
            case Ryq.tatuzo:
               _loc1_=new KabamAccountInfoView();
               break;
            case Pan.tatuzo:
               _loc1_=new KongregateAccountInfoView();
               break;
            case Car.tatuzo:
               _loc1_=new Madiwuj();
               break;
         }
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.tooltip.remove(this.dykoto);
         this.tihe.dispatch();
         return;
      }

      private function dykoto(param1:Ryduwi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kyzytanuh.dispatch(param1);
         return;
      }
   }

}