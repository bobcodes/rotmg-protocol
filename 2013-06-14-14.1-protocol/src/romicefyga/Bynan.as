package romicefyga
{
   import hunavefeg.Qoheqa;
   import cigo.Fipyqoleb;
   import dyca.Mes;
   import pune.Myvilik;
   import hunavefeg.Hyne;
   import cigo.Zytufyvo;
   import donaqyzas.Rabymuse;


   public class Bynan extends Object implements Qoheqa
   {
      public function Bynan() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var gaqofizov:Fipyqoleb;

      private const mohabahi:String = Rabymuse.create(Bynan);

      private var vybility:Mes;

      private var riceme:Myvilik;

      public function extend(param1:Hyne) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vybility=param1.difas;
         gaqofizov=(gaqofizov)||(new Fipyqoleb());
         this.vybility.map(Fipyqoleb).pylo(gaqofizov);
         this.vybility.map(Myvilik).wila(Zytufyvo);
         param1.wumeci.cityb(this.cityb);
         param1.wumeci.cybif(this.cybif);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function cityb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.riceme=this.vybility.getInstance(Myvilik);
         return;
      }

      private function cybif() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.riceme.qalah();
         this.vybility.ricelira(Myvilik);
         this.vybility.ricelira(Fipyqoleb);
         return;
      }
   }

}