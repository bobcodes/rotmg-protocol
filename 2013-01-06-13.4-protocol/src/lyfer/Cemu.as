package lyfer
{
[CLASS1378]   import syfuqycy.Gyz;
   import leselo.Account;
   import zib.Bebemed;
   import kirofyny.Hehuf;
   import qiwyz.Bozakehy;
   import cejyva.Qak;


   public class Cemu extends Gyz
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cemu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const gikuwyguk:String = "Error: ${error}";

      public var account:Account;

      public var steam:Bebemed;

      public var lyhog:Hehuf;

      public var client:Bozakehy;

      override protected function startTask() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.steam.nin();
         this.client.casegyma(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/steamworks/getcredentials",_loc1_);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1)
         {
            this.derazy(param2);
         }
         else
         {
            this.kydi(param2);
         }
         pylebodyq(param1,param2);
         return;
      }

      private function derazy(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.fuv(_loc2_.GUID,_loc2_.Secret);
         this.account.kowumaj(_loc2_.PlatformToken);
         return;
      }

      private function kydi(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = gikuwyguk.replace("${error}",param1);
         var _loc3_:Qak = new Qak(_loc2_);
         this.lyhog.dispatch(_loc3_);
         return;
      }
   }
[/CLASS]
}