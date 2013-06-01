package pujo
{
   import dulywywo.Command;
   import wegyluke.Hez;
   import bisok.Cejih;
   import kyco.Nun;
   import naqo.EvolveDialog;


   public class Zabe extends Command
   {
      public function Zabe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var naval:Hez;

      public var gijokutad:Cejih;

      public var cemohoqal:Nun;

      override public function execute() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:EvolveDialog = this.cemohoqal.getInstance(EvolveDialog);
         this.naval.dispatch(_loc1_);
         _loc1_.mypog.qelusop(this.gijokutad);
         return;
      }
   }

}