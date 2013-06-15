package ropowoh
{
   import qymoho.Taziw;
   import mukyrosu.Qanyduk;
   import hivysif.Guzowoja;
   import waryp.Nulejufyl;
   import vizyciva.Qab;
   import flash.events.MouseEvent;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import flash.display.Shape;
   import com.company.rotmg.graphics.ScreenGraphic;


   public class Foto extends Taziw
   {
      public function Foto() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sitoze=new Qanyduk(String);
         this.back=new Qanyduk();
         this.gehivyky=this.haq();
         this.jehele=this.soza();
         this.belumak=this.bon();
         super();
         addChild(this.togipujo());
         addChild(this.gehivyky);
         addChild(new ScreenGraphic());
         addChild(this.jehele);
         return;
      }

      public var sitoze:Qanyduk;

      public var back:Qanyduk;

      private var gehivyky:Guzowoja;

      private var jehele:Nulejufyl;

      private var belumak:Guzowoja;

      private var zijodoj:Qab;

      private function wyma(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.back.dispatch();
         return;
      }

      public function vopuge(param1:Vector.<String>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zijodoj=new Qab(param1);
         this.zijodoj.y=100;
         this.zijodoj.addEventListener(Event.CHANGE,this.bijika);
         addChild(this.zijodoj);
         this.belumak.textChanged.addOnce(this.jugunipu);
         addChild(this.belumak);
         this.belumak.y=this.zijodoj.y+this.zijodoj.rubovi()/2;
         return;
      }

      private function jugunipu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zijodoj.x=800/2-(this.zijodoj.width+this.belumak.width+10)/2;
         this.belumak.x=this.zijodoj.x+this.zijodoj.width+10;
         return;
      }

      public function setSelected(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      private function bijika(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sitoze.dispatch(this.zijodoj.getValue());
         return;
      }

      private function haq() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(36).setColor(16777215);
         _loc1_.setBold(true);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.mew));
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         _loc1_.x=800/2-_loc1_.width/2;
         _loc1_.y=16;
         return _loc1_;
      }

      private function soza() : Nulejufyl {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nulejufyl = null;
         _loc1_=new Nulejufyl(Vibemod.cacuta,36,false);
         _loc1_.setAutoSize(TextFieldAutoSize.CENTER);
         _loc1_.setVerticalAlign(Guzowoja.MIDDLE);
         _loc1_.addEventListener(MouseEvent.CLICK,this.wyma);
         _loc1_.x=400;
         _loc1_.y=550;
         return _loc1_;
      }

      private function bon() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = new Guzowoja().setSize(16).setColor(11776947).setBold(true);
         _loc1_.setVerticalAlign(Guzowoja.MIDDLE);
         _loc1_.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.fyve));
         return _loc1_;
      }

      private function togipujo() : Shape {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         if((this.zijodoj)&&(contains(this.zijodoj)))
         {
            removeChild(this.zijodoj);
         }
         return;
      }
   }

}