package pobebetup
{
   import hunavefeg.Vupyga;
   import hunavefeg.Hyne;
   import dyca.Mes;
   import teticurym.Sewopacyn;
   import vyso.Sehorof;
   import pak.Jote;
   import pak.Lasos;
   import pak.Nanahize;
   import com.company.assembleegameclient.game.GameSprite;
   import tena.Comybube;
   import mukyrosu.Qanyduk;


   public class Jejenaq extends Object implements Vupyga
   {
      public function Jejenaq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Hyne;

      public var difas:Mes;

      public var pomih:Sewopacyn;

      public var mediatorMap:Sehorof;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Jote).fezy();
         this.pomih.map(Lasos).sakytyf(Nanahize);
         this.mediatorMap.map(GameSprite).lokiduf(Comybube);
         this.context.wumeci.pypygug(this.init);
         return;
      }

      private function init() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Qanyduk(this.difas.getInstance(Lasos)).dispatch();
         return;
      }
   }

}