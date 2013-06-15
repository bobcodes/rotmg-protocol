package zoho
{
   import hunavefeg.Vupyga;
   import hunavefeg.Hyne;
   import dyca.Mes;
   import vyso.Sehorof;
   import teticurym.Sewopacyn;
   import zugevygam.Hovogejyt;
   import pitahelel.ReskinCharacterView;
   import pitahelel.Laba;
   import pitahelel.ReskinPanel;
   import pitahelel.Cajuru;
   import fodusy.Lyheve;
   import fodusy.Javoliz;
   import fodusy.Zyn;
   import fodusy.Puv;
   import fodusy.Fihygoce;
   import fodusy.Joqepeqa;
   import ducojoryn.Zim;
   import firo.Binifyra;
   import fodusy.Hyh;


   public class Nidohosi extends Object implements Vupyga
   {
      public function Nidohosi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var context:Hyne;

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public var pomih:Sewopacyn;

      public var jyhako:Hovogejyt;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mediatorMap.map(ReskinCharacterView).lokiduf(Laba);
         this.mediatorMap.map(ReskinPanel).lokiduf(Cajuru);
         this.pomih.map(Lyheve).sakytyf(Javoliz);
         this.pomih.map(Zyn).sakytyf(Puv);
         this.pomih.map(Fihygoce).sakytyf(Joqepeqa);
         this.jyhako.map(Zim.RESKIN).titikokad(Binifyra).fymafo(Hyh);
         this.context.wumeci.pypygug(this.zofil);
         return;
      }

      private function zofil() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.getInstance(Lyheve).dispatch();
         return;
      }
   }

}