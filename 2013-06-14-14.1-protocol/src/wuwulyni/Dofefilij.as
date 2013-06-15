package wuwulyni
{
   import gycu.Siv;
   import vilova.Sukazys;
   import pugem.Account;
   import taruco.Hosoqoqy;
   import cinyj.Vobewabij;
   import sygoquja.Gosupawo;
   import gokyc.Rud;


   public class Dofefilij extends Siv implements Sukazys
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Dofefilij() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static const jimunulu:String = "Kongregate account already registered";

      public var account:Account;

      public var ciqocu:Hosoqoqy;

      public var data:Vobewabij;

      public var qimamop:Gosupawo;

      public var client:Rud;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.kesanij(2);
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/kongregate/internalRegister",this.tyzif());
         return;
      }

      private function tyzif() : Object {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = this.ciqocu.tiredin();
         _loc1_.guid=this.account.getUserId();
         return _loc1_;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1)
         {
            this.wipo(param2);
         }
         else
         {
            if(param2==jimunulu)
            {
               this.qimamop.dispatch(this.data);
            }
         }
         dom(param1,param2);
         return;
      }

      private function wipo(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = new XML(param1);
         this.account.sapihaj(_loc2_.GUID,_loc2_.Secret);
         this.account.piwobaqej(_loc2_.PlatformToken);
         return;
      }
   }

}