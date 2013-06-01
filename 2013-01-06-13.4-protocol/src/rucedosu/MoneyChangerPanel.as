package rucedosu
{
[CLASS550]   import warude.Suraniny;
   import tinava.Dab;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.GameSprite;
   import haqakel.Kefyfa;


   public class MoneyChangerPanel extends Suraniny
   {
      public function MoneyChangerPanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1,Kefyfa.wylevakaq,Kefyfa.kaligasug);
         this.bago=new Dab();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public var bago:Dab;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bago.dispatch();
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.bago.dispatch();
         }
         return;
      }
   }
[/CLASS]
}