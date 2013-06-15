package vuhek
{
   import tytojonib.Kyjefe;
   import hirupuhel.Wygoqu;
   import jiric.Kyjaf;
   import cizagamym.Lebovas;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Vogaje extends Kyjefe
   {
      public function Vogaje() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ConfirmDeleteCharacterDialog;

      public var model:Wygoqu;

      public var deleteCharacter:Kyjaf;

      public var closeDialogs:Lebovas;

      private var character:SavedCharacter;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.deleteCharacter.add(this.qevu);
         this.view.cancel.add(this.gimenakal);
         this.character=this.model.gype();
         this.view.kenadyb(this.character.name(),this.character.kygyba());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.deleteCharacter.remove(this.qevu);
         this.view.cancel.remove(this.gimenakal);
         return;
      }

      private function qevu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deleteCharacter.dispatch(this.character);
         return;
      }

      private function gimenakal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}