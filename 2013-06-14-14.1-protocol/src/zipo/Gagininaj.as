package zipo
{
   import gycu.Siv;
   import pugem.Account;
   import gokyc.Rud;
   import wohy.Luz;


   public class Gagininaj extends Siv
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Gagininaj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const jeqyjose:String = "arena/getPersonalBest";

      public var account:Account;

      public var client:Rud;

      public var vyg:Luz;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest(jeqyjose,this.nitawyh());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function sanuly(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = XML(param1);
         this.vyg.vegyq.rygy=_loc2_.Record.Time;
         this.vyg.vegyq.pig=_loc2_.Record.WaveNumber;
         return;
      }

      private function nitawyh() : Object {
         return this.account.pedavitu();
      }
   }

}