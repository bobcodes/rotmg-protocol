package tekoh
{
   import flash.display.Sprite;
   import raqu.Goq;
   import raqu.Hujuhy;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Zukot extends Object implements Gemanyq
   {
      public function Zukot() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var tooltip:Sprite;

      private var jezofykaj:Goq;

      private var showToolTip:Hujuhy;

      private var displayObject:DisplayObject;

      public function kol(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.displayObject=param1;
         this.displayObject.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.displayObject.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.displayObject.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public function ruqyvus() : DisplayObject {
         return this.displayObject;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip=param1;
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.showToolTip;
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jezofykaj=param1;
         return;
      }

      public function wab() : Goq {
         return this.jezofykaj;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jezofykaj.dispatch();
         this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jezofykaj.dispatch();
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