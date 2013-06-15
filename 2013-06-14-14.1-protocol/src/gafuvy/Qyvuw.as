package gafuvy
{
   import flash.display.Sprite;
   import pomujukir.Boqutujy;
   import pomujukir.Cirumy;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Qyvuw extends Object implements Pywafejer
   {
      public function Qyvuw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var tooltip:Sprite;

      private var rugu:Boqutujy;

      private var showToolTip:Cirumy;

      private var displayObject:DisplayObject;

      public function lubec(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.displayObject=param1;
         this.displayObject.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.displayObject.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.displayObject.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public function dygi() : DisplayObject {
         return this.displayObject;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip=param1;
         return;
      }

      public function fifelap() : Cirumy {
         return this.showToolTip;
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rugu=param1;
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.rugu;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rugu.dispatch();
         this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rugu.dispatch();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip.dispatch(this.tooltip);
         return;
      }
   }

}