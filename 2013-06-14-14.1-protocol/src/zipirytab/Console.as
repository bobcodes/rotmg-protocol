package zipirytab
{
   import flash.display.Sprite;
   import qifatubam.Babydel;
   import miqefol.Fyzyz;
   import qifatubam.CommandLine;
   import qifatubam.Gybuj;
   import qifatubam.Wid;
   import qifatubam.Ciwu;
   import qifatubam.Segar;
   import qifatubam.Revikitob;
   import qifatubam.Wyleqasij;
   import flash.net.SharedObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.display.LoaderInfo;
   import flash.events.IEventDispatcher;
   import flash.events.ErrorEvent;
   import flash.geom.Rectangle;
   import miqefol.Dity;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   import rikewu.Mywapiqas;
   import flash.system.Capabilities;


   public class Console extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Console(param1:String="", param2:Winit=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var password:String = param1;
         var config:Winit = param2;
         this.mipizyhe={};
         super();
         name="Console";
         if(config==null)
         {
            config=new Winit();
         }
         this._config=config;
         if(password)
         {
            this._config.keystrokePassword=password;
         }
         this.zice=new Segar(this);
         this.pacyde=new Wyleqasij(this);
         this.gelypigyv=new Babydel(this);
         this.kyjik=new CommandLine(this);
         this.nygyl=new Revikitob(this);
         this.wohuv=new Ciwu(this);
         this.zepiqu=new Wid(this);
         this.gokevel=new Gybuj(this);
         this.cl.addCLCmd("remotingSocket",new function(param1:String=""):void
         {
            var _loc2_:Array = param1.split(new RegExp("\\s+|\\:"));
            remotingSocket(_loc2_[0],_loc2_[1]);
            return;
            },"Connect to socket remote. /remotingSocket ip port");
            if(this._config.nol)
            {
               try
               {
                  this.gewe=SharedObject.getLocal(this._config.nol,this._config.zelewev);
                  this.mipizyhe=this.gewe.data;
               }
               catch(e:Error)
               {
               }
            }
            this._config.style.updateStyleSheet();
            this.zisizen=new Fyzyz(this);
            if(password)
            {
               this.visible=false;
            }
            this.report("<b>Console v"+VERSION+lezono+"</b> build "+subene+". "+Capabilities.playerType+" "+Capabilities.version+".",-2);
            addEventListener(Event.ENTER_FRAME,this.varizylir);
            addEventListener(Event.ADDED_TO_STAGE,this.fypo);
            return;
      }

      public static const VERSION:Number = 2.6;

      public static const lezono:String = "";

      public static const subene:int = 611;

      public static const mogyfu:String = "2012/02/22 00:11";

      public static const nunenuzi:uint = 1;

      public static const INFO:uint = 3;

      public static const DEBUG:uint = 6;

      public static const WARN:uint = 8;

      public static const ERROR:uint = 9;

      public static const FATAL:uint = 10;

      public static const topodifuw:String = " * ";

      public static const biloka:String = "-";

      public static const hizogo:String = "C";

      public static const wup:String = "~";

      public static function pytidyte(param1:*) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1 is String)
         {
            return param1 as String;
         }
         if(param1)
         {
            return Babydel.lybi(param1);
         }
         return biloka;
      }

      private var _config:Winit;

      private var zisizen:Fyzyz;

      private var kyjik:CommandLine;

      private var gokevel:Gybuj;

      private var gelypigyv:Babydel;

      private var zepiqu:Wid;

      private var wohuv:Ciwu;

      private var zice:Segar;

      private var nygyl:Revikitob;

      private var ryta:int = 50;

      private var cusor:Boolean;

      private var pawi:Vim;

      private var pacyde:Wyleqasij;

      private var gewe:SharedObject;

      private var mipizyhe:Object;

      private function fypo(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kyjik.base==null)
         {
            this.kyjik.base=parent;
         }
         if(loaderInfo)
         {
            this.laqe(loaderInfo);
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.fypo);
         addEventListener(Event.REMOVED_FROM_STAGE,this.jakyw);
         stage.addEventListener(Event.MOUSE_LEAVE,this.lilasiva,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.gokevel.mewybo,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.gokevel.rymovyhi,false,0,true);
         return;
      }

      private function jakyw(param1:Event=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyjik.base=null;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.jakyw);
         addEventListener(Event.ADDED_TO_STAGE,this.fypo);
         stage.removeEventListener(Event.MOUSE_LEAVE,this.lilasiva);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.gokevel.mewybo);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.gokevel.rymovyhi);
         return;
      }

      private function lilasiva(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zisizen.tooltip(null);
         return;
      }

      public function laqe(param1:LoaderInfo) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:IEventDispatcher = null;
         try
         {
            _loc2_=param1["uncaughtErrorEvents"];
            if(_loc2_)
            {
               _loc2_.addEventListener("uncaughtError",this.wotes,false,0,true);
            }
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function wotes(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:String = null;
         var _loc2_:* = param1.hasOwnProperty("error")?param1["error"]:param1;
         if(_loc2_ is Error)
         {
            _loc3_=this.gelypigyv.makeString(_loc2_);
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

      public function kuwelib(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         this.wohuv.add(param1,param2,param3,param4,param5,param6,param7);
         return;
      }

      public function jeforusyp(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.wohuv.keryh(param1,param2,param3);
         return;
      }

      public function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.wohuv.remove(param1,param2,param3);
         return;
      }

      public function gycysi(param1:Vim, param2:Function, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1)
         {
            this.gokevel.gycysi(param1,param2,param3);
         }
         return;
      }

      public function ras(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.panels.mainPanel.ras(param1,param2,param3,param4);
         return;
      }

      public function get displayRoller() : Boolean {
         return this.zisizen.displayRoller;
      }

      public function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zisizen.displayRoller=param1;
         return;
      }

      public function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(this.pawi)
         {
            this.gycysi(this.pawi,null);
            this.pawi=null;
         }
         if((param1)&&param1.length==1)
         {
            this.pawi=new Vim(param1,param2,param3,param4);
            this.gycysi(this.pawi,this.rotise);
         }
         return;
      }

      public function get rollerCaptureKey() : Vim {
         return this.pawi;
      }

      private function rotise() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.displayRoller)
         {
            this.report("Display Roller Capture:<br/>"+Dity(this.zisizen.getPanel(Dity.NAME)).vyripu(true),-1);
         }
         return;
      }

      public function get fpsMonitor() : Boolean {
         return this.wohuv.fpsMonitor;
      }

      public function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.wohuv.fpsMonitor=param1;
         return;
      }

      public function get memoryMonitor() : Boolean {
         return this.wohuv.memoryMonitor;
      }

      public function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wohuv.memoryMonitor=param1;
         return;
      }

      public function fujaniqiv(param1:Object, param2:String=null) : String {
         return this.zepiqu.fujaniqiv(param1,param2);
      }

      public function fysi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zepiqu.fysi(param1);
         return;
      }

      public function gc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zepiqu.gc();
         return;
      }

      public function gulotyfu(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.kyjik.gulotyfu(param1,param2,param3);
         return;
      }

      public function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.nygyl.map(param1,param2,biloka);
         return;
      }

      public function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.nygyl.map(param2,param3,pytidyte(param1));
         return;
      }

      public function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.gelypigyv.inspect(param1,param2,biloka);
         return;
      }

      public function tufyb(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.gelypigyv.inspect(param2,param3,pytidyte(param1));
         return;
      }

      public function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.riwosybo(new Array(this.nygyl.explode(param1,param2)),1,null,false,true);
         return;
      }

      public function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.riwosybo(new Array(this.nygyl.explode(param2,param3)),1,param1,false,true);
         return;
      }

      public function get paused() : Boolean {
         return this.cusor;
      }

      public function set paused(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.cusor==param1)
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
         this.cusor=param1;
         this.zisizen.mainPanel.pyro(param1);
         return;
      }

      override public function get width() : Number {
         return this.zisizen.mainPanel.width;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zisizen.mainPanel.width=param1;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zisizen.mainPanel.height=param1;
         return;
      }

      override public function get height() : Number {
         return this.zisizen.mainPanel.height;
      }

      override public function get x() : Number {
         return this.zisizen.mainPanel.x;
      }

      override public function set x(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zisizen.mainPanel.x=param1;
         return;
      }

      override public function set y(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zisizen.mainPanel.y=param1;
         return;
      }

      override public function get y() : Number {
         return this.zisizen.mainPanel.y;
      }

      override public function set visible(param1:Boolean) : void {
         var [OFS3]_loc2_:* = [/OFS]false;
         var [OFS4]_loc3_:* = [/OFS]true;
         [OFS9]super.[/OFS][OFS9]visible[/OFS][OFS9]=[/OFS][OFS8]param1[/OFS];
         if([OFS11]param1[/OFS])
         {
            this.[OFS17]zisizen[/OFS].[OFS20]mainPanel[/OFS].[OFS24]visible[/OFS][OFS24]=[/OFS]true;
         }
         [OFS26]return[/OFS];
      }

      private function varizylir(param1:Event) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Array = null;
         var _loc2_:int = getTimer();
         var _loc3_:Boolean = this.pacyde.update(_loc2_);
         this.gelypigyv.update(_loc2_);
         this.zepiqu.update();
         if(this.remoter.remoting!=Segar.bufiti)
         {
            _loc4_=this.wohuv.update(stage?stage.frameRate:0);
         }
         this.zice.update();
         if((visible)&&(parent))
         {
            if((this.config.wijasiq)&&!(parent.getChildAt(parent.numChildren-1)==this)&&this.ryta>0)
            {
               this.ryta--;
               parent.addChild(this);
               this.report("Moved console on top (alwaysOnTop enabled), "+this.ryta+" attempts left.",-1);
            }
            this.zisizen.update(this.cusor,_loc3_);
            if(_loc4_)
            {
               this.zisizen.updateGraphs(_loc4_);
            }
         }
         return;
      }

      public function get remoting() : Boolean {
         return this.zice.remoting==Segar.medocup;
      }

      public function set remoting(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zice.remoting=param1?Segar.medocup:Segar.NONE;
         return;
      }

      public function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zice.remotingSocket(param1,param2);
         return;
      }

      public function setViewingChannels(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zisizen.mainPanel.setViewingChannels.apply(this,rest);
         return;
      }

      public function cazu(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zisizen.mainPanel.cazu.apply(this,rest);
         return;
      }

      public function set vizozyqaz(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zisizen.mainPanel.priority=param1;
         return;
      }

      public function report(param1:*, param2:int=0, param3:Boolean=true, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!param4)
         {
            param4=this.zisizen.mainPanel.reportChannel;
         }
         this.riwosybo([param1],param2,param4,false,param3,0);
         return;
      }

      public function riwosybo(param1:Array, param2:int=0, param3:*=null, param4:Boolean=false, param5:Boolean=false, param6:int=-1) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:* = "";
         var _loc8_:int = param1.length;
         var _loc9_:* = 0;
         while(_loc9_<_loc8_)
         {
            _loc7_=_loc7_+(("")+this.gelypigyv.makeString(param1[_loc9_],null,param5));
            _loc9_++;
         }
         if(param2>=this._config.wumuqysir&&param6<0)
         {
            param6=this._config.terow;
         }
         if(!param5&&param6>0)
         {
            _loc7_=_loc7_+this.nygyl.huc(param6,param2);
         }
         this.pacyde.add(new Mywapiqas(_loc7_,pytidyte(param3),param2,param4,param5));
         return;
      }

      public function set commandLine(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zisizen.mainPanel.commandLine=param1;
         return;
      }

      public function get commandLine() : Boolean {
         return this.zisizen.mainPanel.commandLine;
      }

      public function qim(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.kyjik.qim(param1,param2,param3,param4,param5);
         return;
      }

      public function add(param1:*, param2:int=2, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.riwosybo([param1],param2,biloka,param3);
         return;
      }

      public function jirah(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.riwosybo([param1],param3,biloka,false,false,param2>=0?param2:this._config.terow);
         return;
      }

      public function bad(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.riwosybo([param2],param4,param1,false,false,param3>=0?param3:this._config.terow);
         return;
      }

      public function log(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.riwosybo(rest,nunenuzi);
         return;
      }

      public function info(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.riwosybo(rest,INFO);
         return;
      }

      public function debug(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.riwosybo(rest,DEBUG);
         return;
      }

      public function bec(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.riwosybo(rest,WARN);
         return;
      }

      public function error(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.riwosybo(rest,ERROR);
         return;
      }

      public function lapyzet(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.riwosybo(rest,FATAL);
         return;
      }

      public function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.riwosybo([param2],param3,param1,param4);
         return;
      }

      public function kabyve(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.riwosybo(rest,nunenuzi,param1);
         return;
      }

      public function qivefyz(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.riwosybo(rest,INFO,param1);
         return;
      }

      public function lavaza(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.riwosybo(rest,DEBUG,param1);
         return;
      }

      public function pyvefejyh(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.riwosybo(rest,WARN,param1);
         return;
      }

      public function zabemy(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.riwosybo(rest,ERROR,param1);
         return;
      }

      public function valydacac(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.riwosybo(rest,FATAL,param1);
         return;
      }

      public function tekyw(param1:*, param2:Array, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.riwosybo(param2,param3,param1,param4);
         return;
      }

      public function hikogy(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.riwosybo(rest,2,biloka,false,this.raf(rest));
         return;
      }

      public function zopuzym(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.riwosybo(rest,param2,param1,false,this.raf(rest));
         return;
      }

      private function raf(param1:Array) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var args:Array = param1;
         return true;
      }

      public function clear(param1:String=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pacyde.clear(param1);
         if(!this.cusor)
         {
            this.zisizen.mainPanel.newafyzoh();
         }
         this.zisizen.updateMenu();
         return;
      }

      public function tuzynewet(param1:String="\r\n") : String {
         return this.pacyde.getLogsAsString(param1);
      }

      public function get config() : Winit {
         return this._config;
      }

      public function get panels() : Fyzyz {
         return this.zisizen;
      }

      public function get cl() : CommandLine {
         return this.kyjik;
      }

      public function get remoter() : Segar {
         return this.zice;
      }

      public function get graphing() : Ciwu {
         return this.wohuv;
      }

      public function get refs() : Babydel {
         return this.gelypigyv;
      }

      public function get logs() : Wyleqasij {
         return this.pacyde;
      }

      public function get jonuce() : Revikitob {
         return this.nygyl;
      }

      public function get so() : Object {
         return this.mipizyhe;
      }

      public function updateSO(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.gewe)
         {
            if(param1)
            {
               this.gewe.setDirty(param1);
            }
            else
            {
               this.gewe.clear();
            }
         }
         return;
      }
   }

}