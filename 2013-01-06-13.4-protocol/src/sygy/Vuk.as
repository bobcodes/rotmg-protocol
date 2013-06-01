package sygy
{
[CLASS690]   import leselo.Account;
   import kirofyny.Hehuf;
   import zegacymo.WebAccountDetailDialog;
   import zegacymo.Jugec;


   public class Vuk extends Object
   {
      public function Vuk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var lyhog:Hehuf;

      public function execute() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.tuq())
         {
            this.lyhog.dispatch(new WebAccountDetailDialog());
         }
         else
         {
            this.lyhog.dispatch(new Jugec());
         }
         return;
      }
   }
[/CLASS]
}