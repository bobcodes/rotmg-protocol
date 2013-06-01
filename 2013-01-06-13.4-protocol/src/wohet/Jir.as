package wohet
{
[CLASS1325]   import tysenyzy.Zovisis;
   import tevyv.Taw;
   import cedakeqo.Beve;
   import kirofyny.Tiqimav;
   import com.company.assembleegameclient.appengine.SavedCharacter;


   public class Jir extends Zovisis
   {
      public function Jir() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ConfirmDeleteCharacterDialog;

      public var model:Taw;

      public var deleteCharacter:Beve;

      public var closeDialogs:Tiqimav;

      private var character:SavedCharacter;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.deleteCharacter.add(this.zare);
         this.view.cancel.add(this.madeve);
         this.character=this.model.docew();
         this.view.rike(this.character.name(),this.character.tafetes());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.deleteCharacter.remove(this.zare);
         this.view.cancel.remove(this.madeve);
         return;
      }

      private function zare() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deleteCharacter.dispatch(this.character);
         return;
      }

      private function madeve() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}