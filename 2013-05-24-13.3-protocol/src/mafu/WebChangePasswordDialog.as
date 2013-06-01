package mafu
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import gib.Wejat;
   import flash.events.MouseEvent;
   import vavufer.Vikaqub;
   import aaa.rotmg.i18n.I18nKeys;
   import gyzesuqu.Zojygese;


   public class WebChangePasswordDialog extends Frame
   {
      public function WebChangePasswordDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(I18nKeys.febiti,I18nKeys.wif,I18nKeys.tekyhokip,"/changePassword");
         this.password_=new Wejat(I18nKeys.tevuhiha,true);
         jupywota(this.password_);
         this.sohacopy=new Wejat(I18nKeys.hufyvajud,true);
         jupywota(this.sohacopy);
         this.qorykeni=new Wejat(I18nKeys.viwal,true);
         jupywota(this.qorykeni);
         this.cancel=new Zojygese(lodab,MouseEvent.CLICK);
         this.change=new Zojygese(dal,MouseEvent.CLICK);
         return;
      }

      public var cancel:Hugyqufyq;

      public var change:Hugyqufyq;

      public var password_:Wejat;

      public var sohacopy:Wejat;

      public var qorykeni:Wejat;

      private function kosu(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vikaqub = null;
         if((this.detibotyh())&&(this.lamefy())&&(this.zewukyb()))
         {
            disable();
            _loc2_=new Vikaqub();
            _loc2_.tatu=this.password_.text();
            _loc2_.newPassword=this.sohacopy.text();
            this.change.dispatch(_loc2_);
         }
         return;
      }

      private function detibotyh() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.password_.text().length>=5;
         if(!_loc1_)
         {
            this.password_.hivuma(I18nKeys.cydivise);
         }
         return _loc1_;
      }

      private function lamefy() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.sohacopy.text().length>=5;
         if(!_loc1_)
         {
            this.sohacopy.hivuma(I18nKeys.ragewi);
         }
         return _loc1_;
      }

      private function zewukyb() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.sohacopy.text()==this.qorykeni.text();
         if(!_loc1_)
         {
            this.qorykeni.hivuma(I18nKeys.joryjora);
         }
         return _loc1_;
      }

      public function hivuma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.password_.hivuma(param1);
         return;
      }
   }

}