package lyhek
{


   public class Gyfuca extends Object implements Cumezyl
   {
      public function Gyfuca(param1:int, param2:int) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.accountId=param1;
         this.medolaru=param2;
         return;
      }

      private var accountId:int;

      private var medolaru:int;

      public function sosimu() : int {
         return this.accountId;
      }

      public function gar() : int {
         return this.medolaru;
      }
   }

}