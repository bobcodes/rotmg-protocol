package wuwulyni
{
   import gycu.Siv;
   import vilova.Baf;
   import pugem.Account;
   import taruco.Hosoqoqy;
   import gokyc.Rud;


   public class Rawyq extends Siv implements Baf
   {
      public function Rawyq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var ciqocu:Hosoqoqy;

      public var local:Wyzazeqi;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/getcredentials",this.ciqocu.tiredin());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function tyto(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         dom(true);
         return;
      }
   }

}