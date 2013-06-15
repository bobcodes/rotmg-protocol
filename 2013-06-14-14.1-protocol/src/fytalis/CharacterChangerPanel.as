package fytalis
{
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.game.GameSprite;
   import komi.Vibemod;


   public class CharacterChangerPanel extends Pyresir
   {
      public function CharacterChangerPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1,Vibemod.mytuci,Vibemod.tyko);
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
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==RotmgParameters.data_.interact&&stage.focus==null)
         {
            gs_.closed.dispatch();
         }
         return;
      }
   }

}