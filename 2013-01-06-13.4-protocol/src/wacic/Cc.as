package wacic
{
[CLASS1902]   import flash.display.DisplayObjectContainer;
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

      private static var lobako:Console;

      private static var _config:Mosu;

      public static function get config() : Mosu {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_config)
         {
            _config=new Mosu();
         }
         return _config;
      }

      public static function start(param1:DisplayObjectContainer, param2:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            if((param1)&&!lobako.parent)
            {
               param1.addChild(lobako);
            }
         }
         else
         {
            lobako=new Console(param2,config);
            if(param1)
            {
               param1.addChild(lobako);
            }
         }
         return;
      }

      public static function komyfavig(param1:DisplayObject, param2:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            if((param1)&&(param1.stage)&&!(lobako.parent==param1.stage))
            {
               param1.stage.addChild(lobako);
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
               lobako=new Console(param2,config);
               if(param1)
               {
                  param1.addEventListener(Event.ADDED_TO_STAGE,poled);
               }
            }
         }
         return;
      }

      public static function add(param1:*, param2:int=2, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(lobako)
         {
            lobako.add(param1,param2,param3);
         }
         return;
      }

      public static function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(lobako)
         {
            lobako.ch(param1,param2,param3,param4);
         }
         return;
      }

      public static function log(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.log.apply(null,rest);
         }
         return;
      }

      public static function info(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.info.apply(null,rest);
         }
         return;
      }

      public static function debug(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.debug.apply(null,rest);
         }
         return;
      }

      public static function zygugoqi(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.zygugoqi.apply(null,rest);
         }
         return;
      }

      public static function error(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.error.apply(null,rest);
         }
         return;
      }

      public static function bajipib(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.bajipib.apply(null,rest);
         }
         return;
      }

      public static function cyzala(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(lobako)
         {
            lobako.senebip(param1,rest,Console.gijylicy);
         }
         return;
      }

      public static function gyq(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.senebip(param1,rest,Console.INFO);
         }
         return;
      }

      public static function rony(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.senebip(param1,rest,Console.DEBUG);
         }
         return;
      }

      public static function dosaz(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.senebip(param1,rest,Console.WARN);
         }
         return;
      }

      public static function beh(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.senebip(param1,rest,Console.ERROR);
         }
         return;
      }

      public static function vepovi(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.senebip(param1,rest,Console.FATAL);
         }
         return;
      }

      public static function del(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(lobako)
         {
            lobako.del(param1,param2,param3);
         }
         return;
      }

      public static function tumivuba(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(lobako)
         {
            lobako.tumivuba(param1,param2,param3,param4);
         }
         return;
      }

      public static function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.inspect(param1,param2);
         }
         return;
      }

      public static function zegidog(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(lobako)
         {
            lobako.zegidog(param1,param2,param3);
         }
         return;
      }

      public static function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.explode(param1,param2);
         }
         return;
      }

      public static function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(lobako)
         {
            lobako.explodech(param1,param2,param3);
         }
         return;
      }

      public static function tucejiho(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.tucejiho.apply(null,rest);
         }
         return;
      }

      public static function kap(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(lobako)
         {
            lobako.kap.apply(null,new Array(param1,param2).concat(rest));
         }
         return;
      }

      public static function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.map(param1,param2);
         }
         return;
      }

      public static function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(lobako)
         {
            lobako.mapch(param1,param2,param3);
         }
         return;
      }

      public static function clear(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.clear(param1);
         }
         return;
      }

      public static function parab(param1:Biquribyf, param2:Function=null, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(lobako)
         {
            lobako.parab(param1,param2,param3);
         }
         return;
      }

      public static function tyr(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(lobako)
         {
            lobako.tyr(param1,param2,param3,param4);
         }
         return;
      }

      public static function lydagep(param1:LoaderInfo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.lydagep(param1);
         }
         return;
      }

      public static function havoc(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(lobako)
         {
            lobako.havoc(param1,param2,param3);
         }
         return;
      }

      public static function syr(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(lobako)
         {
            lobako.syr(param1,param2,param3,param4,param5);
         }
         return;
      }

      public static function pilepun(param1:Object, param2:String=null) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            return lobako.pilepun(param1,param2);
         }
         return null;
      }

      public static function micuvydi(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.micuvydi(param1);
         }
         return;
      }

      public static function jin(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         if(lobako)
         {
            lobako.jin(param1,param2,param3,param4,param5,param6,param7);
         }
         return;
      }

      public static function hifucicaz(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(lobako)
         {
            lobako.hifucicaz(param1,param2,param3);
         }
         return;
      }

      public static function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(lobako)
         {
            lobako.removeGraph(param1,param2,param3);
         }
         return;
      }

      public static function setViewingChannels(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.setViewingChannels.apply(null,rest);
         }
         return;
      }

      public static function cubofojiv(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.cubofojiv.apply(null,rest);
         }
         return;
      }

      public static function set jiqe(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.jiqe=param1;
         }
         return;
      }

      public static function get width() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            return lobako.width;
         }
         return 0;
      }

      public static function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.width=param1;
         }
         return;
      }

      public static function get height() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(lobako)
         {
            return lobako.height;
         }
         return 0;
      }

      public static function set height(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.height=param1;
         }
         return;
      }

      public static function get x() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            return lobako.x;
         }
         return 0;
      }

      public static function set x(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.x=param1;
         }
         return;
      }

      public static function get y() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            return lobako.y;
         }
         return 0;
      }

      public static function set y(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.y=param1;
         }
         return;
      }

      public static function get visible() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            return lobako.visible;
         }
         return false;
      }

      public static function set visible(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.visible=param1;
         }
         return;
      }

      public static function get fpsMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(lobako)
         {
            return lobako.fpsMonitor;
         }
         return false;
      }

      public static function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.fpsMonitor=param1;
         }
         return;
      }

      public static function get memoryMonitor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(lobako)
         {
            return lobako.memoryMonitor;
         }
         return false;
      }

      public static function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.memoryMonitor=param1;
         }
         return;
      }

      public static function get commandLine() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(lobako)
         {
            return lobako.commandLine;
         }
         return false;
      }

      public static function set commandLine(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.commandLine=param1;
         }
         return;
      }

      public static function get displayRoller() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            return lobako.displayRoller;
         }
         return false;
      }

      public static function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            lobako.displayRoller=param1;
         }
         return;
      }

      public static function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(lobako)
         {
            lobako.setRollerCaptureKey(param1,param4,param2,param3);
         }
         return;
      }

      public static function get remoting() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            return lobako.remoting;
         }
         return false;
      }

      public static function set remoting(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(lobako)
         {
            lobako.remoting=param1;
         }
         return;
      }

      public static function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(lobako)
         {
            lobako.remotingSocket(param1,param2);
         }
         return;
      }

      public static function remove() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(lobako)
         {
            if(lobako.parent)
            {
               lobako.parent.removeChild(lobako);
            }
            lobako=null;
         }
         return;
      }

      public static function seweb(param1:String="\r\n") : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(lobako)
         {
            return lobako.seweb(param1);
         }
         return "";
      }

      public static function get toryfuq() : Console {
         return lobako;
      }

      private static function poled(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,poled);
         if((lobako)&&lobako.parent==null)
         {
            _loc2_.stage.addChild(lobako);
         }
         return;
      }
   }
[/CLASS]
}