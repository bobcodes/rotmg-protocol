package dopifo
{
   import aaa.rotmg.net.HttpClientWrapper;
   import raqu.Sikywybu;
   import tulunyno.Vobaqe;
   import flash.utils.getTimer;
   import cidehov.Hyzifiraj;


   public class Paqe extends Object implements HttpClientWrapper
   {
      public function Paqe() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var tyc:Sikywybu;

      public var sygenap:Rujahin;

      private var target:String;

      private var time:int;

      public function get complete() : Vobaqe {
         return this.sygenap.complete;
      }

      public function sucunuj(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sygenap.sucunuj(param1);
         return;
      }

      public function cyhel(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sygenap.cyhel(param1);
         return;
      }

      public function fug(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sygenap.fug(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.target=param1;
         this.time=getTimer();
         this.sygenap.complete.addOnce(this.maqugekyj);
         this.sygenap.sendRequest(param1,param2);
         return;
      }

      private function maqugekyj(param1:Boolean, param2:*) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Hyzifiraj = new Hyzifiraj();
         _loc3_.category="AppEngineResponseTime";
         _loc3_.hiris=this.target;
         _loc3_.value=this.time-getTimer();
         this.tyc.dispatch(_loc3_);
         return;
      }
   }

}