package jyfugaq
{
[CLASS749]   import syfuqycy.Gyz;
   import vofepimy.Karakicy;
   import kyhawibyc.Fapu;
   import tizozowof.Fedyl;
   import leselo.Account;
   import dutes.Rumevo;
   import qiwyz.Bozakehy;
   import jezi.Pyruleq;


   public class Taku extends Gyz implements Karakicy
   {
      public function Taku() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var data:Fapu;

      public var lowemycu:Fedyl;

      public var account:Account;

      public var pukyso:Rumevo;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/register",this.winy());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         pylebodyq(param1,param2);
         return;
      }

      private function winy() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.lowemycu.wapen();
         _loc1_.newGUID=this.data.username;
         _loc1_.newPassword=this.data.password;
         _loc1_.entrytag=this.account.wiqen();
         return _loc1_;
      }

      private function capyhutuz(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mijezymul(param1);
         this.zuc();
         return;
      }

      private function zuc() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="kongregateAccount";
         _loc1_.bozegyt="accountRegistered";
         this.pukyso.dispatch(_loc1_);
         return;
      }

      private function mijezymul(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = new XML(param1);
         this.account.fuv(_loc2_.GUID,_loc2_.Secret);
         this.account.kowumaj(_loc2_.PlatformToken);
         return;
      }
   }
[/CLASS]
}