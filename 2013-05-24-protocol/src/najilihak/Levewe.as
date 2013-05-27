package najilihak
{
   import fulaw.Dasin;
   import jypuq.Pyzokipu;
   import aaa.rotmg.net.RotMGNetworkHandler;
   import bisok.Qiwycuz;
   import sonepyc.Symukytu;


   public class Levewe extends Object
   {
      public function Levewe() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var skin:Dasin;

      public var govizupas:Pyzokipu;

      public var server:RotMGNetworkHandler;

      public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Symukytu = this.govizupas.runozak(Qiwycuz.RESKIN) as Symukytu;
         _loc1_.skinID=this.skin.id;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}