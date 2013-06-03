package sygy
{
[CLASS704]   import leselo.Account;
   import aaa.RotmgAccount;


   public class Hywakywym extends Object
   {
      public function Hywakywym() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var tuboj:XML;

      public var account:Account;

      public function execute() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         var _loc1_:RotmgAccount = this.account as RotmgAccount;
         if(this.tuboj.hasOwnProperty("KabamPaymentInfo"))
         {
            _loc2_=XML(this.tuboj.KabamPaymentInfo);
            _loc1_.signedRequest=_loc2_.signedRequest;
            _loc1_.tycehozu=_loc2_.naid;
         }
         return;
      }
   }
[/CLASS]
}