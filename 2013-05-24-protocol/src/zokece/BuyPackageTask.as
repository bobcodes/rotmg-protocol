package zokece
{
   import gag.Fijarih;
   import negirilu.Fuzi;
   import ruwa.Account;
   import hotewa.Baqifa;
   import com.company.assembleegameclient.map.Volyrowu;
   import damul.Qyfa;
   import kynusa.Guzefor;
   import aaa.rotmg.i18n.I18nKeys;


   public class BuyPackageTask extends Fijarih
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

      private static const cylovedi:Array = ["Package is not Available","Package is not Available Right Now","Invalid PackageId"];

      public var client:Fuzi;

      public var account:Account;

      public var jagociwu:Zokyfymus;

      public var muwi:Baqifa;

      public var diqerikuc:Volyrowu;

      public var vifa:Qyfa;

      public var zoj:Guzefor;

      override protected function startTask() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = this.account.venupog();
         _loc1_.packageId=this.vifa.packageID;
         this.muwi.wemafowyq(-this.vifa.price);
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
            this.tetorakyf(_loc3_);
         }
         else
         {
            this.botewa(_loc3_);
         }
         syjavimu(true,param2);
         return;
      }

      private function tetorakyf(param1:XML) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.vifa.quantity!=Qyfa.menoqecot)
         {
            this.vifa.quantity--;
         }
         this.vifa.numPurchased++;
         this.diqerikuc.dispatch(I18nKeys.waweqit,11495650);
         this.zoj.dispatch();
         if(this.vifa.quantity<=0)
         {
            this.jagociwu.start();
         }
         return;
      }

      private function botewa(param1:XML) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.muwi.wemafowyq(this.vifa.price);
         this.wino(param1[0]);
         return;
      }

      private function wino(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.diqerikuc.dispatch(param1,16744576);
         if(cylovedi.indexOf(param1)!=-1)
         {
            this.jagociwu.start();
         }
         return;
      }
   }

}