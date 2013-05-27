package fiqol
{
   import ruwa.Hytezod;
   import dopumitud.Gilapik;
   import gag.Gawu;
   import kagijawil.Cibiqot;
   import kynusa.Rejy;


   public class Geco extends Object
   {
      public function Geco() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Hytezod;

      public var zoritu:Gilapik;

      public var rurusedi:Gawu;

      public var model:Cibiqot;

      public var init:Rejy;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rurusedi.add(this.zoritu);
         this.zoritu.start();
         this.model.venum();
         this.init.dispatch();
         return;
      }
   }

}