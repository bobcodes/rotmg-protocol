package wuwulyni
{
   import gycu.Siv;
   import vilova.Piwyc;
   import cinyj.Vobewabij;
   import taruco.Hosoqoqy;
   import pugem.Account;
   import pomujukir.Cuqoseze;
   import gokyc.Rud;
   import suzen.Kodufanin;


   public class Qahaz extends Siv implements Piwyc
   {
      public function Qahaz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Vobewabij;

      public var ciqocu:Hosoqoqy;

      public var account:Account;

      public var taja:Cuqoseze;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/register",this.tyzif());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         dom(param1,param2);
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.ciqocu.tiredin();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.dyw();
         return _loc1_;
      }

      private function wipo(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vuf(param1);
         this.bufowipa();
         return;
      }

      private function bufowipa() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kodufanin = new Kodufanin();
         _loc1_.category="kongregateAccount";
         _loc1_.hukepej="accountRegistered";
         this.taja.dispatch(_loc1_);
         return;
      }

      private function vuf(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         return;
      }
   }

}