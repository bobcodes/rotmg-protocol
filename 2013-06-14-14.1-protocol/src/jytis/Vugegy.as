package jytis
{
   import hunavefeg.Vupyga;
   import hunavefeg.Hyne;
   import dyca.Mes;
   import vyso.Sehorof;
   import ziru.Boluzod;
   import ziru.Bezisop;
   import ziru.Zyr;
   import ziru.Req;
   import hepiwus.Sejano;
   import hepiwus.Forugid;


   public class Vugegy extends Object implements Vupyga
   {
      public function Vugegy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var context:Hyne;

      public var difas:Mes;

      public var mediatorMap:Sehorof;

      public function configure() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.difas.map(Boluzod).fezy();
         this.difas.map(Bezisop).fezy();
         this.difas.map(Zyr).fezy();
         this.difas.map(Req).fezy();
         this.mediatorMap.map(Sejano).lokiduf(Forugid);
         return;
      }
   }

}