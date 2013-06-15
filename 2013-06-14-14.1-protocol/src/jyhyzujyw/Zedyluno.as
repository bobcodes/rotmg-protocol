package jyhyzujyw
{
   import taz.Command;
   import cizagamym.Boquzojul;
   import ducojoryn.Wakohiga;
   import dyca.Mes;
   import vyvomevac.EvolveDialog;


   public class Zedyluno extends Command
   {
      public function Zedyluno() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var ridecy:Boquzojul;

      public var pyhug:Wakohiga;

      public var difas:Mes;

      override public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:EvolveDialog = this.difas.getInstance(EvolveDialog);
         this.ridecy.dispatch(_loc1_);
         _loc1_.qimaky.qaraje(this.pyhug);
         return;
      }
   }

}