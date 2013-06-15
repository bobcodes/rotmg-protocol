package waryp
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import com.company.rotmg.graphics.StackedLogoR;
   import com.company.rotmg.graphics.KabamLogo;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import hivaw.Zure;
   import flash.events.Event;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import qymoho.Taziw;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Vek extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vek() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wahyveqo=this.kadugekov();
         this.susifaf=this.hydy();
         this.wok=this.lagi();
         this.gopubotag=this.dozal();
         super();
         this.close=new Qanyduk();
         addChild(new Taziw());
         addChild(new ScreenGraphic());
         addChild(this.wahyveqo);
         addChild(this.susifaf);
         addChild(this.wok);
         addChild(this.gopubotag);
         return;
      }

      private static const zygaf:String = "http://www.wildshadow.com/";

      private static const lodi:String = "http://www.kabam.com/";

      public var close:Qanyduk;

      private var wahyveqo:Guzowoja;

      private var susifaf:StackedLogoR;

      private var wok:KabamLogo;

      private var gopubotag:Nulejufyl;

      private function dozal() : Nulejufyl {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gopubotag=new Nulejufyl("Close.text",36,false);
         this.gopubotag.setAutoSize(TextFieldAutoSize.CENTER);
         this.gopubotag.addEventListener(MouseEvent.CLICK,this.nes);
         return this.gopubotag;
      }

      private function lagi() : KabamLogo {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wok=new KabamLogo();
         this.wok.scaleX=this.wok.scaleY=1;
         this.wok.addEventListener(MouseEvent.CLICK,this.rufezitig);
         this.wok.buttonMode=true;
         this.wok.useHandCursor=true;
         return this.wok;
      }

      private function hydy() : StackedLogoR {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.susifaf=new StackedLogoR();
         this.susifaf.scaleX=this.susifaf.scaleY=1.2;
         this.susifaf.addEventListener(MouseEvent.CLICK,this.kafeca);
         this.susifaf.buttonMode=true;
         this.susifaf.useHandCursor=true;
         return this.susifaf;
      }

      private function kadugekov() : Guzowoja {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wahyveqo=new Guzowoja();
         this.wahyveqo.setColor(11776947).setSize(16).setBold(true);
         this.wahyveqo.setStringBuilder(new Kybidu().setParams(Vibemod.jid));
         this.wahyveqo.filters=[new DropShadowFilter(0,0,0)];
         this.wahyveqo.setAutoSize(TextFieldAutoSize.CENTER);
         return this.wahyveqo;
      }

      public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wahyveqo.x=stage.stageWidth/2;
         this.wahyveqo.y=10;
         this.susifaf.x=stage.stageWidth/2-this.susifaf.width/2;
         this.susifaf.y=50;
         this.wok.x=stage.stageWidth/2-this.wok.width/2;
         this.wok.y=325;
         this.gopubotag.x=stage.stageWidth/2-this.gopubotag.width/2;
         this.gopubotag.y=Zure.mozarit;
         return;
      }

      protected function kafeca(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         navigateToURL(new URLRequest(zygaf),"_blank");
         return;
      }

      protected function rufezitig(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         navigateToURL(new URLRequest(lodi),"_blank");
         return;
      }

      private function nes(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }
   }

}