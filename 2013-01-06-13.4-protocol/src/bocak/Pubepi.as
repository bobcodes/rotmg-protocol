package bocak
{
[CLASS303]   import tubovetyc.Command;
   import kirofyny.Hehuf;
   import qypupet.Pife;
   import jat.NewAbility;


   public class Pubepi extends Command
   {
      public function Pubepi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var lyhog:Hehuf;

      public var qodo:Pife;

      public var quvomi:int;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:NewAbility = new NewAbility(this.qodo.lecafis(this.quvomi));
         this.lyhog.dispatch(_loc1_);
         return;
      }
   }
[/CLASS]
}