package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Hiwa;
   import ruwa.Account;
   import vavufer.Bicowu;
   import nukobi.Fozydo;
   import negirilu.Fuzi;


   public class Fobyk extends Fijarih implements Hiwa
   {
      public function Fobyk() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var data:Bicowu;

      public var zefy:Fozydo;

      public var client:Fuzi;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/link",this.pezosym());
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.zefy.litafukic();
         _loc1_.guid=this.data.username;
         _loc1_.password=this.data.password;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         syjavimu(param1,param2);
         return;
      }

      private function suvebodut(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         return;
      }
   }

}