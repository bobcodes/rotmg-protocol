package gepa
{
   import qov.Kalefu;
   import zoroc.Gecezyw;
   import pujo.Vitibuc;
   import aaa.rotmg.account.Account;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import zoroc.Rycezedi;
   import zoroc.Cikyzigit;
   import zoroc.Tokaj;


   public class Majevany extends Kalefu
   {
      public function Majevany() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:YardUpgraderView;

      public var gimyliq:Gecezyw;

      public var lydufady:Vitibuc;

      public var account:Account;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      override public function initialize() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Rycezedi = new Rycezedi();
         var _loc2_:int = this.gimyliq.fiz();
         var _loc3_:int = _loc2_<Cikyzigit.luwilal.wusibaw?Cikyzigit.kyj(_loc2_+1).wusibaw:Cikyzigit.luwilal.wusibaw;
         _loc1_.juzyjy=Cikyzigit.kyj(_loc2_).value;
         _loc1_.fute=Cikyzigit.kyj(_loc3_).value;
         _loc1_.disyqeper=this.gimyliq.ryke();
         _loc1_.pujoda=this.gimyliq.lijamokuf();
         this.view.init(_loc1_);
         this.view.fiwabivy.add(this.jepimuguj);
         this.view.huvi.add(this.tyziworuk);
         return;
      }

      private function tyziworuk(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.soquzy(0);
         return;
      }

      private function jepimuguj(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.soquzy(1);
         return;
      }

      private function soquzy(param1:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = this.gimyliq.seqev();
         var _loc3_:Tokaj = new Tokaj(_loc2_,param1);
         this.tusagecu.dispatch();
         this.lydufady.dispatch(_loc3_);
         return;
      }
   }

}