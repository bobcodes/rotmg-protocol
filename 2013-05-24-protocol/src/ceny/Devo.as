package ceny
{
   import qov.Kalefu;
   import pepyca.Fifu;


   public class Devo extends Kalefu
   {
      public function Devo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Hulocucum;

      public var model:Fifu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.setup(this.model);
         return;
      }
   }

}