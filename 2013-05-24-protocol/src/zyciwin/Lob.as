package zyciwin
{
   import gag.Fijarih;
   import aaa.rotmg.account.Account;
   import cyt.Zivovype;
   import wegyluke.Hez;
   import aaa.rotmg.net.HttpClientWrapper;
   import nas.Vyha;


   public class Lob extends Fijarih
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lob() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const tifygip:String = "Error: ${error}";

      public var account:Account;

      public var steam:Zivovype;

      public var naval:Hez;

      public var client:HttpClientWrapper;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.steam.hypo();
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/getcredentials",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.qasagyvo(param2);
         }
         else
         {
            this.rejugahuw(param2);
         }
         syjavimu(param1,param2);
         return;
      }

      private function qasagyvo(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         return;
      }

      private function rejugahuw(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = tifygip.replace("${error}",param1);
         var _loc3_:Vyha = new Vyha(_loc2_);
         this.naval.dispatch(_loc3_);
         return;
      }
   }

}