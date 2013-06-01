package ruwysepyd
{
   import qov.Kalefu;
   import nas.ErrorDialog;
   import raqu.Pobu;
   import raqu.Wolugyty;
   import wegyluke.Cowymute;
   import flash.events.Event;
   import sakugyt.CharacterSelectionAndNewsScreen;


   public class Sef extends Kalefu
   {
      public function Sef() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ErrorDialog;

      public var beba:Pobu;

      public var bykiry:Wolugyty;

      public var close:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         include(Event.COMPLETE,this.onComplete);
         this.view.ok.addOnce(this.onClose);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         diwu(Event.COMPLETE,this.onComplete);
         return;
      }

      public function onClose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.close.dispatch();
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.beba.dispatch();
         this.bykiry.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }
   }

}