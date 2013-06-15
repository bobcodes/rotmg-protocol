package jyhyzujyw
{
   import tytojonib.Command;
   import zugevygam.Byty;
   import dovuz.Vagogi;
   import fanij.Namejaja;
   import ducojoryn.Zim;
   import firo.Penytur;
   import fypeba.Rikuko;


   public class Zidurez extends Command
   {
      public function Zidurez() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var masyvypy:uint;

      public var bufaz:Byty;

      public var server:Vagogi;

      public var model:Namejaja;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Penytur = this.bufaz.quseb(Zim.lufugip) as Penytur;
         _loc1_.powa=this.masyvypy;
         _loc1_.ruzytaly=Rikuko.popon;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}