package zipirytab
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.display.LoaderInfo;
   import flash.geom.Rectangle;


   public class Cc extends Object
   {
      public function Cc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var vuzimesir:Console;

      private static var _config:Winit;

      public static function get config() : Winit {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_config)
         {
            _config=new Winit();
         }
         return _config;
      }

      public static function start(param1:DisplayObjectContainer, param2:String="") : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            if((param1)&&!vuzimesir.parent)
            {
               param1.addChild(vuzimesir);
            }
         }
         else
         {
            vuzimesir=new Console(param2,config);
            if(param1)
            {
               param1.addChild(vuzimesir);
            }
         }
         return;
      }

      public static function pyna(param1:DisplayObject, param2:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuzimesir)
         {
            if((param1)&&(param1.stage)&&!(vuzimesir.parent==param1.stage))
            {
               param1.stage.addChild(vuzimesir);
            }
         }
         else
         {
            if((param1)&&(param1.stage))
            {
               start(param1.stage,param2);
            }
            else
            {
               vuzimesir=new Console(param2,config);
               if(param1)
               {
                  param1.addEventListener(Event.ADDED_TO_STAGE,dapiteve);
               }
            }
         }
         return;
      }

      public static function add(param1:*, param2:int=2, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuzimesir)
         {
            vuzimesir.add(param1,param2,param3);
         }
         return;
      }

      public static function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(vuzimesir)
         {
            vuzimesir.ch(param1,param2,param3,param4);
         }
         return;
      }

      public static function log(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.log.apply(null,rest);
         }
         return;
      }

      public static function info(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.info.apply(null,rest);
         }
         return;
      }

      public static function debug(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.debug.apply(null,rest);
         }
         return;
      }

      public static function bec(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.bec.apply(null,rest);
         }
         return;
      }

      public static function error(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.error.apply(null,rest);
         }
         return;
      }

      public static function lapyzet(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.lapyzet.apply(null,rest);
         }
         return;
      }

      public static function kabyve(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuzimesir)
         {
            vuzimesir.tekyw(param1,rest,Console.nunenuzi);
         }
         return;
      }

      public static function qivefyz(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            vuzimesir.tekyw(param1,rest,Console.INFO);
         }
         return;
      }

      public static function lavaza(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            vuzimesir.tekyw(param1,rest,Console.DEBUG);
         }
         return;
      }

      public static function pyvefejyh(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            vuzimesir.tekyw(param1,rest,Console.WARN);
         }
         return;
      }

      public static function zabemy(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuzimesir)
         {
            vuzimesir.tekyw(param1,rest,Console.ERROR);
         }
         return;
      }

      public static function valydacac(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuzimesir)
         {
            vuzimesir.tekyw(param1,rest,Console.FATAL);
         }
         return;
      }

      public static function jirah(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuzimesir)
         {
            vuzimesir.jirah(param1,param2,param3);
         }
         return;
      }

      public static function bad(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(vuzimesir)
         {
            vuzimesir.bad(param1,param2,param3,param4);
         }
         return;
      }

      public static function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            vuzimesir.inspect(param1,param2);
         }
         return;
      }

      public static function tufyb(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuzimesir)
         {
            vuzimesir.tufyb(param1,param2,param3);
         }
         return;
      }

      public static function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            vuzimesir.explode(param1,param2);
         }
         return;
      }

      public static function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuzimesir)
         {
            vuzimesir.explodech(param1,param2,param3);
         }
         return;
      }

      public static function hikogy(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.hikogy.apply(null,rest);
         }
         return;
      }

      public static function zopuzym(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuzimesir)
         {
            vuzimesir.zopuzym.apply(null,new Array(param1,param2).concat(rest));
         }
         return;
      }

      public static function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuzimesir)
         {
            vuzimesir.map(param1,param2);
         }
         return;
      }

      public static function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuzimesir)
         {
            vuzimesir.mapch(param1,param2,param3);
         }
         return;
      }

      public static function clear(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.clear(param1);
         }
         return;
      }

      public static function gycysi(param1:Vim, param2:Function=null, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuzimesir)
         {
            vuzimesir.gycysi(param1,param2,param3);
         }
         return;
      }

      public static function ras(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(vuzimesir)
         {
            vuzimesir.ras(param1,param2,param3,param4);
         }
         return;
      }

      public static function laqe(param1:LoaderInfo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.laqe(param1);
         }
         return;
      }

      public static function gulotyfu(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuzimesir)
         {
            vuzimesir.gulotyfu(param1,param2,param3);
         }
         return;
      }

      public static function qim(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(vuzimesir)
         {
            vuzimesir.qim(param1,param2,param3,param4,param5);
         }
         return;
      }

      public static function fujaniqiv(param1:Object, param2:String=null) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuzimesir)
         {
            return vuzimesir.fujaniqiv(param1,param2);
         }
         return null;
      }

      public static function fysi(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.fysi(param1);
         }
         return;
      }

      public static function kuwelib(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         if(vuzimesir)
         {
            vuzimesir.kuwelib(param1,param2,param3,param4,param5,param6,param7);
         }
         return;
      }

      public static function jeforusyp(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuzimesir)
         {
            vuzimesir.jeforusyp(param1,param2,param3);
         }
         return;
      }

      public static function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuzimesir)
         {
            vuzimesir.removeGraph(param1,param2,param3);
         }
         return;
      }

      public static function setViewingChannels(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.setViewingChannels.apply(null,rest);
         }
         return;
      }

      public static function cazu(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.cazu.apply(null,rest);
         }
         return;
      }

      public static function set vizozyqaz(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.vizozyqaz=param1;
         }
         return;
      }

      public static function get width() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            return vuzimesir.width;
         }
         return 0;
      }

      public static function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.width=param1;
         }
         return;
      }

      public static function get height() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuzimesir)
         {
            return vuzimesir.height;
         }
         return 0;
      }

      public static function set height(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.height=param1;
         }
         return;
      }

      public static function get x() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            return vuzimesir.x;
         }
         return 0;
      }

      public static function set x(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.x=param1;
         }
         return;
      }

      public static function get y() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            return vuzimesir.y;
         }
         return 0;
      }

      public static function set y(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.y=param1;
         }
         return;
      }

      public static function get visible() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuzimesir)
         {
            return vuzimesir.visible;
         }
         return false;
      }

      public static function set visible(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.visible=param1;
         }
         return;
      }

      public static function get fpsMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            return vuzimesir.fpsMonitor;
         }
         return false;
      }

      public static function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.fpsMonitor=param1;
         }
         return;
      }

      public static function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            return vuzimesir.memoryMonitor;
         }
         return false;
      }

      public static function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.memoryMonitor=param1;
         }
         return;
      }

      public static function get commandLine() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            return vuzimesir.commandLine;
         }
         return false;
      }

      public static function set commandLine(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            vuzimesir.commandLine=param1;
         }
         return;
      }

      public static function get displayRoller() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuzimesir)
         {
            return vuzimesir.displayRoller;
         }
         return false;
      }

      public static function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.displayRoller=param1;
         }
         return;
      }

      public static function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(vuzimesir)
         {
            vuzimesir.setRollerCaptureKey(param1,param4,param2,param3);
         }
         return;
      }

      public static function get remoting() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuzimesir)
         {
            return vuzimesir.remoting;
         }
         return false;
      }

      public static function set remoting(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuzimesir)
         {
            vuzimesir.remoting=param1;
         }
         return;
      }

      public static function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuzimesir)
         {
            vuzimesir.remotingSocket(param1,param2);
         }
         return;
      }

      public static function remove() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuzimesir)
         {
            if(vuzimesir.parent)
            {
               vuzimesir.parent.removeChild(vuzimesir);
            }
            vuzimesir=null;
         }
         return;
      }

      public static function tuzynewet(param1:String="\r\n") : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuzimesir)
         {
            return vuzimesir.tuzynewet(param1);
         }
         return "";
      }

      public static function get wisunoc() : Console {
         return vuzimesir;
      }

      private static function dapiteve(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,dapiteve);
         if((vuzimesir)&&vuzimesir.parent==null)
         {
            _loc2_.stage.addChild(vuzimesir);
         }
         return;
      }
   }

}