package ruf
{
[CLASS176]   import jet.Varusici;
   import zozimuk.Zuresasy;


   public class Niteho extends Object
   {
      public function Niteho() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var legefiti:Varusici;

      public var wiq:Zuresasy;

      public var dedal:Habihej;

      public var gufazyv:Hoqilo;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.legefiti.zupejime())
         {
            this.dedal.dispatch();
         }
         else
         {
            if(this.wiq.tihuk())
            {
               this.gufazyv.dispatch();
            }
         }
         return;
      }
   }
[/CLASS]
}