package bocak
{
[CLASS302]   import tysenyzy.Command;
   import zun.Fyqyna;
   import lafol.Vidales;
   import qypupet.Tuhyfutos;
   import sanijijiz.Cilym;
   import fadowu.Pepa;
   import kozaligov.Cinijyt;


   public class Zesa extends Command
   {
      public function Zesa() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pataleg:uint;

      public var vivohasu:Fyqyna;

      public var server:Vidales;

      public var model:Tuhyfutos;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Pepa = this.vivohasu.suqyz(Cilym.wime) as Pepa;
         _loc1_.negyv=this.pataleg;
         _loc1_.fybudun=Cinijyt.kyzikyw;
         this.server.sendMessage(_loc1_);
         return;
      }
   }
[/CLASS]
}