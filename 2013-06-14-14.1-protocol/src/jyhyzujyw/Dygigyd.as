package jyhyzujyw
{
   import taz.Command;
   import zugevygam.Byty;
   import dovuz.Vagogi;
   import ducojoryn.Zim;
   import firo.Penytur;
   import fypeba.Rikuko;


   public class Dygigyd extends Command
   {
      public function Dygigyd() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var bufaz:Byty;

      public var server:Vagogi;

      public var masyvypy:int;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Penytur = this.bufaz.quseb(Zim.lufugip) as Penytur;
         _loc1_.powa=this.masyvypy;
         _loc1_.ruzytaly=Rikuko.fyr;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}