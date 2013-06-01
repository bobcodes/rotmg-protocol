package kipyny
{
[CLASS528]   import dylaqezo.Vusun;
   import dage.Fakibis;
   import dutes.Luzuqo;
   import dutes.Sycanetal;
   import dutes.Vow;
   import foliverad.Popefy;
   import mywyvuryw.Kejubuveh;
   import hiraj.Nafy;
   import hiraj.Jygalikij;
   import qilarag.CharacterSelectionAndNewsScreen;


   public class Hityremob extends Object
   {
      public function Hityremob() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var player:Vusun;

      public var model:Fakibis;

      public var bejony:Luzuqo;

      public var cucec:Sycanetal;

      public var wukulomik:Vow;

      public var laruzydo:Popefy;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.bejony.dispatch();
         if(this.model.wahirupom())
         {
            this.feryvyho();
         }
         else
         {
            this.vudy();
         }
         return;
      }

      private function feryvyho() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Kejubuveh = this.model.gituroq();
         var _loc2_:Jygalikij = new Nafy(this.player.wegefog(),_loc1_.charId_);
         this.laruzydo.dispatch(_loc2_);
         return;
      }

      private function vudy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wukulomik.dispatch(new CharacterSelectionAndNewsScreen());
         return;
      }
   }
[/CLASS]
}