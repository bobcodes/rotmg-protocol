package sefylew
{
   import zekeqa.Frame;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import zekeqa.Pedug;
   import flash.events.MouseEvent;
   import cinyj.Vobewabij;
   import com.company.util.Jyjoburib;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import flash.text.TextFormatAlign;
   import flash.filters.DropShadowFilter;


   public class LinkWebAccountDialog extends Frame
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function LinkWebAccountDialog() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel=new Qanyduk();
         this.link=new Qanyduk(Vobewabij);
         super(Vibemod.ropaw,Vibemod.diqysyk,Vibemod.vedob);
         h_=h_+4;
         var _loc1_:Kybidu = new Kybidu().setParams(Vibemod.qajeqa,
            {
               red:"<font color=\"#FF0000\"><b>",
               /red:"</b></font>"
            }
         );
         this.hedudafo=new Guzowoja().setSize(14).setColor(16549442).setBold(false).setTextWidth(w_-32).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER).setHTML(true).setStringBuilder(_loc1_);
         this.hedudafo.x=16;
         this.hedudafo.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.hedudafo.y=h_-66;
         addChild(this.hedudafo);
         h_=h_+88;
         this.sese=new Pedug("Email",false);
         this.sese=new Pedug(Vibemod.debybe,false);
         this.sese=new Pedug("Email",false);
         gozunigyl(this.sese);
         this.cojy=new Pedug("Password",true);
         this.cojy=new Pedug(Vibemod.goves,true);
         this.cojy=new Pedug("Password",true);
         gozunigyl(this.cojy);
         vuz.addEventListener(MouseEvent.CLICK,this.onCancel);
         nuwido.addEventListener(MouseEvent.CLICK,this.onLink);
         return;
      }

      private static const cahyzikoz:String = "<font color=\"#FF0000\"><b>WARNING:</b></font> "+"You will "+"<font color=\"#FF0000\"><b>LOSE ALL PROGRESS, GOLD, ETC.</b></font> "+"in your current Kongregate account.  This process "+"<font color=\"#FF0000\"><b>CAN NOT BE REVERSED</b></font>.  "+"Think carefully before hitting Replace.";

      public var cancel:Qanyduk;

      public var link:Qanyduk;

      private var hedudafo:Guzowoja;

      private var sese:Pedug;

      private var cojy:Pedug;

      private function onCancel(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function onLink(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vobewabij = null;
         if((this.lanuqe())&&(this.rojosa()))
         {
            _loc2_=new Vobewabij();
            _loc2_.username=this.sese.text();
            _loc2_.password=this.cojy.text();
            this.link.dispatch(_loc2_);
         }
         return;
      }

      private function lanuqe() : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = Jyjoburib.mag(this.sese.text());
         if(!_loc1_)
         {
            this.sese.nirin(Vibemod.wogijepew);
         }
         return _loc1_;
      }

      private function rojosa() : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = this.cojy.text().length>=5;
         if(!_loc1_)
         {
            this.cojy.nirin(Vibemod.habosapep);
         }
         return _loc1_;
      }

      public function nirin(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cojy.nirin(param1);
         return;
      }
   }

}