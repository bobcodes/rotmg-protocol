package kimejakim
{
   import qov.Kalefu;
   import mupuzyf.Pacucir;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.geom.Rectangle;


   public class Vugakija extends Kalefu
   {
      public function Vugakija() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Tijuj;

      public var resize:Pacucir;

      override public function initialize() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Stage = (this.view as DisplayObject).stage;
         var _loc2_:Rectangle = new Rectangle(0,0,_loc1_.stageWidth,_loc1_.stageHeight);
         this.resize.add(this.onResize);
         this.view.resize(_loc2_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.resize.remove(this.onResize);
         return;
      }

      private function onResize(param1:Rectangle) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.resize(param1);
         return;
      }
   }

}