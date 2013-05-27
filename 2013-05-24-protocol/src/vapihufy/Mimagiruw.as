package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Rykuzen;
   import vavufer.Bicowu;
   import nukobi.Fozydo;
   import aaa.rotmg.account.Account;
   import raqu.Sikywybu;
   import aaa.rotmg.net.HttpClientWrapper;
   import cidehov.Hyzifiraj;


   public class Mimagiruw extends Fijarih implements Rykuzen
   {
      public function Mimagiruw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Bicowu;

      public var zefy:Fozydo;

      public var account:Account;

      public var tyc:Sikywybu;

      public var client:HttpClientWrapper;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/register",this.pezosym());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.zefy.litafukic();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.qujipoj();
         return _loc1_;
      }

      private function lacoqyro(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wov(param1);
         this.hejafiru();
         return;
      }

      private function hejafiru() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="kongregateAccount";
         _loc1_.hiris="accountRegistered";
         this.tyc.dispatch(_loc1_);
         return;
      }

      private function wov(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         return;
      }
   }

}