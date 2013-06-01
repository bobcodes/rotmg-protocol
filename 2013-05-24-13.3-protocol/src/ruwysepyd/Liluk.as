package ruwysepyd
{
   import qov.Kalefu;
   import com.company.assembleegameclient.screens.charrects.CharacterRectList;
   import raqu.Wolugyty;
   import sasacen.Tipesok;
   import sakugyt.Cekocozah;


   public class Liluk extends Kalefu
   {
      public function Liluk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterRectList;

      public var bykiry:Wolugyty;

      public var belikedu:Tipesok;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.newCharacter.add(this.fydisul);
         this.view.buyCharacterSlot.add(this.towetut);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.newCharacter.remove(this.fydisul);
         this.view.buyCharacterSlot.remove(this.towetut);
         return;
      }

      private function fydisul() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.bykiry.dispatch(new Cekocozah());
         return;
      }

      private function towetut(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.belikedu.dispatch(param1);
         return;
      }
   }

}