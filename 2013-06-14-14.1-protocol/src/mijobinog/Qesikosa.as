package mijobinog
{
   import hunavefeg.Qoheqa;
   import dyca.Mes;
   import hunavefeg.Depyrew;
   import hunavefeg.Hyne;
   import wusepiboz.instanceOf;
   import flash.display.DisplayObjectContainer;
   import donaqyzas.Rabymuse;


   public class Qesikosa extends Object implements Qoheqa
   {
      public function Qesikosa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const mohabahi:String = Rabymuse.create(Qesikosa);

      private var vybility:Mes;

      private var nyti:Depyrew;

      public function extend(param1:Hyne) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vybility=param1.difas;
         this.nyti=param1.jok(this);
         param1.bowetyg(instanceOf(DisplayObjectContainer),this.vavoqize);
         return;
      }

      public function toString() : String {
         return this.mohabahi;
      }

      private function vavoqize(param1:DisplayObjectContainer) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.vybility.koky(DisplayObjectContainer))
         {
            this.nyti.bec("A contextView has already been mapped, ignoring {0}",[param1]);
         }
         else
         {
            this.nyti.debug("Mapping {0} as contextView",[param1]);
            this.vybility.map(DisplayObjectContainer).pylo(param1);
         }
         return;
      }
   }

}