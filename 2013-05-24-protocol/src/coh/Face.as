package coh
{
   import qov.Kalefu;
   import raqu.Hujuhy;
   import povopito.Ryduwi;


   public class Face extends Kalefu
   {
      public function Face() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Dote;

      public var showToolTip:Hujuhy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cybat.add(this.jofeta);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.destroy();
         return;
      }

      private function jofeta(param1:Ryduwi) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.showToolTip.dispatch(param1);
         return;
      }
   }

}