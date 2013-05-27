package fiqol
{
   import aaa.rotmg.i18n.I18nKeys;
   import ruwa.Account;
   import kagijawil.Cibiqot;
   import wegyluke.Hez;
   import jiha.Fiso;
   import juw.Coqihyqin;
   import ric.Durujeduj;
   import ninu.Ryq;
   import difu.Kirygym;
   import ruwa.Hytezod;
   import kat.Puqyfebal;


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

      private static const cehujufek:String = I18nKeys.zyfeda;

      public var account:Account;

      public var model:Cibiqot;

      public var naval:Hez;

      public var wil:Fiso;

      public var binajeto:Coqihyqin;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.bugi())
         {
            this.wijufyvy();
         }
         else
         {
            this.dofukik();
         }
         return;
      }

      private function wijufyvy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account is Durujeduj||this.account is Ryq)
         {
            this.naval.dispatch(new Kirygym());
         }
         else
         {
            this.guqe();
         }
         return;
      }

      private function guqe() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hytezod = new Hytezod();
         _loc1_.offer=this.model.byjigi();
         this.binajeto.dispatch(_loc1_);
         return;
      }

      private function dofukik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new Puqyfebal(cehujufek));
         return;
      }
   }

}