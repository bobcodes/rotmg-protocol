package ripu
{
   import aaa.rotmg.account.Account;
   import raqu.Pobu;
   import raqu.Wolugyty;
   import hotewa.Nowuved;
   import zokece.Zokyfymus;
   import zoroc.Gecezyw;
   import gag.Fijarih;
   import flash.display.Sprite;
   import sakugyt.CharacterSelectionAndNewsScreen;


   public class Buqy extends Object
   {
      public function Buqy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var vowopuc:Pobu;

      public var bykiry:Wolugyty;

      public var tahymudy:Nowuved;

      public var jagociwu:Zokyfymus;

      public var duqa:Gecezyw;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.account.clear();
         this.vowopuc.dispatch();
         this.duqa.hufezyv();
         this.jagociwu.davifuju.addOnce(this.qet);
         this.jagociwu.start();
         return;
      }

      private function qet(param1:Fijarih, param2:Boolean, param3:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.bykiry.dispatch(this.difecafe());
         return;
      }

      private function difecafe() : Sprite {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return new this.tahymudy.tutec()||CharacterSelectionAndNewsScreen();
      }
   }

}