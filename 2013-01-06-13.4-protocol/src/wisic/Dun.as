package wisic
{
[CLASS124]   import qiwyz.Bozakehy;
   import dutes.Rumevo;
   import tinava.Busake;
   import flash.utils.getTimer;
   import jezi.Pyruleq;


   public class Dun extends Object implements Bozakehy
   {
      public function Dun() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var pukyso:Rumevo;

      public var bulu:Rof;

      private var target:String;

      private var time:int;

      public function get complete() : Busake {
         return this.bulu.complete;
      }

      public function sunomiz(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bulu.sunomiz(param1);
         return;
      }

      public function qaz(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         this.target=param1;
         this.time=getTimer();
         this.bulu.complete.addOnce(this.junazel);
         this.bulu.sendRequest(param1,param2);
         return;
      }

      private function junazel(param1:Boolean, param2:*) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Pyruleq = new Pyruleq();
         _loc3_.category="AppEngineResponseTime";
         _loc3_.bozegyt=this.target;
         _loc3_.value=this.time-getTimer();
         this.pukyso.dispatch(_loc3_);
         return;
      }
   }
[/CLASS]
}