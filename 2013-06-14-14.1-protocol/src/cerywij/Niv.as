package cerywij
{
   import tytojonib.Kyjefe;
   import flash.events.MouseEvent;


   public class Niv extends Kyjefe
   {
      public function Niv() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Rozit;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pyhajev.add(this.onMouseOut);
         this.view.jacafav.add(this.onMouseOver);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.pyhajev.remove(this.onMouseOut);
         this.view.jacafav.remove(this.onMouseOver);
         this.view.jiqoretyj();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.heneved();
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.jiqoretyj();
         return;
      }
   }

}