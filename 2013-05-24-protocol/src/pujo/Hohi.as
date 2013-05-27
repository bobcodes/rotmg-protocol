package pujo
{
   import qov.Command;
   import jypuq.Pyzokipu;
   import aaa.rotmg.net.RotMGNetworkHandler;
   import bisok.Qiwycuz;
   import sonepyc.Gutehol;
   import qucuqesif.Qemo;


   public class Hohi extends Command
   {
      public function Hohi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var kydy:uint;

      public var govizupas:Pyzokipu;

      public var server:RotMGNetworkHandler;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Gutehol = this.govizupas.runozak(Qiwycuz.tihana) as Gutehol;
         _loc1_.gud=this.kydy;
         _loc1_.pakytu=Qemo.ticavomen;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}