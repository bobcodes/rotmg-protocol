package mipiqevul
{
   import qov.Kalefu;
   import cicaqyp.Qejopahy;
   import fisidij.Hafon;
   import wegyluke.Cowymute;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Ben extends Kalefu
   {
      public function Ben() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ConfirmDeleteCharacterDialog;

      public var model:Qejopahy;

      public var deleteCharacter:Hafon;

      public var closeDialogs:Cowymute;

      private var character:SavedCharacter;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.deleteCharacter.add(this.kibonuw);
         this.view.cancel.add(this.tusagecu);
         this.character=this.model.zega();
         this.view.sonydiw(this.character.name(),this.character.lacop());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.deleteCharacter.remove(this.kibonuw);
         this.view.cancel.remove(this.tusagecu);
         return;
      }

      private function kibonuw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deleteCharacter.dispatch(this.character);
         return;
      }

      private function tusagecu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }

}