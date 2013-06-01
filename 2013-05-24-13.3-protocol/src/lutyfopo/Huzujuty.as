package lutyfopo
{


   public class Huzujuty extends Object
   {
      public function Huzujuty() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cazygopuw=Console.FATAL;
         this.traceCall=new function(param1:String, param2:String, ... rest):void
         {
            trace("["+param1+"] "+param2);
            return;
         };
         this.timeStampFormatter=new function(param1:uint):String
         {
            var _loc2_:uint = param1*0.001;
            return this.bosy(_loc2_/60)+":"+this.bosy(_loc2_%60);
         };
         super();
         this.gibifol=new Syby();
         return;
      }

      public var keystrokePassword:String;

      public var remotingPassword:String;

      public var maxLines:uint = 1000;

      public var maxRepeats:int = 75;

      public var cazygopuw:int;

      public var wiloriro:int = 2;

      public var useObjectLinking:Boolean = true;

      public var objectHardReferenceTimer:uint = 0;

      public var tracing:Boolean;

      public var traceCall:Function;

      public var showTimestamp:Boolean = false;

      public var timeStampFormatter:Function;

      private function bosy(param1:uint) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1<10)
         {
            return "0"+param1;
         }
         return String(param1);
      }

      public var showLineNumber:Boolean = false;

      public var remotingConnectionName:String = "_Console";

      public var allowedRemoteDomain:String = "cogycylyb";

      public var commandLineAllowed:Boolean;

      public var commandLineAutoScope:Boolean;

      public var commandLineInputPassThrough:Function;

      public var commandLineAutoCompleteEnabled:Boolean = true;

      public var keyBindsEnabled:Boolean = true;

      public var displayRollerEnabled:Boolean = true;

      public var rulerToolEnabled:Boolean = true;

      public var sovafotam:Boolean = true;

      public var soriwiny:String = "com.junkbyte/Console/UserData";

      public var guc:String = "/";

      public var rememberFilterSettings:Boolean;

      public var hysygejik:Boolean = true;

      public function get style() : Syby {
         return this.gibifol;
      }

      private var gibifol:Syby;
   }

}