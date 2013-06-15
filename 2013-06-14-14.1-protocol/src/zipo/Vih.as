package zipo
{
   import gycu.Siv;
   import pugem.Account;
   import gokyc.Rud;
   import ginuly.Suvydod;
   import wohy.Meso;
   import __AS3__.vec.Vector;
   import wohy.Caki;
   import com.company.util.Bycaqa;


   public class Vih extends Siv
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vih() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const jeqyjose:String = "arena/getRecords";

      public var account:Account;

      public var client:Rud;

      public var factory:Koguce;

      public var suca:Suvydod;

      public var filter:Meso;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest(jeqyjose,this.nitawyh());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         dom(param1,param2);
         return;
      }

      private function balocuma(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Vector.<Caki> = this.factory.gen(XML(param1).Record);
         this.filter.fowebazy(_loc2_);
         this.suca.dispatch();
         return;
      }

      private function nitawyh() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {type:this.filter.getKey()};
         Bycaqa.timokujo(_loc1_,this.account.pedavitu());
         return _loc1_;
      }
   }

}