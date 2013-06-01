package jyfugaq
{
[CLASS745]   import syfuqycy.Gyz;
   import vofepimy.Rucikezab;
   import leselo.Account;
   import tizozowof.Fedyl;
   import qiwyz.Bozakehy;


   public class Bogogo extends Gyz implements Rucikezab
   {
      public function Bogogo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var lowemycu:Fedyl;

      public var local:Pesuqarut;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/getcredentials",this.lowemycu.wapen());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         pylebodyq(param1,param2);
         return;
      }

      private function derazy(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.account.fuv(_loc2_.GUID,_loc2_.Secret);
         this.account.kowumaj(_loc2_.PlatformToken);
         pylebodyq(true);
         return;
      }
   }
[/CLASS]
}