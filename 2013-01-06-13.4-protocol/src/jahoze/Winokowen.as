package jahoze
{
[CLASS592]   import bikyvym.Tihoc;
   import bikyvym.Cedymynet;
   import pogefeqeh.Wahovy;
   import wufyba.Cobyjowek;
   import zajenevik.Tif;
   import zun.Vij;
   import qycopu.ReskinCharacterView;
   import qycopu.Dosyguhop;
   import qycopu.ReskinPanel;
   import qycopu.Nilu;
   import wociwa.Racalozef;
   import wociwa.Lyvykejev;
   import wociwa.Samejutac;
   import wociwa.Qukyjywo;
   import wociwa.Roharymuw;
   import wociwa.Gevet;
   import aaa.ActionMapperAbstract;
   import fadowu.Fotigy;
   import wociwa.Natabagi;


   public class Winokowen extends Object implements Tihoc
   {
      public function Winokowen() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var context:Cedymynet;

      public var viqelo:Wahovy;

      public var mediatorMap:Cobyjowek;

      public var pyv:Tif;

      public var vybaduca:Vij;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(ReskinCharacterView).sab(Dosyguhop);
         this.mediatorMap.map(ReskinPanel).sab(Nilu);
         this.pyv.map(Racalozef).paradi(Lyvykejev);
         this.pyv.map(Samejutac).paradi(Qukyjywo);
         this.pyv.map(Roharymuw).paradi(Gevet);
         this.vybaduca.map(ActionMapperAbstract.RESKIN).kiho(Fotigy).kimy(Natabagi);
         this.context.sutu.kan(this.van);
         return;
      }

      private function van() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.viqelo.getInstance(Racalozef).dispatch();
         return;
      }
   }
[/CLASS]
}