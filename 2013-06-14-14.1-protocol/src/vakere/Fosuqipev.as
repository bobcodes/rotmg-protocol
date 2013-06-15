package vakere
{
   import flash.events.EventDispatcher;
   import gokyc.Rud;
   import mukyrosu.Cisymifok;
   import flash.utils.getTimer;


   public class Fosuqipev extends EventDispatcher implements Rud
   {
      public function Fosuqipev() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var stats:AppEngineRequestStats;

      public var rilige:Wiga;

      private var nunator:int;

      private var target:String;

      public function get complete() : Cisymifok {
         return this.rilige.complete;
      }

      public function dolutah(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rilige.dolutah(param1);
         return;
      }

      public function sog(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rilige.sog(param1);
         return;
      }

      public function kesanij(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rilige.kesanij(param1);
         return;
      }

      public function sendRequest(param1:String, param2:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.nunator=getTimer();
         this.target=param1;
         this.rilige.complete.addOnce(this.onComplete);
         this.rilige.sendRequest(param1,param2);
         return;
      }

      private function onComplete(param1:Boolean, param2:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.stats.kajatilyg(this.target,param1,getTimer()-this.nunator);
         return;
      }
   }

}