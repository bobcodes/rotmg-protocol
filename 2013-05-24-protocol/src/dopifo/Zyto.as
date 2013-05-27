package dopifo
{
   import flash.events.EventDispatcher;
   import negirilu.Fuzi;
   import tulunyno.Vobaqe;
   import flash.utils.getTimer;


   public class Zyto extends EventDispatcher implements Fuzi
   {
      public function Zyto() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var stats:AppEngineRequestStats;

      public var sygenap:Rujahin;

      private var coky:int;

      private var target:String;

      public function get complete() : Vobaqe {
         return this.sygenap.complete;
      }

      public function sucunuj(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sygenap.sucunuj(param1);
         return;
      }

      public function cyhel(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sygenap.cyhel(param1);
         return;
      }

      public function fug(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sygenap.fug(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.coky=getTimer();
         this.target=param1;
         this.sygenap.complete.addOnce(this.onComplete);
         this.sygenap.sendRequest(param1,param2);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.stats.fazyvelaz(this.target,param1,getTimer()-this.coky);
         return;
      }
   }

}