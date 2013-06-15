package kabam.rotmg.assets
{
   import hunavefeg.Vupyga;
   import dyca.Mes;
   import kabam.rotmg.assets.services.Bytedif;
   import kabam.rotmg.assets.services.Zog;


   public class Toposyba extends Object implements Vupyga
   {
      public function Toposyba() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var difas:Mes;

      public function configure() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.difas.map(Bytedif).fezy();
         this.difas.map(Zog).fezy();
         return;
      }
   }

}