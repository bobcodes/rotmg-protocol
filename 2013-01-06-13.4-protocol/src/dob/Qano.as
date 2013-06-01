package dob
{
[CLASS183]   import tysenyzy.Zovisis;
   import fek.Doq;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.geom.Rectangle;


   public class Qano extends Zovisis
   {
      public function Qano() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Beqoq;

      public var resize:Doq;

      override public function initialize() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Stage = (this.view as DisplayObject).stage;
         var _loc2_:Rectangle = new Rectangle(0,0,_loc1_.stageWidth,_loc1_.stageHeight);
         this.resize.add(this.onResize);
         this.view.resize(_loc2_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
[/CLASS]
}