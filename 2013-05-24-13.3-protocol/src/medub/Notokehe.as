package medub
{
   import hotewa.Nowuved;
   import jiha.Jopu;
   import raqu.Pobu;
   import raqu.Wolugyty;
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import sakugyt.CharacterSelectionAndNewsScreen;


   public class Notokehe extends Object
   {
      public function Notokehe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var tahymudy:Nowuved;

      public var update:Jopu;

      public var vowopuc:Pobu;

      public var bykiry:Wolugyty;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.update.dispatch();
         this.vowopuc.dispatch();
         this.bykiry.dispatch(this.qydewogy());
         return;
      }

      private function qydewogy() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Class = this.tahymudy.tutec();
         if(_loc1_==null||_loc1_==GameSprite)
         {
            _loc1_=CharacterSelectionAndNewsScreen;
         }
         return new _loc1_();
      }
   }

}