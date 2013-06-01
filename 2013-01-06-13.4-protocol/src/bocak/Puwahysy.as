package bocak
{
[CLASS245]   import tubovetyc.Command;
   import zun.Fyqyna;
   import lafol.Vidales;
   import sanijijiz.Cilym;
   import fadowu.Pepa;
   import kozaligov.Cinijyt;


   public class Puwahysy extends Command
   {
      public function Puwahysy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var vivohasu:Fyqyna;

      public var server:Vidales;

      public var pataleg:int;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pepa = this.vivohasu.suqyz(Cilym.wime) as Pepa;
         _loc1_.negyv=this.pataleg;
         _loc1_.fybudun=Cinijyt.tahivo;
         this.server.sendMessage(_loc1_);
         return;
      }
   }
[/CLASS]
}