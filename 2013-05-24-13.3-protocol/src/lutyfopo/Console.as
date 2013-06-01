package lutyfopo
{
   import flash.display.Sprite;
   import tobuc.Bamyhugep;
   import qudulul.Wamaf;
   import tobuc.CommandLine;
   import tobuc.Kihobusu;
   import tobuc.Rinu;
   import tobuc.Bibabiqop;
   import tobuc.Wywysok;
   import tobuc.Tin;
   import tobuc.Qowehim;
   import flash.net.SharedObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.display.LoaderInfo;
   import flash.events.IEventDispatcher;
   import flash.events.ErrorEvent;
   import flash.geom.Rectangle;
   import qudulul.Cudy;
   import flash.display.DisplayObjectContainer;
   import flash.utils.getTimer;
   import vajurym.Cicyhovyl;
   import flash.system.Capabilities;


   public class Console extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Console(param1:String="", param2:Huzujuty=null) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var password:String = param1;
         var config:Huzujuty = param2;
         this.vidydibo={};
         super();
         name="Console";
         if(config==null)
         {
            config=new Huzujuty();
         }
         this._config=config;
         if(password)
         {
            this._config.keystrokePassword=password;
         }
         this.dujij=new Wywysok(this);
         this.fata=new Qowehim(this);
         this.maw=new Bamyhugep(this);
         this.cucygelu=new CommandLine(this);
         this.kivyzim=new Tin(this);
         this.toduho=new Bibabiqop(this);
         this.row=new Rinu(this);
         this.syg=new Kihobusu(this);
         this.cl.addCLCmd("remotingSocket",new function(param1:String=""):void
         {
            var _loc2_:Array = param1.split(new RegExp("\\s+|\\:"));
            remotingSocket(_loc2_[0],_loc2_[1]);
            return;
            },"Connect to socket remote. /remotingSocket ip port");
            if(this._config.soriwiny)
            {
               try
               {
                  this.sutak=SharedObject.getLocal(this._config.soriwiny,this._config.guc);
                  this.vidydibo=this.sutak.data;
               }
               catch(e:Error)
               {
               }
            }
            this._config.style.updateStyleSheet();
            this.sedaqifyt=new Wamaf(this);
            if(password)
            {
               this.visible=false;
            }
            this.report("<b>Console v"+VERSION+kivi+"</b> build "+zyju+". "+Capabilities.playerType+" "+Capabilities.version+".",-2);
            addEventListener(Event.ENTER_FRAME,this.zebobaki);
            addEventListener(Event.ADDED_TO_STAGE,this.wubodur);
            return;
      }

      public static const VERSION:Number = 2.6;

      public static const kivi:String = "";

      public static const zyju:int = 611;

      public static const cibaca:String = "2012/02/22 00:11";

      public static const riqazis:uint = 1;

      public static const INFO:uint = 3;

      public static const DEBUG:uint = 6;

      public static const WARN:uint = 8;

      public static const ERROR:uint = 9;

      public static const FATAL:uint = 10;

      public static const caraky:String = " * ";

      public static const zuhuly:String = "-";

      public static const sajim:String = "C";

      public static const wenoc:String = "~";

      public static function suj(param1:*) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1 is String)
         {
            return param1 as String;
         }
         if(param1)
         {
            return Bamyhugep.cyqevu(param1);
         }
         return zuhuly;
      }

      private var _config:Huzujuty;

      private var sedaqifyt:Wamaf;

      private var cucygelu:CommandLine;

      private var syg:Kihobusu;

      private var maw:Bamyhugep;

      private var row:Rinu;

      private var toduho:Bibabiqop;

      private var dujij:Wywysok;

      private var kivyzim:Tin;

      private var dejinad:int = 50;

      private var mafihaqog:Boolean;

      private var tyvehama:Pefam;

      private var fata:Qowehim;

      private var sutak:SharedObject;

      private var vidydibo:Object;

      private function wubodur(param1:Event=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.cucygelu.base==null)
         {
            this.cucygelu.base=parent;
         }
         if(loaderInfo)
         {
            this.nuwuhaket(loaderInfo);
         }
         removeEventListener(Event.ADDED_TO_STAGE,this.wubodur);
         addEventListener(Event.REMOVED_FROM_STAGE,this.gyceno);
         stage.addEventListener(Event.MOUSE_LEAVE,this.huq,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.syg.beryjan,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.syg.pizikid,false,0,true);
         return;
      }

      private function gyceno(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cucygelu.base=null;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.gyceno);
         addEventListener(Event.ADDED_TO_STAGE,this.wubodur);
         stage.removeEventListener(Event.MOUSE_LEAVE,this.huq);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.syg.beryjan);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.syg.pizikid);
         return;
      }

      private function huq(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sedaqifyt.tooltip(null);
         return;
      }

      public function nuwuhaket(param1:LoaderInfo) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:IEventDispatcher = null;
         try
         {
            _loc2_=param1["uncaughtErrorEvents"];
            if(_loc2_)
            {
               _loc2_.addEventListener("uncaughtError",this.nuqev,false,0,true);
            }
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function nuqev(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = null;
         var _loc2_:* = param1.hasOwnProperty("error")?param1["error"]:param1;
         if(_loc2_ is Error)
         {
            _loc3_=this.maw.makeString(_loc2_);
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

      public function pedotenon(param1:String, param2:Object, param3:String, param4:Number=-1, param5:String=null, param6:Rectangle=null, param7:Boolean=false) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         this.toduho.add(param1,param2,param3,param4,param5,param6,param7);
         return;
      }

      public function qacuhyr(param1:String, param2:Number=NaN, param3:Number=NaN) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.toduho.japipyne(param1,param2,param3);
         return;
      }

      public function removeGraph(param1:String, param2:Object=null, param3:String=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.toduho.remove(param1,param2,param3);
         return;
      }

      public function jogawu(param1:Pefam, param2:Function, param3:Array=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1)
         {
            this.syg.jogawu(param1,param2,param3);
         }
         return;
      }

      public function pacagis(param1:String, param2:Function, param3:Array=null, param4:String=null) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.panels.mainPanel.pacagis(param1,param2,param3,param4);
         return;
      }

      public function get displayRoller() : Boolean {
         return this.sedaqifyt.displayRoller;
      }

      public function set displayRoller(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedaqifyt.displayRoller=param1;
         return;
      }

      public function setRollerCaptureKey(param1:String, param2:Boolean=false, param3:Boolean=false, param4:Boolean=false) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(this.tyvehama)
         {
            this.jogawu(this.tyvehama,null);
            this.tyvehama=null;
         }
         if((param1)&&param1.length==1)
         {
            this.tyvehama=new Pefam(param1,param2,param3,param4);
            this.jogawu(this.tyvehama,this.megubu);
         }
         return;
      }

      public function get rollerCaptureKey() : Pefam {
         return this.tyvehama;
      }

      private function megubu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.displayRoller)
         {
            this.report("Display Roller Capture:<br/>"+Cudy(this.sedaqifyt.nokociqoc(Cudy.NAME)).gucojy(true),-1);
         }
         return;
      }

      public function get fpsMonitor() : Boolean {
         return this.toduho.fpsMonitor;
      }

      public function set fpsMonitor(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.toduho.fpsMonitor=param1;
         return;
      }

      public function get memoryMonitor() : Boolean {
         return this.toduho.memoryMonitor;
      }

      public function set memoryMonitor(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.toduho.memoryMonitor=param1;
         return;
      }

      public function lihyqi(param1:Object, param2:String=null) : String {
         return this.row.lihyqi(param1,param2);
      }

      public function vyqane(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.row.vyqane(param1);
         return;
      }

      public function gc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.row.gc();
         return;
      }

      public function hatizy(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.cucygelu.hatizy(param1,param2,param3);
         return;
      }

      public function map(param1:DisplayObjectContainer, param2:uint=0) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kivyzim.map(param1,param2,zuhuly);
         return;
      }

      public function mapch(param1:*, param2:DisplayObjectContainer, param3:uint=0) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.kivyzim.map(param2,param3,suj(param1));
         return;
      }

      public function inspect(param1:Object, param2:Boolean=true) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.maw.inspect(param1,param2,zuhuly);
         return;
      }

      public function niridig(param1:*, param2:Object, param3:Boolean=true) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.maw.inspect(param2,param3,suj(param1));
         return;
      }

      public function explode(param1:Object, param2:int=3) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.mop(new Array(this.kivyzim.explode(param1,param2)),1,null,false,true);
         return;
      }

      public function explodech(param1:*, param2:Object, param3:int=3) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mop(new Array(this.kivyzim.explode(param2,param3)),1,param1,false,true);
         return;
      }

      public function get paused() : Boolean {
         return this.mafihaqog;
      }

      public function set paused(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.mafihaqog==param1)
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
         this.mafihaqog=param1;
         this.sedaqifyt.mainPanel.lohomo(param1);
         return;
      }

      override public function get width() : Number {
         return this.sedaqifyt.mainPanel.width;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedaqifyt.mainPanel.width=param1;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedaqifyt.mainPanel.height=param1;
         return;
      }

      override public function get height() : Number {
         return this.sedaqifyt.mainPanel.height;
      }

      override public function get x() : Number {
         return this.sedaqifyt.mainPanel.x;
      }

      override public function set x(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedaqifyt.mainPanel.x=param1;
         return;
      }

      override public function set y(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedaqifyt.mainPanel.y=param1;
         return;
      }

      override public function get y() : Number {
         return this.sedaqifyt.mainPanel.y;
      }

      override public function set visible(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.visible=param1;
         if(param1)
         {
            this.sedaqifyt.mainPanel.visible=true;
         }
         return;
      }

      private function zebobaki(param1:Event) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Array = null;
         var _loc2_:int = getTimer();
         var _loc3_:Boolean = this.fata.update(_loc2_);
         this.maw.update(_loc2_);
         this.row.update();
         if(this.remoter.remoting!=Wywysok.mysewe)
         {
            _loc4_=this.toduho.update(stage?stage.frameRate:0);
         }
         this.dujij.update();
         if((visible)&&(parent))
         {
            if((this.config.hysygejik)&&!(parent.getChildAt(parent.numChildren-1)==this)&&this.dejinad>0)
            {
               this.dejinad--;
               parent.addChild(this);
               this.report("Moved console on top (alwaysOnTop enabled), "+this.dejinad+" attempts left.",-1);
            }
            this.sedaqifyt.update(this.mafihaqog,_loc3_);
            if(_loc4_)
            {
               this.sedaqifyt.updateGraphs(_loc4_);
            }
         }
         return;
      }

      public function get remoting() : Boolean {
         return this.dujij.remoting==Wywysok.kuboruqi;
      }

      public function set remoting(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dujij.remoting=param1?Wywysok.kuboruqi:Wywysok.NONE;
         return;
      }

      public function remotingSocket(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.dujij.remotingSocket(param1,param2);
         return;
      }

      public function setViewingChannels(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sedaqifyt.mainPanel.setViewingChannels.apply(this,rest);
         return;
      }

      public function jerupen(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sedaqifyt.mainPanel.jerupen.apply(this,rest);
         return;
      }

      public function set cyhaz(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.sedaqifyt.mainPanel.priority=param1;
         return;
      }

      public function report(param1:*, param2:int=0, param3:Boolean=true, param4:String=null) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(!param4)
         {
            param4=this.sedaqifyt.mainPanel.reportChannel;
         }
         this.mop([param1],param2,param4,false,param3,0);
         return;
      }

      public function mop(param1:Array, param2:int=0, param3:*=null, param4:Boolean=false, param5:Boolean=false, param6:int=-1) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc7_:* = "";
         var _loc8_:int = param1.length;
         var _loc9_:* = 0;
         while(_loc9_<_loc8_)
         {
            _loc7_=_loc7_+(("")+this.maw.makeString(param1[_loc9_],null,param5));
            _loc9_++;
         }
         if(param2>=this._config.cazygopuw&&param6<0)
         {
            param6=this._config.wiloriro;
         }
         if(!param5&&param6>0)
         {
            _loc7_=_loc7_+this.kivyzim.gymu(param6,param2);
         }
         this.fata.add(new Cicyhovyl(_loc7_,suj(param3),param2,param4,param5));
         return;
      }

      public function set commandLine(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sedaqifyt.mainPanel.commandLine=param1;
         return;
      }

      public function get commandLine() : Boolean {
         return this.sedaqifyt.mainPanel.commandLine;
      }

      public function wub(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.cucygelu.wub(param1,param2,param3,param4,param5);
         return;
      }

      public function add(param1:*, param2:int=2, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mop([param1],param2,zuhuly,param3);
         return;
      }

      public function jifav(param1:*, param2:int=-1, param3:int=5) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mop([param1],param3,zuhuly,false,false,param2>=0?param2:this._config.wiloriro);
         return;
      }

      public function fegyn(param1:*, param2:*, param3:int=-1, param4:int=5) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.mop([param2],param4,param1,false,false,param3>=0?param3:this._config.wiloriro);
         return;
      }

      public function log(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mop(rest,riqazis);
         return;
      }

      public function info(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mop(rest,INFO);
         return;
      }

      public function debug(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mop(rest,DEBUG);
         return;
      }

      public function mywid(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mop(rest,WARN);
         return;
      }

      public function error(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mop(rest,ERROR);
         return;
      }

      public function murotyliv(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mop(rest,FATAL);
         return;
      }

      public function ch(param1:*, param2:*, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.mop([param2],param3,param1,param4);
         return;
      }

      public function tynydozu(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.mop(rest,riqazis,param1);
         return;
      }

      public function pyneqar(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.mop(rest,INFO,param1);
         return;
      }

      public function porycyfi(param1:*, ... rest) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.mop(rest,DEBUG,param1);
         return;
      }

      public function gabo(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.mop(rest,WARN,param1);
         return;
      }

      public function kaqip(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.mop(rest,ERROR,param1);
         return;
      }

      public function jukosat(param1:*, ... rest) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.mop(rest,FATAL,param1);
         return;
      }

      public function visubew(param1:*, param2:Array, param3:int=2, param4:Boolean=false) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.mop(param2,param3,param1,param4);
         return;
      }

      public function kerupa(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mop(rest,2,zuhuly,false,this.wako(rest));
         return;
      }

      public function sotazu(param1:*, param2:int, ... rest) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.mop(rest,param2,param1,false,this.wako(rest));
         return;
      }

      private function wako(param1:Array) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var args:Array = param1;
         try
         {
         }
         catch(err:Error)
         {
            return false;
         }
         return true;
      }

      public function clear(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fata.clear(param1);
         if(!this.mafihaqog)
         {
            this.sedaqifyt.mainPanel.qavy();
         }
         this.sedaqifyt.updateMenu();
         return;
      }

      public function zeropo(param1:String="\r\n") : String {
         return this.fata.getLogsAsString(param1);
      }

      public function get config() : Huzujuty {
         return this._config;
      }

      public function get panels() : Wamaf {
         return this.sedaqifyt;
      }

      public function get cl() : CommandLine {
         return this.cucygelu;
      }

      public function get remoter() : Wywysok {
         return this.dujij;
      }

      public function get graphing() : Bibabiqop {
         return this.toduho;
      }

      public function get refs() : Bamyhugep {
         return this.maw;
      }

      public function get logs() : Qowehim {
         return this.fata;
      }

      public function get dalibojy() : Tin {
         return this.kivyzim;
      }

      public function get so() : Object {
         return this.vidydibo;
      }

      public function updateSO(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.sutak)
         {
            if(param1)
            {
               this.sutak.setDirty(param1);
            }
            else
            {
               this.sutak.clear();
            }
         }
         return;
      }
   }

}