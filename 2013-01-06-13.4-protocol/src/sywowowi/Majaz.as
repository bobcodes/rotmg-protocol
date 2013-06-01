package sywowowi
{
[CLASS5]   import bikyvym.Tihoc;
   import pogefeqeh.Wahovy;
   import zajenevik.Tif;
   import bup.Viqukinu;
   import natus.Hewoda;
   import koqeko.Vona;
   import koqeko.Motofud;
   import koqeko.Kevut;
   import koqeko.Zisuvo;
   import dorymypes.Zakizezu;
   import mozacyqu.Hefofiqyn;
   import mozacyqu.Cumyj;
   import mozacyqu.Jetim;
   import mozacyqu.Runotuvah;
   import mozacyqu.Pize;
   import mozacyqu.Mig;


   public class Majaz extends Object implements Tihoc
   {
      public function Majaz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var viqelo:Wahovy;

      public var pyv:Tif;

      public var startup:Viqukinu;

      public var syk:Hewoda;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqelo.map(Vona).zoru(new Motofud());
         this.viqelo.map(Kevut).dib(Zisuvo);
         this.viqelo.map(Zakizezu);
         this.startup.niw(Zakizezu,-999);
         this.pyv.map(Hefofiqyn).paradi(Cumyj);
         this.pyv.map(Jetim).paradi(Runotuvah);
         this.pyv.map(Pize).paradi(Mig);
         this.rycahoba();
         return;
      }

      private function rycahoba() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.viqelo.getInstance(Pize).dispatch();
         return;
      }
   }
[/CLASS]
}