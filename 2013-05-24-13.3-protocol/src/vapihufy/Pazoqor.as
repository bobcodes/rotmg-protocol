package vapihufy
{
   import gag.Fijarih;
   import dopumitud.Riqyh;
   import aaa.rotmg.account.Account;
   import nukobi.Fozydo;
   import vavufer.Bicowu;
   import regym.Dazihyr;
   import aaa.rotmg.net.HttpClientWrapper;


   public class Pazoqor extends Fijarih implements Riqyh
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Pazoqor() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const koqar:String = "Kongregate account already registered";

      public var account:Account;

      public var zefy:Fozydo;

      public var data:Bicowu;

      public var cuwot:Dazihyr;

      public var client:HttpClientWrapper;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.fug(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/internalRegister",this.pezosym());
         return;
      }

      private function pezosym() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.zefy.litafukic();
         _loc1_.guid=this.account.getUserId();
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.lacoqyro(param2);
         }
         else
         {
            if(param2==koqar)
            {
               this.cuwot.dispatch(this.data);
            }
         }
         syjavimu(param1,param2);
         return;
      }

      private function lacoqyro(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.tesaw(_loc2_.GUID,_loc2_.Secret);
         this.account.rovehuhuv(_loc2_.PlatformToken);
         return;
      }
   }

}