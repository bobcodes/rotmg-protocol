package ruwysepyd
{
   import qov.Kalefu;
   import jiha.Gyveny;
   import wegyluke.Cowymute;


   public class Najidy extends Kalefu
   {
      public function Najidy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:AgeVerificationDialog;

      public var byca:Gyveny;

      public var closeDialogs:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.byh.add(this.cosab);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.byh.remove(this.cosab);
         return;
      }

      private function cosab(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.namiqij();
         }
         else
         {
            this.loqiga();
         }
         return;
      }

      private function namiqij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.byca.dispatch();
         this.closeDialogs.dispatch();
         return;
      }

      private function loqiga() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}