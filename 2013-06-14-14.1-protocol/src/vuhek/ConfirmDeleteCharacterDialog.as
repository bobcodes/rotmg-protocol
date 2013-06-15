package vuhek
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import vysob.Dialog;
   import komi.Vibemod;
   import flash.events.Event;


   public class ConfirmGlobalNotificationActionteCharacterDialog extends Sprite
   {
      public function ConfirmGlobalNotificationActionteCharacterDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.GlobalNotificationActionteCharacter=new Qanyduk();
         this.cancel=new Qanyduk();
         return;
      }

      private const pomecy:String = Dialog.LEFT_BUTTON;

      private const fuwew:String = Dialog.RIGHT_BUTTON;

      public var GlobalNotificationActionteCharacter:Qanyduk;

      public var cancel:Qanyduk;

      public function kenadyb(param1:String, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Dialog = new Dialog(Vibemod.vibijeb,"",Vibemod.dysohy,Vibemod.sareco,"/GlobalNotificationActionteDialog");
         _loc3_.vubah(Vibemod.hobi,
            {
               name:param1,
               displayID:param2
            }
         );
         _loc3_.addEventListener(this.pomecy,this.onCancel);
         _loc3_.addEventListener(this.fuwew,this.onGlobalNotificationActionte);
         addChild(_loc3_);
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      private function onGlobalNotificationActionte(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.GlobalNotificationActionteCharacter.dispatch();
         return;
      }
   }

}