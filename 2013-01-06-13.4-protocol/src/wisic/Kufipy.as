package wisic
{
[CLASS125]   import flash.events.EventDispatcher;
   import qiwyz.Bozakehy;
   import tinava.Busake;
   import flash.utils.getTimer;


   public class Kufipy extends EventDispatcher implements Bozakehy
   {
      public function Kufipy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var stats:AppEngineRequestStats;

      public var bulu:Rof;

      private var hod:int;

      private var target:String;

      public function get complete() : Busake {
         return this.bulu.complete;
      }

      public function sunomiz(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bulu.sunomiz(param1);
         return;
      }

      public function qaz(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bulu.qaz(param1);
         return;
      }

      public function casegyma(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.bulu.casegyma(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.hod=getTimer();
         this.target=param1;
         this.bulu.complete.addOnce(this.onComplete);
         this.bulu.sendRequest(param1,param2);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.stats.quze(this.target,param1,getTimer()-this.hod);
         return;
      }
   }
[/CLASS]
}