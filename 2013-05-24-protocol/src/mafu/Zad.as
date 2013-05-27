package mafu
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import gib.Bumajugel;
   import johazoq.DateField;
   import movimet.Lufub;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import flash.events.TextEvent;
   import aaa.rotmg.config.UserConfig;
   import flash.filters.DropShadowFilter;
   import gyzesuqu.Zojygese;
   import flash.events.MouseEvent;
   import vavufer.Bicowu;
   import com.company.util.Zutywapo;


   public class Zad extends Frame
   {
      public function Zad() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(I18nKeys.nopeharuf,"RegisterWebAccountDialog.leftButton","RegisterWebAccountDialog.rightButton","/registerAccount",326);
         this.nekesakob();
         this.bige();
         return;
      }

      public var register:Hugyqufyq;

      public var signIn:Hugyqufyq;

      public var cancel:Hugyqufyq;

      private const errors:Array = [];

      private var vyqum:Pyrosofaj;

      private var der:Pyrosofaj;

      private var nyhuzogo:Pyrosofaj;

      private var checkbox:Bumajugel;

      private var furadyko:DateField;

      private var muwa:Lufub;

      private var lumav:Lufub;

      private var piq:String = "</a></font>";

      private function nekesakob() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vyqum=new Pyrosofaj(I18nKeys.hobyfiwit,false,275);
         this.der=new Pyrosofaj(I18nKeys.meky,true,275);
         this.nyhuzogo=new Pyrosofaj(I18nKeys.nez,true,275);
         this.furadyko=new DateField();
         this.furadyko.setTitle(I18nKeys.piwy);
         jefuqyp(this.vyqum);
         jefuqyp(this.der);
         jefuqyp(this.nyhuzogo);
         pik(this.furadyko,17);
         pujiwe(35);
         this.checkbox=new Bumajugel(I18nKeys.jyd,false,12);
         todum(this.checkbox);
         pujiwe(17);
         this.zopelyj();
         pujiwe(17*2);
         this.qivubys();
         return;
      }

      public function qivubys() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.muwa=new Lufub();
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\"event:flash.events.TextEvent\">";
         this.muwa.setStringBuilder(new Sire().setParams(I18nKeys.ryja,
            {
               signIn:_loc1_,
               _signIn:this.piq
            }
         ));
         this.muwa.addEventListener(TextEvent.LINK,this.casy);
         this.tafomipum(this.muwa);
         return;
      }

      public function zopelyj() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.lumav=new Lufub();
         var _loc1_:* = "<font color=\"#7777EE\"><a href=\""+UserConfig.dav+"\" target=\"_blank\">";
         var _loc2_:* = "<font color=\"#7777EE\"><a href=\""+UserConfig.behibimik+"\" target=\"_blank\">";
         this.lumav.setStringBuilder(new Sire().setParams(I18nKeys.baqacyg,
            {
               tou:_loc1_,
               _tou:this.piq,
               policy:_loc2_,
               _policy:this.piq
            }
         ));
         this.tafomipum(this.lumav);
         return;
      }

      public function tafomipum(param1:Lufub) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         param1.setSize(12).setColor(11776947).setBold(true);
         param1.setTextWidth(275);
         param1.setMultiLine(true).setWordWrap(true).setHTML(true);
         param1.filters=[new DropShadowFilter(0,0,0)];
         addChild(param1);
         positionText(param1);
         return;
      }

      private function casy(param1:TextEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.signIn.dispatch();
         return;
      }

      private function bige() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cancel=new Zojygese(lodab,MouseEvent.CLICK);
         dal.addEventListener(MouseEvent.CLICK,this.cydypugoq);
         this.register=new Hugyqufyq(Bicowu);
         this.signIn=new Hugyqufyq();
         return;
      }

      private function cydypugoq(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Boolean = this.pelih();
         this.rosuvygy();
         if(_loc2_)
         {
            this.howuqem();
         }
         return;
      }

      private function pelih() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.errors.length=0;
         var _loc1_:* = true;
         _loc1_=(this.lumu())&&(_loc1_);
         _loc1_=(this.piroj())&&(_loc1_);
         _loc1_=(this.vuhu())&&(_loc1_);
         _loc1_=(this.isAgeVerified())&&(_loc1_);
         _loc1_=(this.werehijeh())&&(_loc1_);
         return _loc1_;
      }

      private function isAgeVerified() : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:uint = Ludasy.felyfod(this.furadyko);
         var _loc2_:* = _loc1_>=13;
         this.furadyko.pimaq(!_loc2_);
         if(!_loc2_)
         {
            this.errors.push(I18nKeys.mupumufyq);
         }
         return _loc2_;
      }

      private function werehijeh() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = this.furadyko.tamufaf();
         this.furadyko.pimaq(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(I18nKeys.fasuse);
         }
         return _loc1_;
      }

      private function lumu() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = Zutywapo.cuwuhuz(this.vyqum.text());
         this.vyqum.pimaq(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(I18nKeys.ruhisytil);
         }
         return _loc1_;
      }

      private function piroj() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.der.text().length>=5;
         this.der.pimaq(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(I18nKeys.hulosi);
         }
         return _loc1_;
      }

      private function vuhu() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.der.text()==this.nyhuzogo.text();
         this.nyhuzogo.pimaq(!_loc1_);
         if(!_loc1_)
         {
            this.errors.push(I18nKeys.pokegydi);
         }
         return _loc1_;
      }

      public function rosuvygy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.errors.length==0)
         {
            this.vyf();
         }
         else
         {
            this.cyjusofe(this.errors.length==1?this.errors[0]:I18nKeys.lajer);
         }
         return;
      }

      public function luse(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cyjusofe(param1);
         return;
      }

      private function vyf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         pevyh.setStringBuilder(new Sire().setParams(I18nKeys.nopeharuf));
         pevyh.setColor(11776947);
         return;
      }

      private function cyjusofe(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         pevyh.setStringBuilder(new Sire().setParams(param1));
         pevyh.setColor(16549442);
         return;
      }

      private function howuqem() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bicowu = new Bicowu();
         _loc1_.username=this.vyqum.text();
         _loc1_.password=this.der.text();
         _loc1_.tymekaq=this.checkbox.luwesev()?1:0;
         this.register.dispatch(_loc1_);
         return;
      }
   }

}