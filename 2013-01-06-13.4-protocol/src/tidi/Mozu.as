package tidi
{
[CLASS409]   import tysenyzy.Zovisis;
   import qilarag.Sinutuci;
   import leselo.Account;
   import dylaqezo.Vusun;
   import dutes.Zevazogo;
   import dutes.Soz;
   import sojul.Jekoje;
   import aaa.RotmgAccount;
   import zegacymo.Raleke;
   import fefiw.KabamAccountInfoView;
   import tizozowof.KongregateAccountInfoView;
   import tegopegyz.Cejype;
   import zeva.Few;
   import bumyj.Hacuvozep;
   import zib.Kake;
   import pigeguwo.Jazyv;


   public class Mozu extends Zovisis
   {
      public function Mozu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Sinutuci;

      public var account:Account;

      public var jojun:Vusun;

      public var goma:Zevazogo;

      public var titurusyn:Soz;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tooltip.add(this.rytiseron);
         this.view.pyvepobok(this.jojun.pytoseqah());
         this.view.wotab(this.jojun.pesabegu(),this.jojun.tupojyt());
         this.view.tolyqoqa(this.dypyhiz());
         return;
      }

      private function dypyhiz() : Jekoje {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Jekoje = null;
         switch(null)
         {
            case RotmgAccount.kiza:
               _loc1_=new Raleke();
               break;
            case Few.kiza:
               _loc1_=new KabamAccountInfoView();
               break;
            case Hacuvozep.kiza:
               _loc1_=new KongregateAccountInfoView();
               break;
            case Kake.kiza:
               _loc1_=new Cejype();
               break;
         }
         return _loc1_;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.tooltip.remove(this.rytiseron);
         this.titurusyn.dispatch();
         return;
      }

      private function rytiseron(param1:Jazyv) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.goma.dispatch(param1);
         return;
      }
   }
[/CLASS]
}