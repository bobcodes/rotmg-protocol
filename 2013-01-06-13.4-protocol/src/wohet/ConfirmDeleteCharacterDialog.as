package wohet
{
[CLASS1043]   import flash.display.Sprite;
   import tinava.Dab;
   import cejyva.Dialog;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class ConfirmDeleteCharacterDialog extends Sprite
   {
      public function ConfirmDeleteCharacterDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.deleteCharacter=new Dab();
         this.cancel=new Dab();
         return;
      }

      private const wyvaryto:String = Dialog.LEFT_BUTTON;

      private const huc:String = Dialog.RIGHT_BUTTON;

      public var deleteCharacter:Dab;

      public var cancel:Dab;

      public function rike(param1:String, param2:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Dialog = new Dialog(Kefyfa.nuzuqaz,"",Kefyfa.rojugo,Kefyfa.duvecubup,"/deleteDialog");
         _loc3_.rezynobik(Kefyfa.sow,
            {
               name:param1,
               displayID:param2
            }
         );
         _loc3_.addEventListener(this.wyvaryto,this.onCancel);
         _loc3_.addEventListener(this.huc,this.onDelete);
         addChild(_loc3_);
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      private function onDelete(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.deleteCharacter.dispatch();
         return;
      }
   }
[/CLASS]
}