package teq
{
[CLASS689]   import syfuqycy.Gyz;
   import vofepimy.Zabi;
   import dutes.Rumevo;
   import qiwyz.Bozakehy;
   import jezi.Pyruleq;


   public class Zuviti extends Gyz implements Zabi
   {
      public function Zuviti() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var email:String;

      public var pukyso:Rumevo;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/forgotPassword",{guid:this.email});
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.vuhalezow();
         }
         else
         {
            this.hym(param2);
         }
         return;
      }

      private function vuhalezow() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hokafav();
         pylebodyq(true);
         return;
      }

      private function hokafav() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="passwordSent";
         this.pukyso.dispatch(_loc1_);
         return;
      }

      private function hym(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         pylebodyq(false,param1);
         return;
      }
   }
[/CLASS]
}