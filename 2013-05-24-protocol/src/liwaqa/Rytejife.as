package liwaqa
{
   import qov.Kalefu;
   import zokece.Zokyfymus;
   import wegyluke.Cowymute;
   import kynusa.Kytado;


   public class Rytejife extends Kalefu
   {
      public function Rytejife() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var jagociwu:Zokyfymus;

      public var view:PackageOfferDialog;

      public var kezubydur:Cowymute;

      public var vysumy:Kytado;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.hosaj);
         this.view.close.add(this.onClose);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.close.remove(this.onClose);
         this.view.close.remove(this.hosaj);
         this.view.destroy();
         return;
      }

      private function hosaj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kezubydur.dispatch();
         this.vysumy.dispatch(this.view.gynalek());
         return;
      }

      private function onClose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kezubydur.dispatch();
         return;
      }
   }

}