package ripu
{
   import ruwa.Account;
   import wegyluke.Hez;
   import mafu.WebAccountDetailDialog;
   import mafu.Zad;


   public class Gigida extends Object
   {
      public function Gigida() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.bugi())
         {
            this.naval.dispatch(new WebAccountDetailDialog());
         }
         else
         {
            this.naval.dispatch(new Zad());
         }
         return;
      }
   }

}