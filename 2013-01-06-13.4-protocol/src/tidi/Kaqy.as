package tidi
{
[CLASS419]   import tysenyzy.Zovisis;
   import com.company.assembleegameclient.screens.charrects.CharacterRectList;
   import dutes.Vow;
   import nylos.Ganujah;
   import qilarag.Gufaw;


   public class Kaqy extends Zovisis
   {
      public function Kaqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterRectList;

      public var wukulomik:Vow;

      public var netapavu:Ganujah;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.newCharacter.add(this.dybap);
         this.view.buyCharacterSlot.add(this.cezog);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.newCharacter.remove(this.dybap);
         this.view.buyCharacterSlot.remove(this.cezog);
         return;
      }

      private function dybap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wukulomik.dispatch(new Gufaw());
         return;
      }

      private function cezog(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.netapavu.dispatch(param1);
         return;
      }
   }
[/CLASS]
}