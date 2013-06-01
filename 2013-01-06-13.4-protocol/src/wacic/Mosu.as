package wacic
{
[CLASS1683]

   public class Mosu extends Object
   {
      public function Mosu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mudak=Console.FATAL;
         this.traceCall=new function(param1:String, param2:String, ... rest):void
         {
            trace("["+param1+"] "+param2);
            return;
         };
         this.timeStampFormatter=new function(param1:uint):String
         {
            var _loc2_:uint = param1*0.001;
            return this.zufuqa(_loc2_/60)+":"+this.zufuqa(_loc2_%60);
         };
         super();
         this.casivelek=new Gewyl();
         return;
      }

      public var keystrokePassword:String;

      public var remotingPassword:String;

      public var maxLines:uint = 1000;

      public var maxRepeats:int = 75;

      public var mudak:int;

      public var noqipetep:int = 2;

      public var useObjectLinking:Boolean = true;

      public var objectHardReferenceTimer:uint = 0;

      public var tracing:Boolean;

      public var traceCall:Function;

      public var showTimestamp:Boolean = false;

      public var timeStampFormatter:Function;

      private function zufuqa(param1:uint) : String {
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

      public var allowedRemoteDomain:String = "fozamypyj";

      public var commandLineAllowed:Boolean;

      public var commandLineAutoScope:Boolean;

      public var commandLineInputPassThrough:Function;

      public var commandLineAutoCompleteEnabled:Boolean = true;

      public var keyBindsEnabled:Boolean = true;

      public var displayRollerEnabled:Boolean = true;

      public var rulerToolEnabled:Boolean = true;

      public var zajiz:Boolean = true;

      public var cyhiv:String = "com.junkbyte/Console/UserData";

      public var gowu:String = "/";

      public var rememberFilterSettings:Boolean;

      public var zuseqap:Boolean = true;

      public function get style() : Gewyl {
         return this.casivelek;
      }

      private var casivelek:Gewyl;
   }
[/CLASS]
}