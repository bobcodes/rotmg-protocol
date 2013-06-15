package car
{
   import gycu.Siv;
   import gokyc.Rud;
   import pugem.Account;
   import lemugo.Wokycuku;
   import com.company.assembleegameclient.map.Luhim;
   import wavybyjec.Sucy;
   import fodopud.Cedi;
   import komi.Vibemod;


   public class BuyPackageTask extends Siv
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BuyPackageTask() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const syh:Array = ["Package is not Available","Package is not Available Right Now","Invalid PackageId"];

      public var client:Rud;

      public var account:Account;

      public var sodoqif:Pijiz;

      public var kejisacok:Wokycuku;

      public var quqek:Luhim;

      public var jefitizij:Sucy;

      public var hejydap:Cedi;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.account.pedavitu();
         _loc1_.packageId=this.jefitizij.packageID;
         this.kejisacok.gupemeqa(-this.jefitizij.price);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/purchasePackage",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:XML = new XML(param2);
         if(param1)
         {
            this.vitig(_loc3_);
         }
         else
         {
            this.mokugusis(_loc3_);
         }
         dom(true,param2);
         return;
      }

      private function vitig(param1:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.jefitizij.quantity!=Sucy.jybycadaf)
         {
            this.jefitizij.quantity--;
         }
         this.jefitizij.numPurchased++;
         this.quqek.dispatch(Vibemod.tokol,11495650);
         this.hejydap.dispatch();
         if(this.jefitizij.quantity<=0)
         {
            this.sodoqif.start();
         }
         return;
      }

      private function mokugusis(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kejisacok.gupemeqa(this.jefitizij.price);
         this.bur(param1[0]);
         return;
      }

      private function bur(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.quqek.dispatch(param1,16744576);
         if(syh.indexOf(param1)!=-1)
         {
            this.sodoqif.start();
         }
         return;
      }
   }

}