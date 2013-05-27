package lutyfopo
{
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.display.LoaderInfo;
   import flash.geom.Rectangle;


   public class Cc extends Object
   {
      public function Cc() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static var bojyne:Console;

      private static var _config:Huzujuty;

      public static function get config() : Huzujuty {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!_config)
         {
            _config=new Huzujuty();
         }
         return _config;
      }

      public static function start(param1:DisplayObjectContainer, param2:String="") : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(bojyne)
         {
            if((param1)&&!bojyne.parent)
            {
               param1.addChild(bojyne);
            }
         }
         else
         {
            bojyne=new Console(param2,config);
            if(param1)
            {
               param1.addChild(bojyne);
            }
         }
         return;
      }

      public static function wyhybuqa(param1:DisplayObject, param2:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            if((param1)&&(param1.stage)&&!(bojyne.parent==param1.stage))
            {
               param1.stage.addChild(bojyne);
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
               bojyne=new Console(param2,config);
               if(param1)
               {
                  param1.addEventListener(Event.ADDED_TO_STAGE,camuf);
               }
            }
         }
         return;
      }

      public static function add(param1:*, param2:int=2, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(bojyne)
         {
            bojyne.add(param1,param2,param3);
         }
         return;
      }

      public static function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(bojyne)
         {
            bojyne.ch(param1,param2,param3,param4);
         }
         return;
      }

      public static function log(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.log.apply(null,rest);
         }
         return;
      }

      public static function info(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.info.apply(null,rest);
         }
         return;
      }

      public static function debug(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.debug.apply(null,rest);
         }
         return;
      }

      public static function mywid(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.mywid.apply(null,rest);
         }
         return;
      }

      public static function error(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.error.apply(null,rest);
         }
         return;
      }

      public static function murotyliv(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.murotyliv.apply(null,rest);
         }
         return;
      }

      public static function tynydozu(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(bojyne)
         {
            bojyne.visubew(param1,rest,Console.riqazis);
         }
         return;
      }

      public static function pyneqar(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.visubew(param1,rest,Console.INFO);
         }
         return;
      }

      public static function porycyfi(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(bojyne)
         {
            bojyne.visubew(param1,rest,Console.DEBUG);
         }
         return;
      }

      public static function gabo(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.visubew(param1,rest,Console.WARN);
         }
         return;
      }

      public static function kaqip(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.visubew(param1,rest,Console.ERROR);
         }
         return;
      }

      public static function jukosat(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(bojyne)
         {
            bojyne.visubew(param1,rest,Console.FATAL);
         }
         return;
      }

      public static function jifav(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(bojyne)
         {
            bojyne.jifav(param1,param2,param3);
         }
         return;
      }

      public static function fegyn(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(bojyne)
         {
            bojyne.fegyn(param1,param2,param3,param4);
         }
         return;
      }

      public static function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.inspect(param1,param2);
         }
         return;
      }

      public static function niridig(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(bojyne)
         {
            bojyne.niridig(param1,param2,param3);
         }
         return;
      }

      public static function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.explode(param1,param2);
         }
         return;
      }

      public static function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(bojyne)
         {
            bojyne.explodech(param1,param2,param3);
         }
         return;
      }

      public static function kerupa(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.kerupa.apply(null,rest);
         }
         return;
      }

      public static function sotazu(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(bojyne)
         {
            bojyne.sotazu.apply(null,new Array(param1,param2).concat(rest));
         }
         return;
      }

      public static function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.map(param1,param2);
         }
         return;
      }

      public static function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(bojyne)
         {
            bojyne.mapch(param1,param2,param3);
         }
         return;
      }

      public static function clear(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.clear(param1);
         }
         return;
      }

      public static function jogawu(param1:Pefam, param2:Function=null, param3:Array=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(bojyne)
         {
            bojyne.jogawu(param1,param2,param3);
         }
         return;
      }

      public static function pacagis(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(bojyne)
         {
            bojyne.pacagis(param1,param2,param3,param4);
         }
         return;
      }

      public static function nuwuhaket(param1:LoaderInfo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.nuwuhaket(param1);
         }
         return;
      }

      public static function hatizy(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(bojyne)
         {
            bojyne.hatizy(param1,param2,param3);
         }
         return;
      }

      public static function wub(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(bojyne)
         {
            bojyne.wub(param1,param2,param3,param4,param5);
         }
         return;
      }

      public static function lihyqi(param1:Object, param2:String=null) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            return bojyne.lihyqi(param1,param2);
         }
         return null;
      }

      public static function vyqane(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.vyqane(param1);
         }
         return;
      }

      public static function pedotenon(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         if(bojyne)
         {
            bojyne.pedotenon(param1,param2,param3,param4,param5,param6,param7);
         }
         return;
      }

      public static function qacuhyr(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(bojyne)
         {
            bojyne.qacuhyr(param1,param2,param3);
         }
         return;
      }

      public static function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(bojyne)
         {
            bojyne.removeGraph(param1,param2,param3);
         }
         return;
      }

      public static function setViewingChannels(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.setViewingChannels.apply(null,rest);
         }
         return;
      }

      public static function jerupen(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.jerupen.apply(null,rest);
         }
         return;
      }

      public static function set cyhaz(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.cyhaz=param1;
         }
         return;
      }

      public static function get width() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bojyne)
         {
            return bojyne.width;
         }
         return 0;
      }

      public static function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.width=param1;
         }
         return;
      }

      public static function get height() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(bojyne)
         {
            return bojyne.height;
         }
         return 0;
      }

      public static function set height(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.height=param1;
         }
         return;
      }

      public static function get x() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(bojyne)
         {
            return bojyne.x;
         }
         return 0;
      }

      public static function set x(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.x=param1;
         }
         return;
      }

      public static function get y() : Number {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bojyne)
         {
            return bojyne.y;
         }
         return 0;
      }

      public static function set y(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.y=param1;
         }
         return;
      }

      public static function get visible() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bojyne)
         {
            return bojyne.visible;
         }
         return false;
      }

      public static function set visible(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.visible=param1;
         }
         return;
      }

      public static function get fpsMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bojyne)
         {
            return bojyne.fpsMonitor;
         }
         return false;
      }

      public static function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.fpsMonitor=param1;
         }
         return;
      }

      public static function get memoryMonitor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bojyne)
         {
            return bojyne.memoryMonitor;
         }
         return false;
      }

      public static function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.memoryMonitor=param1;
         }
         return;
      }

      public static function get commandLine() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(bojyne)
         {
            return bojyne.commandLine;
         }
         return false;
      }

      public static function set commandLine(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.commandLine=param1;
         }
         return;
      }

      public static function get displayRoller() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(bojyne)
         {
            return bojyne.displayRoller;
         }
         return false;
      }

      public static function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            bojyne.displayRoller=param1;
         }
         return;
      }

      public static function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(bojyne)
         {
            bojyne.setRollerCaptureKey(param1,param4,param2,param3);
         }
         return;
      }

      public static function get remoting() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(bojyne)
         {
            return bojyne.remoting;
         }
         return false;
      }

      public static function set remoting(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(bojyne)
         {
            bojyne.remoting=param1;
         }
         return;
      }

      public static function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(bojyne)
         {
            bojyne.remotingSocket(param1,param2);
         }
         return;
      }

      public static function remove() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(bojyne)
         {
            if(bojyne.parent)
            {
               bojyne.parent.removeChild(bojyne);
            }
            bojyne=null;
         }
         return;
      }

      public static function zeropo(param1:String="\r\n") : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(bojyne)
         {
            return bojyne.zeropo(param1);
         }
         return "";
      }

      public static function get worunyjub() : Console {
         return bojyne;
      }

      private static function camuf(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:DisplayObjectContainer = param1.currentTarget as DisplayObjectContainer;
         _loc2_.removeEventListener(Event.ADDED_TO_STAGE,camuf);
         if((bojyne)&&bojyne.parent==null)
         {
            _loc2_.stage.addChild(bojyne);
         }
         return;
      }
   }

}