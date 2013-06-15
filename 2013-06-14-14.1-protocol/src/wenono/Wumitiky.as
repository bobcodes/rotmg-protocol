package wenono
{
   import tytojonib.Kyjefe;
   import vysob.ErrorDialog;
   import pomujukir.Wizuwub;
   import pomujukir.Kovi;
   import cizagamym.Lebovas;
   import flash.events.Event;
   import waryp.CharacterSelectionAndNewsScreen;


   public class Wumitiky extends Kyjefe
   {
      public function Wumitiky() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ErrorDialog;

      public var heja:Wizuwub;

      public var hus:Kovi;

      public var close:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         hypasebu(Event.COMPLETE,this.onComplete);
         this.view.ok.addOnce(this.lyb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         fyfagoku(Event.COMPLETE,this.onComplete);
         return;
      }

      public function lyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.close.dispatch();
         return;
      }

      private function onComplete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.heja.dispatch();
         this.hus.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }
   }

}