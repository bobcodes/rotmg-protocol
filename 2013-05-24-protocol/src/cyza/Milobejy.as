package cyza
{
   import gag.Fijarih;
   import dopumitud.Hazagoty;
   import raqu.Sikywybu;
   import aaa.rotmg.net.HttpClientWrapper;
   import cidehov.Hyzifiraj;


   public class Milobejy extends Fijarih implements Hazagoty
   {
      public function Milobejy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var email:String;

      public var tyc:Sikywybu;

      public var client:HttpClientWrapper;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/forgotPassword",{guid:this.email});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.kidyge();
         }
         else
         {
            this.tyma(param2);
         }
         return;
      }

      private function kidyge() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.roweqa();
         syjavimu(true);
         return;
      }

      private function roweqa() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hyzifiraj = new Hyzifiraj();
         _loc1_.category="account";
         _loc1_.hiris="passwordSent";
         this.tyc.dispatch(_loc1_);
         return;
      }

      private function tyma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         syjavimu(false,param1);
         return;
      }
   }

}