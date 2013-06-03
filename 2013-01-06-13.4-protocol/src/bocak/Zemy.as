package bocak
{
[CLASS290]   import tysenyzy.Command;
   import zun.Fyqyna;
   import aaa.NetworkHandler;
   import aaa.ActionMapperAbstract;
   import fadowu.Pepa;
   import kozaligov.Cinijyt;


   public class Zemy extends Command
   {
      public function Zemy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pataleg:uint;

      public var vivohasu:Fyqyna;

      public var server:NetworkHandler;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pepa = this.vivohasu.suqyz(ActionMapperAbstract.wime) as Pepa;
         _loc1_.negyv=this.pataleg;
         _loc1_.fybudun=Cinijyt.vityco;
         this.server.sendMessage(_loc1_);
         return;
      }
   }
[/CLASS]
}