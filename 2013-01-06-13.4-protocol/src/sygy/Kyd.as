package sygy
{
[CLASS700]   import leselo.Account;
   import dutes.Luzuqo;
   import dutes.Vow;
   import dylaqezo.Cupap;
   import zozimuk.Tukejyp;
   import qypupet.Tuhyfutos;
   import syfuqycy.Gyz;
   import flash.display.Sprite;
   import qilarag.CharacterSelectionAndNewsScreen;


   public class Kyd extends Object
   {
      public function Kyd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var bejony:Luzuqo;

      public var wukulomik:Vow;

      public var qobose:Cupap;

      public var huwumepe:Tukejyp;

      public var lycufasoc:Tuhyfutos;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.clear();
         this.bejony.dispatch();
         this.lycufasoc.cidutiwes();
         this.huwumepe.gegyco.addOnce(this.lad);
         this.huwumepe.start();
         return;
      }

      private function lad(param1:Gyz, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.wukulomik.dispatch(this.gah());
         return;
      }

      private function gah() : Sprite {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return new this.qobose.qid()||CharacterSelectionAndNewsScreen();
      }
   }
[/CLASS]
}