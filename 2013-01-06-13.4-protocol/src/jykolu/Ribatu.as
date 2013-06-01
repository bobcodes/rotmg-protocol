package jykolu
{
[CLASS503]   import dutes.Sycanetal;
   import bofymid.Vyh;
   import bikyvym.Voduzak;
   import qilarag.Cote;
   import wyzoz.Racufy;


   public class Ribatu extends Object
   {
      public function Ribatu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var cucec:Sycanetal;

      public var domain:Vyh;

      public var wop:Voduzak;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.domain.nofakije())
         {
            this.vej();
         }
         else
         {
            this.zuhiliduc();
         }
         return;
      }

      private function vej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cucec.dispatch(new Cote());
         return;
      }

      private function zuhiliduc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wop.debug("bad domain, deny");
         this.cucec.dispatch(new Racufy());
         return;
      }
   }
[/CLASS]
}