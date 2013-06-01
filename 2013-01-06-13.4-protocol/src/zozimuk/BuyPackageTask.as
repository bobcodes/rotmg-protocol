package zozimuk
{
[CLASS905]   import syfuqycy.Gyz;
   import qiwyz.Bozakehy;
   import leselo.Account;
   import dylaqezo.Vusun;
   import com.company.assembleegameclient.map.Pywyz;
   import kuniv.Nogofado;
   import ruf.Fyjehohy;
   import haqakel.Kefyfa;


   public class BuyPackageTask extends Gyz
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function BuyPackageTask() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const fif:Array = ["Package is not Available","Package is not Available Right Now","Invalid PackageId"];

      public var client:Bozakehy;

      public var account:Account;

      public var huwumepe:Tukejyp;

      public var jojun:Vusun;

      public var mesafezoq:Pywyz;

      public var batyzoqu:Nogofado;

      public var gyv:Fyjehohy;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.dera();
         _loc1_.packageId=this.batyzoqu.packageID;
         this.jojun.kisom(-this.batyzoqu.price);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/account/purchasePackage",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:XML = new XML(param2);
         if(param1)
         {
            this.lyce(_loc3_);
         }
         else
         {
            this.videmujijo(_loc3_);
         }
         pylebodyq(true,param2);
         return;
      }

      private function lyce(param1:XML) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.batyzoqu.quantity!=Nogofado.revizoti)
         {
            this.batyzoqu.quantity--;
         }
         this.batyzoqu.numPurchased++;
         this.mesafezoq.dispatch(Kefyfa.mydywu,11495650);
         this.gyv.dispatch();
         if(this.batyzoqu.quantity<=0)
         {
            this.huwumepe.start();
         }
         return;
      }

      private function videmujijo(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jojun.kisom(this.batyzoqu.price);
         this.tegufoc(param1[0]);
         return;
      }

      private function tegufoc(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mesafezoq.dispatch(param1,16744576);
         if(fif.indexOf(param1)!=-1)
         {
            this.huwumepe.start();
         }
         return;
      }
   }
[/CLASS]
}