package zatiwu
{
   import gycu.Siv;
   import pugem.Account;
   import jufu.Jawojicyw;
   import gokyc.Rud;


   public class Harin extends Siv
   {
      public function Harin() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var model:Jawojicyw;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/getBeginnerPackageTimeLeft",this.account.pedavitu());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.netove(param2);
         return;
      }

      private function netove(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = new XML(param1)[0];
         this.model.cydasina(_loc2_);
         dom(_loc2_>0);
         return;
      }
   }

}