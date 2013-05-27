package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Suquzujow;
   import aaa.rotmg.account.Account;
   import nukobi.Fozydo;
   import aaa.rotmg.net.HttpClientWrapper;


   public class Tuzu extends Fijarih implements Suquzujow
   {
      public function Tuzu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var zefy:Fozydo;

      public var local:Hogoh;

      public var client:HttpClientWrapper;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/getcredentials",this.zefy.litafukic());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }

      private function qasagyvo(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         syjavimu(true);
         return;
      }
   }

}