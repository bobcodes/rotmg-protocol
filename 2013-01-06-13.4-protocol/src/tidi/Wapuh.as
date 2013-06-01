package tidi
{
[CLASS425]   import tysenyzy.Zovisis;
   import cejyva.ErrorDialog;
   import dutes.Luzuqo;
   import dutes.Vow;
   import kirofyny.Tiqimav;
   import flash.events.Event;
   import qilarag.CharacterSelectionAndNewsScreen;


   public class Wapuh extends Zovisis
   {
      public function Wapuh() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ErrorDialog;

      public var nidaro:Luzuqo;

      public var wukulomik:Vow;

      public var close:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         jew(Event.COMPLETE,this.onComplete);
         this.view.ok.addOnce(this.pikymasa);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         mojuc(Event.COMPLETE,this.onComplete);
         return;
      }

      public function pikymasa() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.close.dispatch();
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nidaro.dispatch();
         this.wukulomik.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }
   }
[/CLASS]
}