package pujo
{
   import dulywywo.Command;
   import jypuq.Pyzokipu;
   import aaa.rotmg.net.RotMGNetworkHandler;
   import aaa.rotmg.action.mapping.RotMGActionMapperAbstract;
   import sonepyc.Gutehol;
   import qucuqesif.Qemo;


   public class Pocesir extends Command
   {
      public function Pocesir() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var govizupas:Pyzokipu;

      public var server:RotMGNetworkHandler;

      public var kydy:int;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gutehol = this.govizupas.runozak(RotMGActionMapperAbstract.tihana) as Gutehol;
         _loc1_.gud=this.kydy;
         _loc1_.pakytu=Qemo.qabysu;
         this.server.sendMessage(_loc1_);
         return;
      }
   }

}