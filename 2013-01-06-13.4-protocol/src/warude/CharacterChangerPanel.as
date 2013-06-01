package warude
{
[CLASS1674]   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.GameSprite;
   import haqakel.Kefyfa;


   public class CharacterChangerPanel extends Suraniny
   {
      public function CharacterChangerPanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1,Kefyfa.qusufiges,Kefyfa.zusade);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         gs_.closed.dispatch();
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            gs_.closed.dispatch();
         }
         return;
      }
   }
[/CLASS]
}