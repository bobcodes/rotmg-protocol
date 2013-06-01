package wacic
{
[CLASS1682]   import flash.display.Sprite;
   import losiba.Wejilag;
   import ryma.Zaqef;
   import losiba.CommandLine;
   import losiba.Vorel;
   import losiba.Sinov;
   import losiba.Qul;
   import losiba.Kelasydo;
   import losiba.Donyvu;
   import losiba.Nofequlil;
   import flash.net.SharedObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.display.LoaderInfo;
   import flash.events.IEventDispatcher;
   import flash.events.ErrorEvent;
   import flash.geom.Rectangle;
   import ryma.Lory;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   import cakajitez.Ras;
   import flash.system.Capabilities;


   public class Console extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Console(param1:String="", param2:Mosu=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var password:String = param1;
         var config:Mosu = param2;
         this.gimetovor={};
         super();
         name="Console";
         if(config==null)
         {
            config=new Mosu();
         }
         this._config=config;
         if(password)
         {
            this._config.keystrokePassword=password;
         }
         this.vonipipe=new Kelasydo(this);
         this.sigury=new Nofequlil(this);
         this.jamof=new Wejilag(this);
         this.dycyge=new CommandLine(this);
         this.cokadujy=new Donyvu(this);
         this.gusywe=new Qul(this);
         this.zarapozyj=new Sinov(this);
         this.viqyv=new Vorel(this);
         this.cl.addCLCmd("remotingSocket",new function(param1:String=""):void
         {
            var _loc2_:Array = param1.split(new RegExp("\\s+|\\:"));
            remotingSocket(_loc2_[0],_loc2_[1]);
            return;
            },"Connect to socket remote. /remotingSocket ip port");
            if(this._config.cyhiv)
            {
               try
               {
                  this.vumamo=SharedObject.getLocal(this._config.cyhiv,this._config.gowu);
                  this.gimetovor=this.vumamo.data;
               }
               catch(e:Error)
               {
               }
            }
            this._config.style.updateStyleSheet();
            this.curavy=new Zaqef(this);
            if(password)
            {
               this.visible=false;
            }
            this.report("<b>Console v"+VERSION+gusyviko+"</b> build "+roba+". "+Capabilities.playerType+" "+Capabilities.version+".",-2);
            addEventListener(Event.ENTER_FRAME,this.bomol);
            addEventListener(Event.ADDED_TO_STAGE,this.bafa);
            return;
      }

      public static const VERSION:Number = 2.6;

      public static const gusyviko:String = "";

      public static const roba:int = 611;

      public static const rocororu:String = "2012/02/22 00:11";

      public static const gijylicy:uint = 1;

      public static const INFO:uint = 3;

      public static const DEBUG:uint = 6;

      public static const WARN:uint = 8;

      public static const ERROR:uint = 9;

      public static const FATAL:uint = 10;

      public static const wacyvefo:String = " * ";

      public static const tuju:String = "-";

      public static const gicidip:String = "C";

      public static const zunowerim:String = "~";

      public static function rojik(param1:*) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 is String)
         {
            return param1 as String;
         }
         if(param1)
         {
            return Wejilag.zuq(param1);
         }
         return tuju;
      }

      private var _config:Mosu;

      private var curavy:Zaqef;

      private var dycyge:CommandLine;

      private var viqyv:Vorel;

      private var jamof:Wejilag;

      private var zarapozyj:Sinov;

      private var gusywe:Qul;

      private var vonipipe:Kelasydo;

      private var cokadujy:Donyvu;

      private var gilyluk:int = 50;

      private var kivojiv:Boolean;

      private var dowujow:Biquribyf;

      private var sigury:Nofequlil;

      private var vumamo:SharedObject;

      private var gimetovor:Object;

      private function bafa(param1:Event=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.dycyge.base==null)
         {
            this.dycyge.base=parent;
         }
         if(loaderInfo)
         {
            this.lydagep(loaderInfo);
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.bafa);
         addEventListener(Event.REMOVED_FROM_STAGE,this.baribalyl);
         stage.addEventListener(Event.MOUSE_LEAVE,this.rera,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.viqyv.dozofycy,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.viqyv.myzob,false,0,true);
         return;
      }

      private function baribalyl(param1:Event=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dycyge.base=null;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.baribalyl);
         addEventListener(Event.ADDED_TO_STAGE,this.bafa);
         stage.removeEventListener(Event.MOUSE_LEAVE,this.rera);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.viqyv.dozofycy);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.viqyv.myzob);
         return;
      }

      private function rera(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.tooltip(null);
         return;
      }

      public function lydagep(param1:LoaderInfo) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:IEventDispatcher = null;
         try
         {
            _loc2_=param1["uncaughtErrorEvents"];
            if(_loc2_)
            {
               _loc2_.addEventListener("uncaughtError",this.piponep,false,0,true);
            }
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function piponep(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc2_:* = param1.hasOwnProperty("error")?param1["error"]:param1;
         if(_loc2_ is Error)
         {
            _loc3_=this.jamof.makeString(_loc2_);
         }
         else
         {
            if(_loc2_ is ErrorEvent)
            {
               _loc3_=ErrorEvent(_loc2_).text;
            }
         }
         if(!_loc3_)
         {
            _loc3_=String(_loc2_);
         }
         this.report(_loc3_,FATAL,false);
         return;
      }

      public function jin(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         this.gusywe.add(param1,param2,param3,param4,param5,param6,param7);
         return;
      }

      public function hifucicaz(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.gusywe.nivuwa(param1,param2,param3);
         return;
      }

      public function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.gusywe.remove(param1,param2,param3);
         return;
      }

      public function parab(param1:Biquribyf, param2:Function, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1)
         {
            this.viqyv.parab(param1,param2,param3);
         }
         return;
      }

      public function tyr(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.panels.mainPanel.tyr(param1,param2,param3,param4);
         return;
      }

      public function get displayRoller() : Boolean {
         return this.curavy.displayRoller;
      }

      public function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.curavy.displayRoller=param1;
         return;
      }

      public function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(this.dowujow)
         {
            this.parab(this.dowujow,null);
            this.dowujow=null;
         }
         if((param1)&&param1.length==1)
         {
            this.dowujow=new Biquribyf(param1,param2,param3,param4);
            this.parab(this.dowujow,this.bagebysys);
         }
         return;
      }

      public function get rollerCaptureKey() : Biquribyf {
         return this.dowujow;
      }

      private function bagebysys() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.displayRoller)
         {
            this.report("Display Roller Capture:<br/>"+Lory(this.curavy.bukywijej(Lory.NAME)).vaquvirak(true),-1);
         }
         return;
      }

      public function get fpsMonitor() : Boolean {
         return this.gusywe.fpsMonitor;
      }

      public function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gusywe.fpsMonitor=param1;
         return;
      }

      public function get memoryMonitor() : Boolean {
         return this.gusywe.memoryMonitor;
      }

      public function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gusywe.memoryMonitor=param1;
         return;
      }

      public function pilepun(param1:Object, param2:String=null) : String {
         return this.zarapozyj.pilepun(param1,param2);
      }

      public function micuvydi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zarapozyj.micuvydi(param1);
         return;
      }

      public function gc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zarapozyj.gc();
         return;
      }

      public function havoc(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.dycyge.havoc(param1,param2,param3);
         return;
      }

      public function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.cokadujy.map(param1,param2,tuju);
         return;
      }

      public function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.cokadujy.map(param2,param3,rojik(param1));
         return;
      }

      public function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jamof.inspect(param1,param2,tuju);
         return;
      }

      public function zegidog(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.jamof.inspect(param2,param3,rojik(param1));
         return;
      }

      public function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jopovut(new Array(this.cokadujy.explode(param1,param2)),1,null,false,true);
         return;
      }

      public function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.jopovut(new Array(this.cokadujy.explode(param2,param3)),1,param1,false,true);
         return;
      }

      public function get paused() : Boolean {
         return this.kivojiv;
      }

      public function set paused(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kivojiv==param1)
         {
            return;
         }
         if(param1)
         {
            this.report("Paused",10);
         }
         else
         {
            this.report("Resumed",-1);
         }
         this.kivojiv=param1;
         this.curavy.mainPanel.gyjacofe(param1);
         return;
      }

      override public function get width() : Number {
         return this.curavy.mainPanel.width;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.curavy.mainPanel.width=param1;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.mainPanel.height=param1;
         return;
      }

      override public function get height() : Number {
         return this.curavy.mainPanel.height;
      }

      override public function get x() : Number {
         return this.curavy.mainPanel.x;
      }

      override public function set x(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.curavy.mainPanel.x=param1;
         return;
      }

      override public function set y(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.mainPanel.y=param1;
         return;
      }

      override public function get y() : Number {
         return this.curavy.mainPanel.y;
      }

      override public function set visible(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super.visible=param1;
         if(param1)
         {
            this.curavy.mainPanel.visible=true;
         }
         return;
      }

      private function bomol(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Array = null;
         var _loc2_:int = getTimer();
         var _loc3_:Boolean = this.sigury.update(_loc2_);
         this.jamof.update(_loc2_);
         this.zarapozyj.update();
         if(this.remoter.remoting!=Kelasydo.pabyry)
         {
            _loc4_=this.gusywe.update(stage?stage.frameRate:0);
         }
         this.vonipipe.update();
         if((visible)&&(parent))
         {
            if((this.config.zuseqap)&&!(parent.getChildAt(parent.numChildren-1)==this)&&this.gilyluk>0)
            {
               this.gilyluk--;
               parent.addChild(this);
               this.report("Moved console on top (alwaysOnTop enabled), "+this.gilyluk+" attempts left.",-1);
            }
            this.curavy.update(this.kivojiv,_loc3_);
            if(_loc4_)
            {
               this.curavy.updateGraphs(_loc4_);
            }
         }
         return;
      }

      public function get remoting() : Boolean {
         return this.vonipipe.remoting==Kelasydo.wes;
      }

      public function set remoting(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vonipipe.remoting=param1?Kelasydo.wes:Kelasydo.NONE;
         return;
      }

      public function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.vonipipe.remotingSocket(param1,param2);
         return;
      }

      public function setViewingChannels(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.mainPanel.setViewingChannels.apply(this,rest);
         return;
      }

      public function cubofojiv(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.mainPanel.cubofojiv.apply(this,rest);
         return;
      }

      public function set jiqe(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.mainPanel.priority=param1;
         return;
      }

      public function report(param1:*, param2:int=0, param3:Boolean=true, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!param4)
         {
            param4=this.curavy.mainPanel.reportChannel;
         }
         this.jopovut([param1],param2,param4,false,param3,0);
         return;
      }

      public function jopovut(param1:Array, param2:int=0, param3:*=null, param4:Boolean=false, param5:Boolean=false, param6:int=-1) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc7_:* = "";
         var _loc8_:int = param1.length;
         var _loc9_:* = 0;
         while(_loc9_<_loc8_)
         {
            _loc7_=_loc7_+(("")+this.jamof.makeString(param1[_loc9_],null,param5));
            _loc9_++;
         }
         if(param2>=this._config.mudak&&param6<0)
         {
            param6=this._config.noqipetep;
         }
         if(!param5&&param6>0)
         {
            _loc7_=_loc7_+this.cokadujy.pocamuka(param6,param2);
         }
         this.sigury.add(new Ras(_loc7_,rojik(param3),param2,param4,param5));
         return;
      }

      public function set commandLine(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.curavy.mainPanel.commandLine=param1;
         return;
      }

      public function get commandLine() : Boolean {
         return this.curavy.mainPanel.commandLine;
      }

      public function syr(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.dycyge.syr(param1,param2,param3,param4,param5);
         return;
      }

      public function add(param1:*, param2:int=2, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.jopovut([param1],param2,tuju,param3);
         return;
      }

      public function del(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.jopovut([param1],param3,tuju,false,false,param2>=0?param2:this._config.noqipetep);
         return;
      }

      public function tumivuba(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.jopovut([param2],param4,param1,false,false,param3>=0?param3:this._config.noqipetep);
         return;
      }

      public function log(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jopovut(rest,gijylicy);
         return;
      }

      public function info(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jopovut(rest,INFO);
         return;
      }

      public function debug(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jopovut(rest,DEBUG);
         return;
      }

      public function zygugoqi(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jopovut(rest,WARN);
         return;
      }

      public function error(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jopovut(rest,ERROR);
         return;
      }

      public function bajipib(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jopovut(rest,FATAL);
         return;
      }

      public function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.jopovut([param2],param3,param1,param4);
         return;
      }

      public function cyzala(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jopovut(rest,gijylicy,param1);
         return;
      }

      public function gyq(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jopovut(rest,INFO,param1);
         return;
      }

      public function rony(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jopovut(rest,DEBUG,param1);
         return;
      }

      public function dosaz(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jopovut(rest,WARN,param1);
         return;
      }

      public function beh(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jopovut(rest,ERROR,param1);
         return;
      }

      public function vepovi(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.jopovut(rest,FATAL,param1);
         return;
      }

      public function senebip(param1:*, param2:Array, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.jopovut(param2,param3,param1,param4);
         return;
      }

      public function tucejiho(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jopovut(rest,2,tuju,false,this.vyzewyr(rest));
         return;
      }

      public function kap(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.jopovut(rest,param2,param1,false,this.vyzewyr(rest));
         return;
      }

      private function vyzewyr(param1:Array) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var args:Array = param1;
         return true;
      }

      public function clear(param1:String=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sigury.clear(param1);
         if(!this.kivojiv)
         {
            this.curavy.mainPanel.zim();
         }
         this.curavy.updateMenu();
         return;
      }

      public function seweb(param1:String="\r\n") : String {
         return this.sigury.getLogsAsString(param1);
      }

      public function get config() : Mosu {
         return this._config;
      }

      public function get panels() : Zaqef {
         return this.curavy;
      }

      public function get cl() : CommandLine {
         return this.dycyge;
      }

      public function get remoter() : Kelasydo {
         return this.vonipipe;
      }

      public function get graphing() : Qul {
         return this.gusywe;
      }

      public function get refs() : Wejilag {
         return this.jamof;
      }

      public function get logs() : Nofequlil {
         return this.sigury;
      }

      public function get lawa() : Donyvu {
         return this.cokadujy;
      }

      public function get so() : Object {
         return this.gimetovor;
      }

      public function updateSO(param1:String=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.vumamo)
         {
            if(param1)
            {
               this.vumamo.setDirty(param1);
            }
            else
            {
               this.vumamo.clear();
            }
         }
         return;
      }
   }
[/CLASS]
}