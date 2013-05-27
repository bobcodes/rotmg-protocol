package mafu
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import gib.Wejat;
   import com.company.assembleegameclient.ui.Rucoted;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.MouseEvent;
   import vavufer.Bicowu;
   import gyzesuqu.Zojygese;


   public class WebLoginDialog extends Frame
   {
      public function WebLoginDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(I18nKeys.gyfi,I18nKeys.mopykuqa,I18nKeys.marety,"/signIn");
         this.lysimi();
         this.forgot=new Zojygese(this.wunubud,MouseEvent.CLICK);
         this.register=new Zojygese(this.dorak,MouseEvent.CLICK);
         this.cancel=new Zojygese(lodab,MouseEvent.CLICK);
         this.signIn=new Hugyqufyq(Bicowu);
         return;
      }

      public var cancel:Hugyqufyq;

      public var signIn:Hugyqufyq;

      public var forgot:Hugyqufyq;

      public var register:Hugyqufyq;

      private var email:Wejat;

      private var password:Wejat;

      private var wunubud:Rucoted;

      private var dorak:Rucoted;

      private function lysimi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.email=new Wejat(I18nKeys.farodepan,false);
         jupywota(this.email);
         this.password=new Wejat(I18nKeys.posacy,true);
         jupywota(this.password);
         this.wunubud=new Rucoted(12,false,I18nKeys.fowe);
         zuduhujul(this.wunubud);
         this.dorak=new Rucoted(12,false,I18nKeys.gufilu);
         zuduhujul(this.dorak);
         dal.addEventListener(MouseEvent.CLICK,this.kuwiw);
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function kuwiw(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bicowu = null;
         if((this.lumu())&&(this.piroj()))
         {
            _loc2_=new Bicowu();
            _loc2_.username=this.email.text();
            _loc2_.password=this.password.text();
            this.signIn.dispatch(_loc2_);
         }
         return;
      }

      private function piroj() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = !(this.password.text()=="");
         if(!_loc1_)
         {
            this.password.hivuma(I18nKeys.rasoqi);
         }
         return _loc1_;
      }

      private function lumu() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = !(this.email.text()=="");
         if(!_loc1_)
         {
            this.email.hivuma(I18nKeys.hegizy);
         }
         return _loc1_;
      }

      public function hivuma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.password.hivuma(param1);
         return;
      }
   }

}