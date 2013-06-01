package kysy
{
   import vahejo.Tetywybil;
   import tulunyno.Hugyqufyq;
   import movimet.Lufub;
   import sakugyt.Tiqigawul;
   import jesohaw.Hefahad;
   import flash.events.MouseEvent;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.display.Shape;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Ducuqa extends Tetywybil
   {
      public function Ducuqa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rimuq=new Hugyqufyq(String);
         this.back=new Hugyqufyq();
         this.zaba=this.ladifol();
         this.hyky=this.huvesyl();
         this.wovokag=this.hopeweli();
         super();
         addChild(this.sagibuwik());
         addChild(this.zaba);
         addChild(new ScreenGraphic());
         addChild(this.hyky);
         return;
      }

      public var rimuq:Hugyqufyq;

      public var back:Hugyqufyq;

      private var zaba:Lufub;

      private var hyky:Tiqigawul;

      private var wovokag:Lufub;

      private var raqur:Hefahad;

      private function dega(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.back.dispatch();
         return;
      }

      public function busileb(param1:Vector.<String>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.raqur=new Hefahad(param1);
         this.raqur.y=100;
         this.raqur.addEventListener(Event.CHANGE,this.gehira);
         addChild(this.raqur);
         this.wovokag.textChanged.addOnce(this.mydi);
         addChild(this.wovokag);
         this.wovokag.y=this.raqur.y+this.raqur.sopo()/2;
         return;
      }

      private function mydi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.raqur.x=800/2-(this.raqur.width+this.wovokag.width+10)/2;
         this.wovokag.x=this.raqur.x+this.raqur.width+10;
         return;
      }

      public function setSelected(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      private function gehira(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rimuq.dispatch(this.raqur.getValue());
         return;
      }

      private function ladifol() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setSize(36).setColor(16777215);
         _loc1_.setBold(true);
         _loc1_.setStringBuilder(new Sire().setParams(I18nKeys.zabab));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.x=800/2-_loc1_.width/2;
         _loc1_.y=16;
         return _loc1_;
      }

      private function huvesyl() : Tiqigawul {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tiqigawul = null;
         _loc1_=new Tiqigawul(I18nKeys.qegejubol,36,false);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.setVerticalAlign(Lufub.MIDDLE);
         _loc1_.addEventListener(MouseEvent.CLICK,this.dega);
         _loc1_.x=400;
         _loc1_.y=550;
         return _loc1_;
      }

      private function hopeweli() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = new Lufub().setSize(16).setColor(11776947).setBold(true);
         _loc1_.setVerticalAlign(Lufub.MIDDLE);
         _loc1_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         _loc1_.setStringBuilder(new Sire().setParams(I18nKeys.rymojumi));
         return _loc1_;
      }

      private function sagibuwik() : Shape {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Shape = new Shape();
         _loc1_.graphics.lineStyle(1,6184542);
         _loc1_.graphics.moveTo(0,70);
         _loc1_.graphics.lineTo(800,70);
         _loc1_.graphics.lineStyle();
         return _loc1_;
      }

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.raqur)&&(contains(this.raqur)))
         {
            removeChild(this.raqur);
         }
         return;
      }
   }

}