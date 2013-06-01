package jykolu
{
[CLASS424]   import dylaqezo.Cupap;
   import rysuho.Zubusuge;
   import dutes.Luzuqo;
   import dutes.Vow;
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.GameSprite;
   import qilarag.CharacterSelectionAndNewsScreen;


   public class Wygymat extends Object
   {
      public function Wygymat() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qobose:Cupap;

      public var update:Zubusuge;

      public var bejony:Luzuqo;

      public var wukulomik:Vow;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.update.dispatch();
         this.bejony.dispatch();
         this.wukulomik.dispatch(this.dajiwery());
         return;
      }

      private function dajiwery() : Sprite {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Class = this.qobose.qid();
         if(_loc1_==null||_loc1_==GameSprite)
         {
            _loc1_=CharacterSelectionAndNewsScreen;
         }
         return new _loc1_();
      }
   }
[/CLASS]
}