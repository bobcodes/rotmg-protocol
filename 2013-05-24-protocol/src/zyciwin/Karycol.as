package zyciwin
{
   import gag.Fijarih;
   import dopumitud.Rykuzen;
   import ruwa.Account;
   import cyt.Zivovype;
   import vavufer.Bicowu;
   import komawowag.Becepog;
   import negirilu.Fuzi;


   public class Karycol extends Fijarih implements Rykuzen
   {
      public function Karycol() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var zefy:Zivovype;

      public var data:Bicowu;

      public var qiqely:Becepog;

      private var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiqely.debug("startTask");
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/register",this.pezosym());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.ruvyzoku(param2);
         }
         else
         {
            this.calofigi(param2);
         }
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.zefy.hypo();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.qujipoj();
         return _loc1_;
      }

      private function ruvyzoku(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.qiqely.debug("done - {0}",[_loc2_.GUID]);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         syjavimu(true);
         return;
      }

      private function calofigi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiqely.debug("error - {0}",[param1]);
         syjavimu(false,param1);
         return;
      }
   }

}