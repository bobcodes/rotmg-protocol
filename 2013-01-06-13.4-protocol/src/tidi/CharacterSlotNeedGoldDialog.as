package tidi
{
[CLASS427]   import flash.display.Sprite;
   import tinava.Dab;
   import cejyva.Dialog;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class CharacterSlotNeedGoldDialog extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CharacterSlotNeedGoldDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const dyz:String = "/charSlotNeedGold";

      public const wynare:Dab = new Dab();

      public const cancel:Dab = new Dab();

      private var vit:Dialog;

      private var price:int;

      public function setPrice(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.price=param1;
         this.biw();
         this.vit.addEventListener(Dialog.LEFT_BUTTON,this.onCancel);
         this.vit.addEventListener(Dialog.RIGHT_BUTTON,this.pyl);
         return;
      }

      private function biw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vit=new Dialog(Kefyfa.fovab,"",Kefyfa.palysiqu,Kefyfa.kegyh,dyz);
         this.vit.rezynobik(Kefyfa.boququz,{price:this.price});
         addChild(this.vit);
         return;
      }

      public function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cancel.dispatch();
         return;
      }

      public function pyl(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wynare.dispatch();
         return;
      }
   }
[/CLASS]
}