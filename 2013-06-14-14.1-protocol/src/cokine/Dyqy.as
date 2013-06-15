package cokine
{
   import tytojonib.Kyjefe;
   import wenono.Cibibi;
   import com.company.assembleegameclient.util.Cokinomu;
   import flash.events.MouseEvent;


   public class Dyqy extends Kyjefe
   {
      public function Dyqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var jikamy:Cibibi;

      public var gap:Cokinomu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jikamy.addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         return;
      }

      private function honoraj(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gap.setFocus(null);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jikamy.removeEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         return;
      }
   }

}