package jeroheta
{
   import lemugo.Zifi;
   import civino.Posobew;
   import pomujukir.Wizuwub;
   import pomujukir.Kovi;
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import waryp.CharacterSelectionAndNewsScreen;


   public class Jucuwozyf extends Object
   {
      public function Jucuwozyf() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var wenuzehed:Zifi;

      public var update:Posobew;

      public var luzej:Wizuwub;

      public var hus:Kovi;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.update.dispatch();
         this.luzej.dispatch();
         this.hus.dispatch(this.tydowasu());
         return;
      }

      private function tydowasu() : Sprite {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Class = this.wenuzehed.ryginaqez();
         if(_loc1_==null||_loc1_==GameSprite)
         {
            _loc1_=CharacterSelectionAndNewsScreen;
         }
         return new _loc1_();
      }
   }

}