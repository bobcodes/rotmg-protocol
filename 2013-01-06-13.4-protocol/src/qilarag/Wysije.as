package qilarag
{
[CLASS407]   import flash.display.Sprite;
   import tinava.Dab;
   import pudev.Capitu;
   import com.company.rotmg.graphics.StackedLogoR;
   import com.company.rotmg.graphics.KabamLogo;
   import flash.text.TextFieldAutoSize;
   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import zohom.Leqy;
   import flash.events.Event;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import rymuhuduh.Cyzan;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Wysije extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wysije() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vynugezoz=this.wyt();
         this.dyqy=this.jipeni();
         this.zoq=this.fumib();
         this.giqezi=this.rafyte();
         super();
         this.close=new Dab();
         addChild(new Cyzan());
         addChild(new ScreenGraphic());
         addChild(this.vynugezoz);
         addChild(this.dyqy);
         addChild(this.zoq);
         addChild(this.giqezi);
         return;
      }

      private static const pisajiw:String = "http://www.wildshadow.com/";

      private static const zera:String = "http://www.kabam.com/";

      public var close:Dab;

      private var vynugezoz:Capitu;

      private var dyqy:StackedLogoR;

      private var zoq:KabamLogo;

      private var giqezi:Boqurot;

      private function rafyte() : Boqurot {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.giqezi=new Boqurot("Close.text",36,false);
         this.giqezi.setAutoSize(TextFieldAutoSize.CENTER);
         this.giqezi.addEventListener(MouseEvent.CLICK,this.liwi);
         return this.giqezi;
      }

      private function fumib() : KabamLogo {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zoq=new KabamLogo();
         this.zoq.scaleX=this.zoq.scaleY=1;
         this.zoq.addEventListener(MouseEvent.CLICK,this.zedalaf);
         this.zoq.buttonMode=true;
         this.zoq.useHandCursor=true;
         return this.zoq;
      }

      private function jipeni() : StackedLogoR {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dyqy=new StackedLogoR();
         this.dyqy.scaleX=this.dyqy.scaleY=1.2;
         this.dyqy.addEventListener(MouseEvent.CLICK,this.jored);
         this.dyqy.buttonMode=true;
         this.dyqy.useHandCursor=true;
         return this.dyqy;
      }

      private function wyt() : Capitu {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vynugezoz=new Capitu();
         this.vynugezoz.setColor(11776947).setSize(16).setBold(true);
         this.vynugezoz.setStringBuilder(new Zufi().setParams(Kefyfa.qyjureweg));
         this.vynugezoz.filters=[new DropShadowFilter(0,0,0)];
         this.vynugezoz.setAutoSize(TextFieldAutoSize.CENTER);
         return this.vynugezoz;
      }

      public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vynugezoz.x=stage.stageWidth/2;
         this.vynugezoz.y=10;
         this.dyqy.x=stage.stageWidth/2-this.dyqy.width/2;
         this.dyqy.y=50;
         this.zoq.x=stage.stageWidth/2-this.zoq.width/2;
         this.zoq.y=325;
         this.giqezi.x=stage.stageWidth/2-this.giqezi.width/2;
         this.giqezi.y=Leqy.wecirypoh;
         return;
      }

      protected function jored(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         navigateToURL(new URLRequest(pisajiw),"_blank");
         return;
      }

      protected function zedalaf(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         navigateToURL(new URLRequest(zera),"_blank");
         return;
      }

      private function liwi(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.close.dispatch();
         return;
      }
   }
[/CLASS]
}