package lazamipu
{


   public class Nomoquna extends Object implements Radil
   {
      public function Nomoquna(param1:int, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.accountId=param1;
         this.vugejuh=param2;
         return;
      }

      private var accountId:int;

      private var vugejuh:int;

      public function lyhiqumi() : int {
         return this.accountId;
      }

      public function rohimofiq() : int {
         return this.vugejuh;
      }
   }

}