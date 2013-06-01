package dopifo
{
   import nago.Visyw;


   public class AppEngineRequestStats extends Object
   {
      public function AppEngineRequestStats() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var lihyqi:Visyw;

      private const zikyrot:Object = {};

      public function fazyvelaz(param1:String, param2:Boolean, param3:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:StatsWatch = this.zikyrot[param1]=(this.zikyrot[param1])||(new StatsWatch(param1));
         _loc4_.addResponse(param2,param3);
         this.lihyqi.dispatch(_loc4_);
         return;
      }
   }

}   import rosebo.Ruwatum;


   class StatsWatch extends Ruwatum
   {
      function StatsWatch(param1:String) {
         super(param1,"");
         this.count=0;
         this.ok=0;
         this.time=0;
         return;
      }

      private static const STATS_PATTERN:String = "[APPENGINE STATS] [0xFFEE00:{/x={MEAN}ms, ok={OK}/{COUNT}} {NAME}]";

      private static const MEAN:String = "{MEAN}";

      private static const COUNT:String = "{COUNT}";

      private static const OK:String = "{OK}";

      private static const NAME:String = "{NAME}";

      private var count:int;

      private var time:int;

      private var mean:int;

      private var ok:int;

      public function addResponse(param1:Boolean, param2:int) : void {
         this.time=this.time+param2;
         this.mean=this.time/++this.count;
         data=this.report();
         return;
      }

      private function report() : String {
         return STATS_PATTERN.replace(MEAN,this.mean).replace(COUNT,this.count).replace(OK,this.ok).replace(NAME,name);
      }
   }
