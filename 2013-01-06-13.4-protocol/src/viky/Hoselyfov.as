package viky
{
[CLASS1119]   import flash.display.Sprite;
   import dutes.Soz;
   import dutes.Zevazogo;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.events.Event;


   public class Hoselyfov extends Object implements Wihury
   {
      public function Hoselyfov() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var tooltip:Sprite;

      private var nehezoqu:Soz;

      private var showToolTip:Zevazogo;

      private var displayObject:DisplayObject;

      public function mosajo(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.displayObject=param1;
         this.displayObject.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.displayObject.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.displayObject.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public function sohezav() : DisplayObject {
         return this.displayObject;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip=param1;
         return;
      }

      public function gorycici() : Zevazogo {
         return this.showToolTip;
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nehezoqu=param1;
         return;
      }

      public function kodyqigiv() : Soz {
         return this.nehezoqu;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nehezoqu.dispatch();
         this.displayObject.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.displayObject.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         this.displayObject.removeEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nehezoqu.dispatch();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip.dispatch(this.tooltip);
         return;
      }
   }
[/CLASS]
}