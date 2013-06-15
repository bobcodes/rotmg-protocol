package wuwulyni
{
   import gycu.Siv;
   import vilova.Dofopilu;
   import pugem.Account;
   import cinyj.Vobewabij;
   import taruco.Hosoqoqy;
   import gokyc.Rud;


   public class Vawij extends Siv implements Dofopilu
   {
      public function Vawij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var data:Vobewabij;

      public var ciqocu:Hosoqoqy;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/link",this.tyzif());
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.ciqocu.tiredin();
         _loc1_.guid=this.data.username;
         _loc1_.password=this.data.password;
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function bafyqisib(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         return;
      }
   }

}