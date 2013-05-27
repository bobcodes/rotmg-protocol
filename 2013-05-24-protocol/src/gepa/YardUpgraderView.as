package gepa
{
   import flash.display.Sprite;
   import coh.Biba;
   import movimet.Lufub;
   import coh.Negu;
   import coh.Riqi;
   import flash.display.DisplayObject;
   import tulunyno.Hugyqufyq;
   import zoroc.Rycezedi;
   import nec.Sire;
   import qucuqesif.Qemo;
   import flash.text.TextFormatAlign;
   import ruwysepyd.Junefolef;
   import qucuqesif.Rasoqymi;


   public class YardUpgraderView extends Sprite
   {
      public function YardUpgraderView() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zarenyd=Hihesaqoq;
         super();
         return;
      }

      private var zarenyd:Class;

      private const background:Biba = Rasoqymi.juzi(Qemo.rufub,392);

      private const gotinip:Lufub = Rasoqymi.tefyko(16777215,18,true);

      private const gebuded:Lufub = Rasoqymi.tefyko(11776947,13,false);

      private const sufo:Lufub = Rasoqymi.tefyko(16777103,16,true);

      private const pewacuta:Negu = Rasoqymi.qerudug("YardUpgraderView.upgrade",357);

      private const pisykyr:Riqi = Rasoqymi.veruno(Qemo.rufub);

      private const dyzasoq:DisplayObject = new this.zarenyd();

      private const ruhac:Coruvasy = new Coruvasy();

      public const closed:Hugyqufyq = new Hugyqufyq();

      public var fiwabivy:Hugyqufyq;

      public var huvi:Hugyqufyq;

      private var qocuseho:Rycezedi;

      public function init(param1:Rycezedi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qocuseho=param1;
         this.pisykyr.siperu.add(this.pomuwok);
         this.fimory();
         this.roper();
         this.vivi();
         this.qohinep();
         this.cenezyr();
         return;
      }

      private function fimory() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fiwabivy=this.pewacuta.qeq;
         this.huvi=this.pewacuta.vuso;
         this.pewacuta.vaqipeca(this.qocuseho.disyqeper);
         this.pewacuta.jogojoti(this.qocuseho.pujoda);
         return;
      }

      private function roper() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gotinip.setStringBuilder(new Sire().setParams("YardUpgraderView.title"));
         this.sufo.setStringBuilder(new Sire().setParams(this.hiqo(this.qocuseho.fute)));
         this.gebuded.setStringBuilder(new Sire().setParams("YardUpgraderView.info"));
         this.gebuded.setTextWidth(Qemo.rufub-40).setWordWrap(true).setHorizontalAlign(TextFormatAlign.CENTER);
         this.ruhac.qynycufo("YardUpgraderView.currentMax",this.hiqo(this.qocuseho.juzyjy));
         return;
      }

      private function hiqo(param1:String) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return "{"+param1+"}";
      }

      private function pomuwok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closed.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pewacuta.soqifok.remove(this.peniryreh);
         return;
      }

      public function banuv(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pewacuta.jogojoti(param1);
         return;
      }

      public function fobec(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pewacuta.vaqipeca(param1);
         return;
      }

      private function duk(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pisykyr.disabled=param1;
         this.pewacuta.tyreqar(param1);
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dyzasoq.y=31;
         addChild(this.background);
         addChild(this.gotinip);
         addChild(this.sufo);
         addChild(this.gebuded);
         addChild(this.pewacuta);
         addChild(this.pisykyr);
         addChild(this.dyzasoq);
         addChild(this.ruhac);
         return;
      }

      private function cenezyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.keqej();
         this.dyzasoq.y=30;
         this.ruhac.x=11;
         this.ruhac.y=300;
         return;
      }

      private function keqej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.x=(stage.stageWidth-this.width)*0.5;
         this.y=(stage.stageHeight-this.height)*0.5;
         return;
      }

      private function vivi() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.gotinip.textChanged);
         _loc1_.push(this.gebuded.textChanged);
         _loc1_.push(this.sufo.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         this.pewacuta.soqifok.add(this.peniryreh);
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gotinip.x=(Qemo.rufub-this.gotinip.width)*0.5;
         this.gebuded.x=(Qemo.rufub-this.gebuded.width)*0.5;
         this.sufo.x=(Qemo.rufub-this.sufo.width)*0.5;
         this.gotinip.y=20;
         this.gebuded.y=229;
         this.sufo.y=269;
         return;
      }

      private function peniryreh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pewacuta.x=(Qemo.rufub-this.pewacuta.width)/2;
         return;
      }
   }

}