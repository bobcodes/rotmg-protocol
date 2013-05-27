package gepa
{
   import nas.Facuca;
   import tulunyno.Hugyqufyq;
   import coh.Negu;
   import coh.Biba;
   import movimet.Lufub;
   import coh.PetFuser;
   import coh.Riqi;
   import coh.FusionStrength;
   import zoroc.Taqosohuf;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import qucuqesif.Venepono;
   import zoroc.Cikyzigit;
   import qucuqesif.Qemo;
   import ruwysepyd.Junefolef;
   import qucuqesif.Rasoqymi;


   public class Mabo extends Kes implements Facuca
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Mabo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.pewacuta.siperu.addOnce(this.ziviqu);
         return;
      }

      private static const nipaj:Hugyqufyq = new Hugyqufyq();

      public const pewacuta:Negu = Rasoqymi.qerudug(I18nKeys.fymupil,Qemo.datotuga-39);

      private const background:Biba = Rasoqymi.jajagu();

      private const gotinip:Lufub = Rasoqymi.riguwyn(11776947,18,true);

      private const hynim:Lufub = Rasoqymi.nury();

      private const hovecip:PetFuser = Rasoqymi.bawuvoda();

      private const pisykyr:Riqi = Rasoqymi.veruno(Qemo.rufub);

      private const rezedage:FusionStrength = Rasoqymi.hahavap();

      public const closed:Hugyqufyq = new Hugyqufyq();

      public var sozy:Hugyqufyq;

      public var huvi:Hugyqufyq;

      public var fiwabivy:Hugyqufyq;

      public function init(param1:Taqosohuf) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gotinip.setStringBuilder(new Sire().setParams(I18nKeys.gogumidim));
         this.sozy=this.hovecip.sozy;
         this.huvi=this.pewacuta.vuso;
         this.fiwabivy=this.pewacuta.qeq;
         this.pewacuta.tyreqar(!param1.donekecip());
         this.pewacuta.setPrefix(param1.donekecip()?I18nKeys.fymupil:I18nKeys.rucoqi);
         if(param1.donekecip())
         {
            this.pewacuta.jogojoti(Venepono.banopu(Cikyzigit.tawyt(param1.puda.morezo())));
            this.pewacuta.vaqipeca(Venepono.tyzogyd(Cikyzigit.tawyt(param1.puda.morezo())));
         }
         this.pisykyr.siperu.add(this.onClose);
         this.vivi();
         this.qohinep();
         this.cenezyr();
         return;
      }

      private function ziviqu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         nipaj.dispatch();
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pewacuta.soqifok.remove(this.peniryreh);
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         addChild(this.background);
         addChild(this.gotinip);
         addChild(this.hynim);
         addChild(this.pewacuta);
         addChild(this.hovecip);
         addChild(this.rezedage);
         addChild(this.pisykyr);
         return;
      }

      private function cenezyr() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         keqej();
         this.ped();
         return;
      }

      private function ped() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hovecip.x=Math.round((Qemo.rufub-this.hovecip.width)*0.5);
         return;
      }

      private function vivi() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Junefolef = new Junefolef();
         _loc1_.push(this.gotinip.textChanged);
         _loc1_.push(this.hynim.textChanged);
         _loc1_.complete.addOnce(this.motiheh);
         this.pewacuta.soqifok.add(this.peniryreh);
         return;
      }

      private function motiheh() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gotinip.y=5;
         this.gotinip.x=(Qemo.rufub-this.gotinip.width)*0.5;
         this.hynim.x=(Qemo.rufub-this.hynim.width)*0.5;
         return;
      }

      private function peniryreh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pewacuta.x=(Qemo.rufub-this.pewacuta.width)/2;
         return;
      }

      private function onClose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closed.dispatch();
         return;
      }

      public function polojubu() : Hugyqufyq {
         return nipaj;
      }
   }

}