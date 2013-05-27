package ripu
{
   import ruwa.Account;
   import ric.Durujeduj;


   public class Dugaf extends Object
   {
      public function Dugaf() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var zitypykoq:XML;

      public var account:Account;

      public function execute() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         var _loc1_:Durujeduj = this.account as Durujeduj;
         if(this.zitypykoq.hasOwnProperty("KabamPaymentInfo"))
         {
            _loc2_=XML(this.zitypykoq.KabamPaymentInfo);
            _loc1_.signedRequest=_loc2_.signedRequest;
            _loc1_.disemugy=_loc2_.naid;
         }
         return;
      }
   }

}