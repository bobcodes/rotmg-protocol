package zacyka
{
   import gycu.Siv;
   import gokyc.Rud;
   import lemugo.Wokycuku;
   import zynuqu.Zapy;
   import zynuqu.Jeh;
   import zynuqu.Timespan;
   import __AS3__.vec.Vector;
   import zynuqu.Topunu;


   public class Byhac extends Siv
   {
      public function Byhac() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var client:Rud;

      public var player:Wokycuku;

      public var model:Zapy;

      public var factory:Jeh;

      public var timespan:Timespan;

      public var charId:int;

      override protected function startTask() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/fame/list",this.nitawyh());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         dom(param1,param2);
         return;
      }

      private function kyq(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<Topunu> = this.factory.quzonytor(XML(param1));
         this.model.nywojodal(_loc2_);
         return;
      }

      private function nitawyh() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.timespan=this.timespan.rivur();
         _loc1_.accountId=this.player.sosimu();
         _loc1_.charId=this.charId;
         return _loc1_;
      }
   }

}