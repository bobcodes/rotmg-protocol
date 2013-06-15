package wenono
{
   import tytojonib.Kyjefe;
   import civino.Facowy;
   import cizagamym.Lebovas;


   public class Wylany extends Kyjefe
   {
      public function Wylany() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:AgeVerificationDialog;

      public var menub:Facowy;

      public var closeDialogs:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.riz.add(this.bori);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.riz.remove(this.bori);
         return;
      }

      private function bori(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.rab();
         }
         else
         {
            this.kyral();
         }
         return;
      }

      private function rab() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.menub.dispatch();
         this.closeDialogs.dispatch();
         return;
      }

      private function kyral() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}