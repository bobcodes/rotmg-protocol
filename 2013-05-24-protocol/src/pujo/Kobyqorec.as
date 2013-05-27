package pujo
{
   import qov.Command;
   import jypuq.Pyzokipu;
   import aaa.rotmg.net.RotMGNetworkHandler;
   import zoroc.Gecezyw;
   import bisok.Qiwycuz;
   import sonepyc.Gutehol;
   import qucuqesif.Qemo;


   public class Kobyqorec extends Command
   {
      public function Kobyqorec() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var kydy:uint;

      public var govizupas:Pyzokipu;

      public var server:RotMGNetworkHandler;

      public var model:Gecezyw;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Gutehol = this.govizupas.runozak(Qiwycuz.tihana) as Gutehol;
         _loc1_.gud=this.kydy;
         _loc1_.pakytu=Qemo.fole;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}