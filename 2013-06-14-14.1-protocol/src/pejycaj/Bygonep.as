package pejycaj
{
   import tytojonib.Kyjefe;
   import cizagamym.Lebovas;
   import aaa.NetworkHandler;
   import zugevygam.Byty;
   import micac.Ciqyl;
   import wohy.Segeqofi;
   import wahyqise.Tuco;
   import aaa.ActionMapperAbstract;
   import zukinigor.Lazapy;


   public class Bygonep extends Kyjefe
   {
      public function Bygonep() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ContinueOrQuitDialog;

      public var closeDialogs:Lebovas;

      public var gagoty:NetworkHandler;

      public var bufaz:Byty;

      public var fer:Ciqyl;

      public var lohe:Segeqofi;

      public var nuzomit:Tuco;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.quit.add(this.zejak);
         this.view.gosi.add(this.jujib);
         this.view.init(this.lohe.vegyq.pig,this.nuzomit.player.credits_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.quit.remove(this.zejak);
         this.view.gosi.remove(this.jujib);
         return;
      }

      private function jujib(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.closeDialogs.dispatch();
         var _loc2_:Lazapy = this.bufaz.quseb(ActionMapperAbstract.ENTER_ARENA) as Lazapy;
         _loc2_.currency=param1;
         this.gagoty.sendMessage(_loc2_);
         return;
      }

      private function zejak() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         this.fer.qyhowo.gsc_.escape();
         return;
      }
   }

}