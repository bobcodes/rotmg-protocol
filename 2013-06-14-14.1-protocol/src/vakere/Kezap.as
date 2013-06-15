package vakere
{
   import gokyc.Rud;
   import pomujukir.Cuqoseze;
   import mukyrosu.Cisymifok;
   import flash.utils.getTimer;
   import suzen.Kodufanin;


   public class Kezap extends Object implements Rud
   {
      public function Kezap() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var taja:Cuqoseze;

      public var rilige:Wiga;

      private var target:String;

      private var time:int;

      public function get complete() : Cisymifok {
         return this.rilige.complete;
      }

      public function dolutah(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rilige.dolutah(param1);
         return;
      }

      public function sog(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.target=param1;
         this.time=getTimer();
         this.rilige.complete.addOnce(this.hymo);
         this.rilige.sendRequest(param1,param2);
         return;
      }

      private function hymo(param1:Boolean, param2:*) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Kodufanin = new Kodufanin();
         _loc3_.category="AppEngineResponseTime";
         _loc3_.hukepej=this.target;
         _loc3_.value=this.time-getTimer();
         this.taja.dispatch(_loc3_);
         return;
      }
   }

}