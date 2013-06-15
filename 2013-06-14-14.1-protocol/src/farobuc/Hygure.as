package farobuc
{
   import hunavefeg.Qoheqa;
   import dyca.Mes;
   import vyso.Sehorof;
   import pune.Myvilik;
   import dabepizyb.Gut;
   import hunavefeg.Hyne;
   import vyso.Tokyhoqid;
   import dabepizyb.Tecoke;
   import dabepizyb.Nakewamyl;
   import pune.Dyhaqa;
   import donaqyzas.Rabymuse;


   public class Hygure extends Object implements Qoheqa
   {
      public function Hygure() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const mohabahi:String = Rabymuse.create(Hygure);

      private var vybility:Mes;

      private var livos:Sehorof;

      private var riceme:Myvilik;

      private var qef:Gut;

      public function extend(param1:Hyne) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vybility=param1.difas;
         this.vybility.map(Tokyhoqid).wila(Tecoke);
         this.vybility.map(Sehorof).wila(Nakewamyl);
         param1.wumeci.tad(this.tad);
         param1.wumeci.rem(this.rem);
         param1.wumeci.cybif(this.cybif);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function tad() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.livos=this.vybility.getInstance(Sehorof);
         this.qef=this.vybility.getInstance(Gut);
         if(this.vybility.koky(Myvilik))
         {
            this.riceme=this.vybility.getInstance(Myvilik);
            this.riceme.rymututug(this.livos as Dyhaqa);
         }
         return;
      }

      private function rem() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Tokyhoqid = this.vybility.getInstance(Tokyhoqid);
         _loc1_.tajec();
         if(this.vybility.koky(Myvilik))
         {
            this.riceme=this.vybility.getInstance(Myvilik);
            this.riceme.mukazuv(this.livos as Dyhaqa);
         }
         return;
      }

      private function cybif() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vybility.koky(Sehorof))
         {
            this.vybility.ricelira(Sehorof);
         }
         if(this.vybility.koky(Tokyhoqid))
         {
            this.vybility.ricelira(Tokyhoqid);
         }
         return;
      }
   }

}