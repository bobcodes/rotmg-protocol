package tidyka
{
   import gag.Fijarih;
   import aaa.rotmg.net.HttpClientWrapper;
   import hotewa.Baqifa;
   import sibaworop.Pamokut;
   import sibaworop.Fezabaga;
   import sibaworop.Timespan;
   import __AS3__.vec.Vector;
   import sibaworop.Seqyw;


   public class Nakulogik extends Fijarih
   {
      public function Nakulogik() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var client:HttpClientWrapper;

      public var player:Baqifa;

      public var model:Pamokut;

      public var factory:Fezabaga;

      public var timespan:Timespan;

      public var charId:int;

      override protected function startTask() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.client.complete.addOnce(this.onComplete);
         this.client.sendRequest("/fame/list",this.qut());
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         syjavimu(param1,param2);
         return;
      }

      private function cysij(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<Seqyw> = this.factory.vunam(XML(param1));
         this.model.myb(_loc2_);
         return;
      }

      private function qut() : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = {};
         _loc1_.timespan=this.timespan.tufu();
         _loc1_.accountId=this.player.lyhiqumi();
         _loc1_.charId=this.charId;
         return _loc1_;
      }
   }

}