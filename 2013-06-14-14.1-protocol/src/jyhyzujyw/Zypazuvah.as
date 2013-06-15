package jyhyzujyw
{
   import tytojonib.Command;
   import zugevygam.Byty;
   import aaa.NetworkHandler;
   import aaa.ActionMapperAbstract;
   import firo.Penytur;
   import fypeba.Rikuko;


   public class Zypazuvah extends Command
   {
      public function Zypazuvah() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var masyvypy:uint;

      public var bufaz:Byty;

      public var server:NetworkHandler;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Penytur = this.bufaz.quseb(ActionMapperAbstract.lufugip) as Penytur;
         _loc1_.powa=this.masyvypy;
         _loc1_.ruzytaly=Rikuko.jumov;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}