package sanu
{
   import pugem.Account;
   import risic.Jyr;


   public class Baqewy extends Object
   {
      public function Baqewy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var buvovej:XML;

      public var account:Account;

      public function execute() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = null;
         var _loc1_:Jyr = this.account as Jyr;
         if(this.buvovej.hasOwnProperty("KabamPaymentInfo"))
         {
            _loc2_=XML(this.buvovej.KabamPaymentInfo);
            _loc1_.signedRequest=_loc2_.signedRequest;
            _loc1_.casesydiz=_loc2_.naid;
         }
         return;
      }
   }

}