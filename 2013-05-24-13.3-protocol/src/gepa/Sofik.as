package gepa
{
   import flash.display.Sprite;
   import coh.Biba;
   import movimet.Lufub;
   import coh.Guwyza;
   import tulunyno.Hugyqufyq;
   import coh.Riqi;
   import nec.Sire;
   import ruwysepyd.Junefolef;
   import qucuqesif.Qemo;
   import qucuqesif.Rasoqymi;
   import zoroc.Bezuco;


   public class Sofik extends Sprite
   {
      public function Sofik() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.segaw=new Hugyqufyq(Bezuco);
         super();
         return;
      }

      private const background:Biba = Rasoqymi.nyrojan(Qemo.rufub,Qemo.jafosig);

      private const gotinip:Lufub = Rasoqymi.tefyko(16777215,18,true);

      private const pewacuta:Guwyza = Rasoqymi.zyfizotyb();

      public var segaw:Hugyqufyq;

      private const pisykyr:Riqi = Rasoqymi.veruno(Qemo.rufub);

      public function init() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vivi();
         this.qohinep();
         this.gotinip.setStringBuilder(new Sire().setParams("Available Pets"));
         this.pewacuta.buttonOne.sonydiw("SELECT PET");
         this.keqej();
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         addChild(this.background);
         addChild(this.gotinip);
         addChild(this.pewacuta);
         addChild(this.pisykyr);
         return;
      }

      private function keqej() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.x=(stage.width-this.width)/2;
         this.y=(stage.height-this.height)/2;
         return;
      }

      private function vivi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.gotinip.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gotinip.x=(Qemo.rufub-this.gotinip.width)/2;
         return;
      }
   }

}