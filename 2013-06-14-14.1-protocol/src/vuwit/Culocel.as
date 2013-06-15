package vuwit
{
   import tytojonib.Kyjefe;
   import fanij.Mitat;
   import tezahusaq.Gehuwo;


   public class Culocel extends Kyjefe
   {
      public function Culocel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var hibuc:Mitat;

      public var mezyfyge:Gehuwo;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mezyfyge.add(this.tak);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mezyfyge.remove(this.tak);
         return;
      }

      private function tak() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hibuc.clear();
         return;
      }
   }

}