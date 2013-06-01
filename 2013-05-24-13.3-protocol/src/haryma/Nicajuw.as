package haryma
{
   import qov.Kalefu;
   import ruwysepyd.Hepihipi;
   import com.company.assembleegameclient.util.Votif;
   import flash.events.MouseEvent;


   public class Nicajuw extends Kalefu
   {
      public function Nicajuw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var paqe:Hepihipi;

      public var tuleva:Votif;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paqe.addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         return;
      }

      private function gomivy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuleva.setFocus(null);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.paqe.removeEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         return;
      }
   }

}