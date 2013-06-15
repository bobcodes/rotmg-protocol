package kofaz
{
   import fytalis.Pyresir;
   import mukyrosu.Qanyduk;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.GameSprite;
   import komi.Vibemod;


   public class MoneyChangerPanel extends Pyresir
   {
      public function MoneyChangerPanel(param1:GameSprite) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1,Vibemod.pyk,Vibemod.cywefu);
         this.roke=new Qanyduk();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var roke:Qanyduk;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.roke.dispatch();
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.roke.dispatch();
         }
         return;
      }
   }

}