package sojul
{
[CLASS721]   import nonyna.Frame;
   import tinava.Dab;
   import pudev.Capitu;
   import nonyna.Cyb;
   import flash.events.MouseEvent;
   import kyhawibyc.Fapu;
   import com.company.util.Vutem;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
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
         this.cancel=new Dab();
         this.link=new Dab(Fapu);
         super(Kefyfa.mifigaby,Kefyfa.palysiqu,Kefyfa.halewa);
         h_=h_+4;
         var _loc1_:Zufi = new Zufi().setParams(Kefyfa.pivyso,
            {
               red:"<font color=\"#FF0000\"><b>",
               /red:"</b></font>"
            }
         );
         this.riqepyn=new Capitu().setSize(14).setColor(16549442).setBold(false).setTextWidth(w_-32).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setHTML(true).setStringBuilder(_loc1_);
         this.riqepyn.x=16;
         this.riqepyn.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.riqepyn.y=h_-66;
         addChild(this.riqepyn);
         h_=h_+88;
         this.dytovu=new Cyb("Email",false);
         this.dytovu=new Cyb(Kefyfa.rijoge,false);
         this.dytovu=new Cyb("Email",false);
         sirutugu(this.dytovu);
         this.wyhi=new Cyb("Password",true);
         this.wyhi=new Cyb(Kefyfa.mevyfysu,true);
         this.wyhi=new Cyb("Password",true);
         sirutugu(this.wyhi);
         mycip.addEventListener(MouseEvent.CLICK,this.onCancel);
         mibyruji.addEventListener(MouseEvent.CLICK,this.onLink);
         return;
      }

      private static const mijady:String = "<font color=\"#FF0000\"><b>WARNING:</b></font> "+"You will "+"<font color=\"#FF0000\"><b>LOSE ALL PROGRESS, GOLD, ETC.</b></font> "+"in your current Kongregate account.  This process "+"<font color=\"#FF0000\"><b>CAN NOT BE REVERSED</b></font>.  "+"Think carefully before hitting Replace.";

      public var cancel:Dab;

      public var link:Dab;

      private var riqepyn:Capitu;

      private var dytovu:Cyb;

      private var wyhi:Cyb;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function onLink(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Fapu = null;
         if((this.winuf())&&(this.jycypine()))
         {
            _loc2_=new Fapu();
            _loc2_.username=this.dytovu.text();
            _loc2_.password=this.wyhi.text();
            this.link.dispatch(_loc2_);
         }
         return;
      }

      private function winuf() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = Vutem.hil(this.dytovu.text());
         if(!_loc1_)
         {
            this.dytovu.famugujo(Kefyfa.cudi);
         }
         return _loc1_;
      }

      private function jycypine() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = this.wyhi.text().length>=5;
         if(!_loc1_)
         {
            this.wyhi.famugujo(Kefyfa.vagi);
         }
         return _loc1_;
      }

      public function famugujo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wyhi.famugujo(param1);
         return;
      }
   }
[/CLASS]
}