package nico
{
   import qov.Kalefu;
   import fulaw.Vihekivuc;
   import fulaw.Jimi;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Bevycyza extends Kalefu
   {
      public function Bevycyza() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Cugeti;

      public var model:Vihekivuc;

      public var factory:Nucoz;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.selected.add(this.gigeni);
         this.gigeni(this.model.zega());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.selected.remove(this.gigeni);
         return;
      }

      private function gigeni(param1:Jimi) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vector.<DisplayObject> = this.factory.make(param1.socucu);
         this.view.setItems(_loc2_);
         return;
      }
   }

}