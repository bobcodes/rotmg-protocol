package kesoji
{
   import ruwa.Account;
   import nukobi.Fozydo;
   import wegyluke.Hez;
   import nukobi.KongregateAccountDetailDialog;


   public class Vavisop extends Object
   {
      public function Vavisop() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var zefy:Fozydo;

      public var naval:Hez;

      public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.bugi())
         {
            this.naval.dispatch(new KongregateAccountDetailDialog());
         }
         else
         {
            this.zefy.kur();
         }
         return;
      }
   }

}