package sakugyt
{
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import com.company.rotmg.graphics.StackedLogoR;
   import com.company.rotmg.graphics.KabamLogo;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import tys.Gagoreni;
   import flash.events.Event;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import vahejo.Tetywybil;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Pabacuviz extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Pabacuviz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zyb=this.putidojuk();
         this.dyp=this.myky();
         this.hyfedo=this.lod();
         this.pisykyr=this.nagelywig();
         super();
         this.close=new Hugyqufyq();
         addChild(new Tetywybil());
         addChild(new ScreenGraphic());
         addChild(this.zyb);
         addChild(this.dyp);
         addChild(this.hyfedo);
         addChild(this.pisykyr);
         return;
      }

      private static const rimoce:String = "http://www.wildshadow.com/";

      private static const nujisa:String = "http://www.kabam.com/";

      public var close:Hugyqufyq;

      private var zyb:Lufub;

      private var dyp:StackedLogoR;

      private var hyfedo:KabamLogo;

      private var pisykyr:Tiqigawul;

      private function nagelywig() : Tiqigawul {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pisykyr=new Tiqigawul("Close.text",36,false);
         this.pisykyr.setAutoSize(TextFieldAutoSize.CENTER);
         this.pisykyr.addEventListener(MouseEvent.CLICK,this.rybigisu);
         return this.pisykyr;
      }

      private function lod() : KabamLogo {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hyfedo=new KabamLogo();
         this.hyfedo.scaleX=this.hyfedo.scaleY=1;
         this.hyfedo.addEventListener(MouseEvent.CLICK,this.tyqefobu);
         this.hyfedo.buttonMode=true;
         this.hyfedo.useHandCursor=true;
         return this.hyfedo;
      }

      private function myky() : StackedLogoR {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dyp=new StackedLogoR();
         this.dyp.scaleX=this.dyp.scaleY=1.2;
         this.dyp.addEventListener(MouseEvent.CLICK,this.diqi);
         this.dyp.buttonMode=true;
         this.dyp.useHandCursor=true;
         return this.dyp;
      }

      private function putidojuk() : Lufub {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zyb=new Lufub();
         this.zyb.setColor(11776947).setSize(16).setBold(true);
         this.zyb.setStringBuilder(new Sire().setParams(I18nKeys.wyf));
         this.zyb.filters=[new DropShadowFilter(0,0,0)];
         this.zyb.setAutoSize(TextFieldAutoSize.CENTER);
         return this.zyb;
      }

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.zyb.x=stage.stageWidth/2;
         this.zyb.y=10;
         this.dyp.x=stage.stageWidth/2-this.dyp.width/2;
         this.dyp.y=50;
         this.hyfedo.x=stage.stageWidth/2-this.hyfedo.width/2;
         this.hyfedo.y=325;
         this.pisykyr.x=stage.stageWidth/2-this.pisykyr.width/2;
         this.pisykyr.y=Gagoreni.woz;
         return;
      }

      protected function diqi(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         navigateToURL(new URLRequest(rimoce),"_blank");
         return;
      }

      protected function tyqefobu(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         navigateToURL(new URLRequest(nujisa),"_blank");
         return;
      }

      private function rybigisu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }
   }

}