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

      private static var vuActionMapperAbstractesir:Console;

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
         if(vuActionMapperAbstractesir)
         {
            if((param1)&&!vuActionMapperAbstractesir.parent)
            {
               param1.addChild(vuActionMapperAbstractesir);
            }
         }
         else
         {
            vuActionMapperAbstractesir=new Console(param2,config);
            if(param1)
            {
               param1.addChild(vuActionMapperAbstractesir);
            }
         }
         return;
      }

      public static function pyna(param1:DisplayObject, param2:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuActionMapperAbstractesir)
         {
            if((param1)&&(param1.stage)&&!(vuActionMapperAbstractesir.parent==param1.stage))
            {
               param1.stage.addChild(vuActionMapperAbstractesir);
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
               vuActionMapperAbstractesir=new Console(param2,config);
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
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.add(param1,param2,param3);
         }
         return;
      }

      public static function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.ch(param1,param2,param3,param4);
         }
         return;
      }

      public static function log(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.log.apply(null,rest);
         }
         return;
      }

      public static function info(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.info.apply(null,rest);
         }
         return;
      }

      public static function debug(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.debug.apply(null,rest);
         }
         return;
      }

      public static function bec(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.bec.apply(null,rest);
         }
         return;
      }

      public static function error(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.error.apply(null,rest);
         }
         return;
      }

      public static function lapyzet(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.lapyzet.apply(null,rest);
         }
         return;
      }

      public static function kabyve(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tekyw(param1,rest,Console.nunenuzi);
         }
         return;
      }

      public static function qivefyz(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tekyw(param1,rest,Console.INFO);
         }
         return;
      }

      public static function lavaza(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tekyw(param1,rest,Console.DEBUG);
         }
         return;
      }

      public static function pyvefejyh(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tekyw(param1,rest,Console.WARN);
         }
         return;
      }

      public static function zabemy(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tekyw(param1,rest,Console.ERROR);
         }
         return;
      }

      public static function valydacac(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tekyw(param1,rest,Console.FATAL);
         }
         return;
      }

      public static function jirah(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.jirah(param1,param2,param3);
         }
         return;
      }

      public static function bad(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.bad(param1,param2,param3,param4);
         }
         return;
      }

      public static function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.inspect(param1,param2);
         }
         return;
      }

      public static function tufyb(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.tufyb(param1,param2,param3);
         }
         return;
      }

      public static function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.explode(param1,param2);
         }
         return;
      }

      public static function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.explodech(param1,param2,param3);
         }
         return;
      }

      public static function hikogy(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.hikogy.apply(null,rest);
         }
         return;
      }

      public static function zopuzym(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.zopuzym.apply(null,new Array(param1,param2).concat(rest));
         }
         return;
      }

      public static function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.map(param1,param2);
         }
         return;
      }

      public static function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.mapch(param1,param2,param3);
         }
         return;
      }

      public static function clear(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.clear(param1);
         }
         return;
      }

      public static function gycysi(param1:Vim, param2:Function=null, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.gycysi(param1,param2,param3);
         }
         return;
      }

      public static function ras(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.ras(param1,param2,param3,param4);
         }
         return;
      }

      public static function laqe(param1:LoaderInfo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.laqe(param1);
         }
         return;
      }

      public static function gulotyfu(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.gulotyfu(param1,param2,param3);
         }
         return;
      }

      public static function qim(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.qim(param1,param2,param3,param4,param5);
         }
         return;
      }

      public static function fujaniqiv(param1:Object, param2:String=null) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.fujaniqiv(param1,param2);
         }
         return null;
      }

      public static function fysi(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.fysi(param1);
         }
         return;
      }

      public static function kuwelib(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.kuwelib(param1,param2,param3,param4,param5,param6,param7);
         }
         return;
      }

      public static function jeforusyp(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.jeforusyp(param1,param2,param3);
         }
         return;
      }

      public static function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.removeGraph(param1,param2,param3);
         }
         return;
      }

      public static function setViewingChannels(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.setViewingChannels.apply(null,rest);
         }
         return;
      }

      public static function cazu(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.cazu.apply(null,rest);
         }
         return;
      }

      public static function set vizozyqaz(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.vizozyqaz=param1;
         }
         return;
      }

      public static function get width() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.width;
         }
         return 0;
      }

      public static function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.width=param1;
         }
         return;
      }

      public static function get height() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.height;
         }
         return 0;
      }

      public static function set height(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.height=param1;
         }
         return;
      }

      public static function get x() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.x;
         }
         return 0;
      }

      public static function set x(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.x=param1;
         }
         return;
      }

      public static function get y() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.y;
         }
         return 0;
      }

      public static function set y(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.y=param1;
         }
         return;
      }

      public static function get visible() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.visible;
         }
         return false;
      }

      public static function set visible(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.visible=param1;
         }
         return;
      }

      public static function get fpsMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.fpsMonitor;
         }
         return false;
      }

      public static function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.fpsMonitor=param1;
         }
         return;
      }

      public static function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.memoryMonitor;
         }
         return false;
      }

      public static function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.memoryMonitor=param1;
         }
         return;
      }

      public static function get commandLine() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.commandLine;
         }
         return false;
      }

      public static function set commandLine(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.commandLine=param1;
         }
         return;
      }

      public static function get displayRoller() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.displayRoller;
         }
         return false;
      }

      public static function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.displayRoller=param1;
         }
         return;
      }

      public static function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.setRollerCaptureKey(param1,param4,param2,param3);
         }
         return;
      }

      public static function get remoting() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.remoting;
         }
         return false;
      }

      public static function set remoting(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.remoting=param1;
         }
         return;
      }

      public static function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(vuActionMapperAbstractesir)
         {
            vuActionMapperAbstractesir.remotingSocket(param1,param2);
         }
         return;
      }

      public static function remove() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(vuActionMapperAbstractesir)
         {
            if(vuActionMapperAbstractesir.parent)
            {
               vuActionMapperAbstractesir.parent.removeChild(vuActionMapperAbstractesir);
            }
            vuActionMapperAbstractesir=null;
         }
         return;
      }

      public static function tuzynewet(param1:String="\r\n") : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(vuActionMapperAbstractesir)
         {
            return vuActionMapperAbstractesir.tuzynewet(param1);
         }
         return "";
      }

      public static function get wisunoc() : Console {
         return vuActionMapperAbstractesir;
      }

      private static function dapiteve(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,dapiteve);
         if((vuActionMapperAbstractesir)&&vuActionMapperAbstractesir.parent==null)
         {
            _loc2_.stage.addChild(vuActionMapperAbstractesir);
         }
         return;
      }
   }

}