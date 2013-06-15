package wenono
{
   import tytojonib.Kyjefe;
   import com.company.assembleegameclient.screens.charrects.CharacterRectList;
   import pomujukir.Kovi;
   import pusy.Hifu;
   import waryp.Letu;


   public class Fybi extends Kyjefe
   {
      public function Fybi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterRectList;

      public var hus:Kovi;

      public var qyzopo:Hifu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.newCharacter.add(this.qoc);
         this.view.buyCharacterSlot.add(this.jofigo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.newCharacter.remove(this.qoc);
         this.view.buyCharacterSlot.remove(this.jofigo);
         return;
      }

      private function qoc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hus.dispatch(new Letu());
         return;
      }

      private function jofigo(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qyzopo.dispatch(param1);
         return;
      }
   }

}