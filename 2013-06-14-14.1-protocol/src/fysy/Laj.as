package fysy
{
   import tytojonib.Kyjefe;
   import poho.Kyhy;
   import poho.Dywygave;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Laj extends Kyjefe
   {
      public function Laj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Caj;

      public var model:Kyhy;

      public var factory:Rehijuh;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.selected.add(this.vijywyf);
         this.vijywyf(this.model.gype());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.selected.remove(this.vijywyf);
         return;
      }

      private function vijywyf(param1:Dywygave) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<DisplayObject> = this.factory.make(param1.sybiwu);
         this.view.setItems(_loc2_);
         return;
      }
   }

}