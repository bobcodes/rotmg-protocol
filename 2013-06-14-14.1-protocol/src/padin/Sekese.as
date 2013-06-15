package padin
{
   import gycu.Siv;
   import pugem.Account;
   import tam.Sav;
   import cizagamym.Boquzojul;
   import gokyc.Rud;
   import vysob.Qofu;


   public class Sekese extends Siv
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sekese() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const cewuwaqar:String = "Error: ${error}";

      public var account:Account;

      public var steam:Sav;

      public var ridecy:Boquzojul;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.steam.zico();
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/getcredentials",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.tyto(param2);
         }
         else
         {
            this.kugur(param2);
         }
         dom(param1,param2);
         return;
      }

      private function tyto(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         return;
      }

      private function kugur(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = cewuwaqar.replace("${error}",param1);
         var _loc3_:Qofu = new Qofu(_loc2_);
         this.ridecy.dispatch(_loc3_);
         return;
      }
   }

}