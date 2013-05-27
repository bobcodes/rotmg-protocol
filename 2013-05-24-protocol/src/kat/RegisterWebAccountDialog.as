package kat
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import gib.Wejat;
   import gib.Bumajugel;
   import flash.events.MouseEvent;
   import aaa.rotmg.i18n.I18nKeys;
   import aaa.rotmg.config.UserConfig;
   import nec.Sire;
   import vavufer.Bicowu;
   import com.company.util.Zutywapo;


   public class RegisterWebAccountDialog extends Frame
   {
      public function RegisterWebAccountDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.register=new Hugyqufyq(Bicowu);
         this.cancel=new Hugyqufyq();
         super(I18nKeys.qinyb,I18nKeys.vamuvijuf,I18nKeys.fysywafiw,"/kongregateRegisterAccount");
         this.ravityna();
         this.sakof();
         this.addEventListeners();
         return;
      }

      public var register:Hugyqufyq;

      public var cancel:Hugyqufyq;

      private var vyqum:Wejat;

      private var der:Wejat;

      private var nyhuzogo:Wejat;

      private var checkbox:Bumajugel;

      private function addEventListeners() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         lodab.addEventListener(MouseEvent.CLICK,this.onCancel);
         dal.addEventListener(MouseEvent.CLICK,this.cydypugoq);
         return;
      }

      private function ravityna() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vyqum=new Wejat(I18nKeys.hobyfiwit,false);
         jupywota(this.vyqum);
         this.der=new Wejat(I18nKeys.meky,true);
         jupywota(this.der);
         this.nyhuzogo=new Wejat(I18nKeys.nez,true);
         jupywota(this.nyhuzogo);
         this.checkbox=new Bumajugel("",false);
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+UserConfig.dav+"\" target=\"_blank\">";
         var _loc2_:* = "</a></font>.";
         this.checkbox.pemen(new Sire().setParams(I18nKeys.godyg,
            {
               link:_loc1_,
               _link:_loc2_
            }
         ));
         todum(this.checkbox);
         return;
      }

      private function sakof() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vyqum.tabIndex=1;
         this.der.tabIndex=2;
         this.nyhuzogo.tabIndex=3;
         this.checkbox.tabIndex=4;
         lodab.tabIndex=5;
         dal.tabIndex=6;
         this.vyqum.tabEnabled=true;
         this.der.tabEnabled=true;
         this.nyhuzogo.tabEnabled=true;
         this.checkbox.tabEnabled=true;
         lodab.tabEnabled=true;
         dal.tabEnabled=true;
         return;
      }

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function cydypugoq(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bicowu = null;
         if((this.lumu())&&(this.piroj())&&(this.vuhu())&&(this.zebocub()))
         {
            _loc2_=new Bicowu();
            _loc2_.username=this.vyqum.text();
            _loc2_.password=this.der.text();
            this.register.dispatch(_loc2_);
         }
         return;
      }

      private function zebocub() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.checkbox.luwesev();
         if(!_loc1_)
         {
            this.checkbox.hivuma(I18nKeys.wedel);
         }
         return _loc1_;
      }

      private function lumu() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = Zutywapo.cuwuhuz(this.vyqum.text());
         if(!_loc1_)
         {
            this.vyqum.hivuma(I18nKeys.ruhisytil);
         }
         return _loc1_;
      }

      private function piroj() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.der.text().length>=5;
         if(!_loc1_)
         {
            this.der.hivuma(I18nKeys.bywuc);
         }
         return _loc1_;
      }

      private function vuhu() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.der.text()==this.nyhuzogo.text();
         if(!_loc1_)
         {
            this.nyhuzogo.hivuma(I18nKeys.sonehi);
         }
         return _loc1_;
      }

      public function vukukyso(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vyqum.hivuma(param1);
         return;
      }
   }

}