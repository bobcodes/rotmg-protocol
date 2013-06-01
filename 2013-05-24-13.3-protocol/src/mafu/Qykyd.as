package mafu
{
   import qov.Kalefu;
   import zylesakob.Vifil;
   import wegyluke.Hez;
   import raqu.Zer;
   import vavufer.Vikaqub;
   import aaa.rotmg.i18n.I18nKeys;
   import gag.Bysyg;


   public class Qykyd extends Kalefu
   {
      public function Qykyd() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:WebChangePasswordDialog;

      public var change:Vifil;

      public var naval:Hez;

      public var piv:Zer;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.change.add(this.kosu);
         this.view.cancel.add(this.onCancel);
         this.piv.add(this.jyqoqonuz);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.change.remove(this.kosu);
         this.view.cancel.remove(this.onCancel);
         this.piv.remove(this.jyqoqonuz);
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new WebAccountDetailDialog());
         return;
      }

      private function kosu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Vikaqub = null;
         if((this.detibotyh())&&(this.lamefy())&&(this.zewukyb()))
         {
            this.view.disable();
            _loc1_=new Vikaqub();
            _loc1_.tatu=this.view.password_.text();
            _loc1_.newPassword=this.view.sohacopy.text();
            this.change.dispatch(_loc1_);
         }
         return;
      }

      private function detibotyh() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.view.password_.text().length>=5;
         if(!_loc1_)
         {
            this.view.password_.hivuma(I18nKeys.cydivise);
         }
         return _loc1_;
      }

      private function lamefy() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.view.sohacopy.text().length>=5;
         if(!_loc1_)
         {
            this.view.sohacopy.hivuma(I18nKeys.bywuc);
         }
         return _loc1_;
      }

      private function zewukyb() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.view.sohacopy.text()==this.view.qorykeni.text();
         if(!_loc1_)
         {
            this.view.qorykeni.hivuma(I18nKeys.sonehi);
         }
         return _loc1_;
      }

      private function jyqoqonuz(param1:Bysyg) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.hivuma(param1.error);
         this.view.pinyry();
         return;
      }
   }

}