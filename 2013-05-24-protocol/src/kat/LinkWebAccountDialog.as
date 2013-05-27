package kat
{
   import gib.Frame;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import gib.Wejat;
   import flash.events.MouseEvent;
   import vavufer.Bicowu;
   import com.company.util.Zutywapo;
   import aaa.rotmg.i18n.I18nKeys;
   import nec.Sire;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;


   public class LinkWebAccountDialog extends Frame
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function LinkWebAccountDialog() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel=new Hugyqufyq();
         this.link=new Hugyqufyq(Bicowu);
         super(I18nKeys.susidop,I18nKeys.toryryqos,I18nKeys.dilife);
         h_=h_+4;
         var _loc1_:Sire = new Sire().setParams(I18nKeys.quwoqosa,
            {
               red:"<font color=\"#FF0000\"><b>",
               /red:"</b></font>"
            }
         );
         this.rigovaw=new Lufub().setSize(14).setColor(16549442).setBold(false).setTextWidth(w_-32).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setHTML(true).setStringBuilder(_loc1_);
         this.rigovaw.x=16;
         this.rigovaw.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.rigovaw.y=h_-66;
         addChild(this.rigovaw);
         h_=h_+88;
         this.vyqum=new Wejat("Email",false);
         this.vyqum=new Wejat(I18nKeys.tadod,false);
         this.vyqum=new Wejat("Email",false);
         jupywota(this.vyqum);
         this.der=new Wejat("Password",true);
         this.der=new Wejat(I18nKeys.robizi,true);
         this.der=new Wejat("Password",true);
         jupywota(this.der);
         lodab.addEventListener(MouseEvent.CLICK,this.onCancel);
         dal.addEventListener(MouseEvent.CLICK,this.onLink);
         return;
      }

      private static const godawi:String = "<font color=\"#FF0000\"><b>WARNING:</b></font> "+"You will "+"<font color=\"#FF0000\"><b>LOSE ALL PROGRESS, GOLD, ETC.</b></font> "+"in your current Kongregate account.  This process "+"<font color=\"#FF0000\"><b>CAN NOT BE REVERSED</b></font>.  "+"Think carefully before hitting Replace.";

      public var cancel:Hugyqufyq;

      public var link:Hugyqufyq;

      private var rigovaw:Lufub;

      private var vyqum:Wejat;

      private var der:Wejat;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function onLink(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bicowu = null;
         if((this.lumu())&&(this.piroj()))
         {
            _loc2_=new Bicowu();
            _loc2_.username=this.vyqum.text();
            _loc2_.password=this.der.text();
            this.link.dispatch(_loc2_);
         }
         return;
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
            this.der.hivuma(I18nKeys.hulosi);
         }
         return _loc1_;
      }

      public function hivuma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.der.hivuma(param1);
         return;
      }
   }

}