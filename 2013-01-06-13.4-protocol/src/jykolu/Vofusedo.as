package jykolu
{
[CLASS434]   import leselo.Account;
   import dylaqezo.Vusun;
   import dutes.Vow;
   import tusidywuq.Nan;
   import kirofyny.Hehuf;
   import wyjimigo.Tykum;
   import vaned.Wehipyj;
   import qilarag.CharacterSelectionAndNewsScreen;
   import guvakipe.Nedasefyg;
   import tidi.AgeVerificationDialog;


   public class Vofusedo extends Object
   {
      public function Vofusedo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var model:Vusun;

      public var wukulomik:Vow;

      public var gatav:Nan;

      public var lyhog:Hehuf;

      public var servers:Tykum;

      public var qypulem:Wehipyj;

      private const vadopu:int = 782;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.servers.todih())
         {
            this.tolir();
         }
         else
         {
            if(!this.account.tuq())
            {
               this.rysofyra();
            }
            else
            {
               if(!this.model.zydemy())
               {
                  this.bedyguhyj();
               }
               else
               {
                  this.vudy();
               }
            }
         }
         return;
      }

      private function vudy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wukulomik.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }

      private function rysofyra() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gatav.dispatch(this.jolypimet());
         return;
      }

      private function jolypimet() : Nedasefyg {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nedasefyg = new Nedasefyg();
         _loc1_.buny=true;
         _loc1_.charId=this.model.lazotidiz();
         _loc1_.sufosyz=-1;
         _loc1_.zyhafovyd=true;
         return _loc1_;
      }

      private function bedyguhyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new AgeVerificationDialog());
         return;
      }

      private function tolir() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(this.qypulem.biw());
         return;
      }
   }
[/CLASS]
}