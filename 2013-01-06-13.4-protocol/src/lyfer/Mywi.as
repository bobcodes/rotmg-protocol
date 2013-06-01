package lyfer
{
[CLASS726]   import syfuqycy.Gyz;
   import vofepimy.Karakicy;
   import leselo.Account;
   import zib.Bebemed;
   import kyhawibyc.Fapu;
   import bikyvym.Voduzak;
   import qiwyz.Bozakehy;


   public class Mywi extends Gyz implements Karakicy
   {
      public function Mywi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var lowemycu:Bebemed;

      public var data:Fapu;

      public var wop:Voduzak;

      private var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wop.debug("startTask");
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/register",this.winy());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.nefusepap(param2);
         }
         else
         {
            this.mesiduk(param2);
         }
         return;
      }

      private function winy() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.lowemycu.nin();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.wiqen();
         return _loc1_;
      }

      private function nefusepap(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.wop.debug("done - {0}",[_loc2_.GUID]);
         this.account.fuv(_loc2_.GUID,_loc2_.Secret);
         this.account.kowumaj(_loc2_.PlatformToken);
         pylebodyq(true);
         return;
      }

      private function mesiduk(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wop.debug("error - {0}",[param1]);
         pylebodyq(false,param1);
         return;
      }
   }
[/CLASS]
}