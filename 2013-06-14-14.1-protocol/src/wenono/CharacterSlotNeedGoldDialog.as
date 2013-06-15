package wenono
{
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import vysob.Dialog;
   import komi.Vibemod;
   import flash.events.Event;


   public class CharacterSlotNeedGoldDialog extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function CharacterSlotNeedGoldDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const mymocuf:String = "/charSlotNeedGold";

      public const vikedis:Qanyduk = new Qanyduk();

      public const cancel:Qanyduk = new Qanyduk();

      private var pevojal:Dialog;

      private var price:int;

      public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.price=param1;
         this.qogirahi();
         this.pevojal.addEventListener(Dialog.LEFT_BUTTON,this.onCancel);
         this.pevojal.addEventListener(Dialog.RIGHT_BUTTON,this.tozum);
         return;
      }

      private function qogirahi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pevojal=new Dialog(Vibemod.gavu,"",Vibemod.diqysyk,Vibemod.nebequ,mymocuf);
         this.pevojal.vubah(Vibemod.zoq,{price:this.price});
         addChild(this.pevojal);
         return;
      }

      public function onCancel(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cancel.dispatch();
         return;
      }

      public function tozum(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vikedis.dispatch();
         return;
      }
   }

}