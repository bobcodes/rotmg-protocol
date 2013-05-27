package difu
{
   import qov.Kalefu;
   import kagijawil.Cibiqot;
   import wegyluke.Cowymute;
   import juw.Vajewuve;
   import zubamyki.Pagac;


   public class Nafatawy extends Kalefu
   {
      public function Nafatawy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:BeginnersPackageOfferDialog;

      public var model:Cibiqot;

      public var tusagecu:Cowymute;

      public var hivafirel:Vajewuve;

      public var kag:Pagac;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.hosaj);
         this.view.close.add(this.onClose);
         this.view.babu(this.model.honedu());
         this.view.dyhokopoq();
         this.kag.dispatch(false);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.remove(this.hosaj);
         this.view.close.remove(this.onClose);
         this.kag.dispatch(true);
         return;
      }

      private function hosaj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tusagecu.dispatch();
         this.hivafirel.dispatch();
         return;
      }

      private function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }
   }

}