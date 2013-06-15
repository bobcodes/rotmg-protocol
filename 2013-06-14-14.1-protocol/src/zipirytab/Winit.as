package zipirytab
{


   public class Winit extends Object
   {
      public function Winit() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wumuqysir=Console.FATAL;
         this.traceCall=new function(param1:String, param2:String, ... rest):void
         {
            trace("["+param1+"] "+param2);
            return;
         };
         this.timeStampFormatter=new function(param1:uint):String
         {
            var _loc2_:uint = param1*0.001;
            return this.movyvy(_loc2_/60)+":"+this.movyvy(_loc2_%60);
         };
         super();
         this.pygohezo=new Vohodolol();
         return;
      }

      public var keystrokePassword:String;

      public var remotingPassword:String;

      public var maxLines:uint = 1000;

      public var maxRepeats:int = 75;

      public var wumuqysir:int;

      public var terow:int = 2;

      public var useObjectLinking:Boolean = true;

      public var objectHardReferenceTimer:uint = 0;

      public var tracing:Boolean;

      public var traceCall:Function;

      public var showTimestamp:Boolean = false;

      public var timeStampFormatter:Function;

      private function movyvy(param1:uint) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1<10)
         {
            return "0"+param1;
         }
         return String(param1);
      }

      public var showLineNumber:Boolean = false;

      public var remotingConnectionName:String = "_Console";

      public var allowedRemoteDomain:String = "wepynyji";

      public var commandLineAllowed:Boolean;

      public var commandLineAutoScope:Boolean;

      public var commandLineInputPassThrough:Function;

      public var commandLineAutoCompleteEnabled:Boolean = true;

      public var keyBindsEnabled:Boolean = true;

      public var displayRollerEnabled:Boolean = true;

      public var rulerToolEnabled:Boolean = true;

      public var melyna:Boolean = true;

      public var nol:String = "com.junkbyte/Console/UserData";

      public var zelewev:String = "/";

      public var rememberFilterSettings:Boolean;

      public var wijasiq:Boolean = true;

      public function get style() : Vohodolol {
         return this.pygohezo;
      }

      private var pygohezo:Vohodolol;
   }

}