package miqefol
{
   import flash.text.TextField;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.geom.ColorTransform;
   import rikewu.Mywapiqas;
   import zipirytab.Console;
   import qifatubam.Babydel;
   import flash.geom.Rectangle;
   import qifatubam.Segar;
   import flash.events.TextEvent;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.system.Security;
   import flash.system.SecurityPanel;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import flash.events.FocusEvent;


   public class Fulorag extends Qir
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Fulorag(param1:Console) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.sykacu=new Object();
         super(param1);
         var _loc2_:int = style.menuFontSize;
         console.cl.addCLCmd("filter",this.bamugamoz,"Filter console logs to matching string. When done, click on the * (global channel) at top.",true);
         console.cl.addCLCmd("filterexp",this.gaticehu,"Filter console logs to matching regular expression",true);
         console.cl.addCLCmd("clearhistory",this.qahufybid,"Clear history of commands you have entered.",true);
         name=NAME;
         kavobada=50;
         wus=18;
         this.kodomepys=vykipiky("traceField");
         this.kodomepys.wordWrap=true;
         this.kodomepys.multiline=true;
         this.kodomepys.y=_loc2_;
         this.kodomepys.addEventListener(Event.SCROLL,this.mojif);
         addChild(this.kodomepys);
         zyfile=vykipiky("menuField");
         zyfile.wordWrap=true;
         zyfile.multiline=true;
         zyfile.autoSize=TextFieldAutoSize.RIGHT;
         zyfile.height=_loc2_+6;
         zyfile.y=-2;
         tycucobyr(zyfile,this.onMenuRollOver);
         addChild(zyfile);
         this.kanulon=new Shape();
         this.kanulon.name="commandBackground";
         this.kanulon.graphics.beginFill(style.commandLineColor,0.1);
         this.kanulon.graphics.drawRoundRect(0,0,100,18,_loc2_,_loc2_);
         this.kanulon.scale9Grid=new Rectangle(9,9,80,1);
         addChild(this.kanulon);
         var _loc3_:TextFormat = new TextFormat(style.menuFont,style.menuFontSize,style.highColor);
         this.wyvybamy=new TextField();
         this.wyvybamy.name="commandField";
         this.wyvybamy.type=TextFieldType.INPUT;
         this.wyvybamy.x=40;
         this.wyvybamy.height=_loc2_+6;
         this.wyvybamy.addEventListener(KeyboardEvent.KEY_DOWN,this.fusolapom);
         this.wyvybamy.addEventListener(KeyboardEvent.KEY_UP,this.suzeh);
         this.wyvybamy.addEventListener(FocusEvent.FOCUS_IN,this.curuhulyr);
         this.wyvybamy.addEventListener(FocusEvent.FOCUS_OUT,this.kawymo);
         this.wyvybamy.defaultTextFormat=_loc3_;
         addChild(this.wyvybamy);
         this.lyjufyq=vykipiky("hintField",true);
         this.lyjufyq.mouseEnabled=false;
         this.lyjufyq.x=this.wyvybamy.x;
         this.lyjufyq.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.lyjufyq);
         this.qibezagos();
         _loc3_.color=style.commandLineColor;
         this.vikiwife=new TextField();
         this.vikiwife.name="commandPrefx";
         this.vikiwife.type=TextFieldType.DYNAMIC;
         this.vikiwife.x=2;
         this.vikiwife.height=_loc2_+6;
         this.vikiwife.selectable=false;
         this.vikiwife.defaultTextFormat=_loc3_;
         this.vikiwife.addEventListener(MouseEvent.MOUSE_DOWN,this.lorodabun);
         this.vikiwife.addEventListener(MouseEvent.MOUSE_MOVE,this.gimykuv);
         this.vikiwife.addEventListener(MouseEvent.ROLL_OUT,this.gimykuv);
         addChild(this.vikiwife);
         this.pinuqywyt=new Shape();
         this.pinuqywyt.name="blinkLine";
         this.pinuqywyt.alpha=0.2;
         addChild(this.pinuqywyt);
         this.lekywa=new Sprite();
         this.lekywa.name="scroller";
         this.lekywa.tabEnabled=false;
         this.lekywa.y=_loc2_+4;
         this.lekywa.buttonMode=true;
         this.lekywa.addEventListener(MouseEvent.MOUSE_DOWN,this.rynor,false,0,true);
         this.gyvah=new Sprite();
         this.gyvah.name="scrollbar";
         this.gyvah.tabEnabled=false;
         this.gyvah.y=style.controlSize;
         this.gyvah.graphics.beginFill(style.controlColor,1);
         this.gyvah.graphics.drawRect(-style.controlSize,0,style.controlSize,30);
         this.gyvah.graphics.beginFill(0,0);
         this.gyvah.graphics.drawRect(-style.controlSize*2,0,style.controlSize*2,30);
         this.gyvah.graphics.endFill();
         this.gyvah.addEventListener(MouseEvent.MOUSE_DOWN,this.befi,false,0,true);
         this.lekywa.addChild(this.gyvah);
         addChild(this.lekywa);
         this.wyvybamy.visible=false;
         this.vikiwife.visible=false;
         this.kanulon.visible=false;
         this.cuzawop("");
         init(640,100,true);
         lyjunicut(zyfile);
         if(console.so[zibosoqus] is Array)
         {
            this.jeriso=console.so[zibosoqus];
         }
         else
         {
            console.so[zibosoqus]=this.jeriso=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[zumu] is Array)
         {
            this.bymihoq=console.so[zumu];
         }
         else
         {
            console.so[zumu]=this.bymihoq=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[ryli] is Array)
         {
            this.kegyg=console.so[ryli];
         }
         if(this.bymihoq.length>0||this.kegyg==null)
         {
            console.so[ryli]=this.kegyg=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[zyro] is uint)
         {
            this.ceqy=console.so[zyro];
         }
         addEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys,false,0,true);
         addEventListener(TextEvent.LINK,this.sidadene,false,0,true);
         addEventListener(Event.ADDED_TO_STAGE,this.fypo,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.jakyw,false,0,true);
         return;
      }

      public static const NAME:String = "mainPanel";

      private static const zibosoqus:String = "clhistory";

      private static const zumu:String = "viewingChannels";

      private static const ryli:String = "ignoredChannels";

      private static const zyro:String = "priority";

      private var kodomepys:TextField;

      private var vikiwife:TextField;

      private var wyvybamy:TextField;

      private var lyjufyq:TextField;

      private var kanulon:Shape;

      private var pinuqywyt:Shape;

      private var pojopyty:Boolean;

      private var mifi:Boolean;

      private var jagen:Boolean;

      private var jaryja:Boolean;

      private var lekywa:Sprite;

      private var gyvah:Sprite;

      private var logijyn:uint;

      private var zarobuk:int;

      private var tedew:Boolean;

      private var qywoqe:Number;

      private var qutica:int;

      private var syk:int;

      private var bymihoq:Array;

      private var kegyg:Array;

      private var sykacu:Object;

      private var towibev:int = -1;

      private var ceqy:uint;

      private var lef:String;

      private var jypoji:RegExp;

      private var wunahinaf:String = "";

      private var fuhifa:Boolean;

      private var pyn:Boolean;

      private var wyqy:Boolean;

      private var piki:Boolean = true;

      private var ripyziqe:Boolean;

      private var qohy:String;

      private var jeriso:Array;

      public function ras(param1:String, param2:Function, param3:Array, param4:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param1)
         {
            param1=param1.replace(new RegExp("[^\\w]*","g"),"");
            if(param2==null)
            {
               GlobalNotificationActionte this.sykacu[[param1]];
            }
            else
            {
               this.sykacu[param1]=new Array(param2,param3,param4);
            }
            this.fuhifa=true;
         }
         else
         {
            console.report("ERROR: Invalid add menu params.",9);
         }
         return;
      }

      private function fypo(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.gumisomyr,true,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.rymovyhi,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.mewybo,false,0,true);
         return;
      }

      private function jakyw(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.gumisomyr,true);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.rymovyhi);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.mewybo);
         return;
      }

      private function gumisomyr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mifi=param1.shiftKey;
         this.jagen=param1.ctrlKey;
         this.jaryja=param1.altKey;
         return;
      }

      private function lyqesusys(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         if(this.mifi)
         {
            _loc2_=console.config.style.traceFontSize+(param1.delta>0?1:-1);
            if(_loc2_>10&&_loc2_<20)
            {
               console.config.style.traceFontSize=_loc2_;
               console.config.style.updateStyleSheet();
               this.newafyzoh();
               param1.stopPropagation();
            }
         }
         return;
      }

      private function gimykuv(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         console.panels.tooltip(param1.type==MouseEvent.MOUSE_MOVE?"Current scope::(CommandLine)":"",this);
         return;
      }

      private function lorodabun(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         try
         {
            stage.focus=this.wyvybamy;
            this.wazef();
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function mewybo(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Keyboard.SHIFT)
         {
            this.mifi=true;
         }
         if(param1.keyCode==Keyboard.CONTROL)
         {
            this.jagen=true;
         }
         if(param1.keyCode==18)
         {
            this.jaryja=true;
         }
         return;
      }

      private function rymovyhi(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1.keyCode==Keyboard.SHIFT)
         {
            this.mifi=false;
         }
         else
         {
            if(param1.keyCode==Keyboard.CONTROL)
            {
               this.jagen=false;
            }
            else
            {
               if(param1.keyCode==18)
               {
                  this.jaryja=false;
               }
            }
         }
         if((param1.keyCode==Keyboard.TAB||param1.keyCode==Keyboard.ENTER)&&(parent.visible)&&(visible)&&(this.wyvybamy.visible))
         {
            try
            {
               stage.focus=this.wyvybamy;
               this.wazef();
            }
            catch(err:Error)
            {
            }
         }
         return;
      }

      public function requestLogin(param1:Boolean=true) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ColorTransform = new ColorTransform();
         if(param1)
         {
            console.commandLine=true;
            console.report("//",-2);
            console.report("// <b>Enter remoting password</b> in CommandLine below...",-2);
            this.cuzawop("Password");
            _loc2_.color=style.controlColor;
            this.kanulon.transform.colorTransform=_loc2_;
            this.kodomepys.transform.colorTransform=new ColorTransform(0.7,0.7,0.7);
         }
         else
         {
            this.cuzawop("");
            this.kanulon.transform.colorTransform=_loc2_;
            this.kodomepys.transform.colorTransform=_loc2_;
         }
         this.wyvybamy.displayAsPassword=param1;
         this.ripyziqe=param1;
         return;
      }

      public function update(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.pinuqywyt.alpha>0)
         {
            this.pinuqywyt.alpha=this.pinuqywyt.alpha-0.25;
         }
         if(style.showCommandLineScope)
         {
            if(this.wunahinaf!=console.cl.scopeString)
            {
               this.wunahinaf=console.cl.scopeString;
               this.cuzawop(this.wunahinaf);
            }
         }
         else
         {
            if(this.wunahinaf!=null)
            {
               this.wunahinaf="";
               this.cuzawop("");
            }
         }
         if(param1)
         {
            this.pinuqywyt.alpha=1;
            this.fuhifa=true;
            this.pyn=true;
         }
         if(this.pyn)
         {
            this.pyn=false;
            this.pejavuho(true);
         }
         if(this.fuhifa)
         {
            this.fuhifa=false;
            this.negupid();
         }
         return;
      }

      public function newafyzoh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.piki=true;
         this.pyn=true;
         return;
      }

      private function pejavuho(param1:Boolean=false) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.piki)
         {
            this.nizelyhu();
         }
         else
         {
            if(!param1)
            {
               this.sukyzi();
            }
         }
         if(this.qutica!=this.syk)
         {
            if(this.piki)
            {
               this.kodomepys.setSelection(this.kodomepys.text.length-this.qutica,this.kodomepys.text.length-this.syk);
            }
            else
            {
               this.kodomepys.setSelection(this.kodomepys.text.length-this.syk,this.kodomepys.text.length-this.qutica);
            }
            this.syk=-1;
            this.qutica=-1;
         }
         return;
      }

      private function sukyzi() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = "";
         var _loc2_:Mywapiqas = console.logs.first;
         var _loc3_:* = !(this.bymihoq.length==1);
         var _loc4_:Boolean = this.ceqy==0&&this.bymihoq.length==0;
         while(_loc2_)
         {
            if((_loc4_)||(this.jysehyr(_loc2_)))
            {
               _loc1_=_loc1_+this.togipujo(_loc2_,_loc3_);
            }
            _loc2_=_loc2_.next;
         }
         this.wyqy=true;
         this.kodomepys.htmlText="<logs>"+_loc1_+"</logs>";
         this.wyqy=false;
         this.kubiheg();
         return;
      }

      public function pyro(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1)&&(this.piki))
         {
            this.piki=false;
            this.pejavuho();
            this.kodomepys.scrollV=this.kodomepys.maxScrollV;
         }
         else
         {
            if(!param1)
            {
               this.piki=true;
               this.nizelyhu();
            }
         }
         this.updateMenu();
         return;
      }

      private function nizelyhu() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:* = 0;
         var _loc1_:* = "";
         var _loc2_:int = Math.round(this.kodomepys.height/style.traceFontSize);
         var _loc3_:int = Math.round(this.kodomepys.width*5/style.traceFontSize);
         var _loc4_:Mywapiqas = console.logs.last;
         var _loc5_:* = !(this.bymihoq.length==1);
         while(_loc4_)
         {
            if(this.jysehyr(_loc4_))
            {
               _loc6_=Math.ceil(_loc4_.text.length/_loc3_);
               if((_loc4_.html)||_loc2_>=_loc6_)
               {
                  _loc1_=this.togipujo(_loc4_,_loc5_)+_loc1_;
                  _loc2_=_loc2_-_loc6_;
                  if(_loc2_<=0)
                  {
                     break;
                  }
               }
               else
               {
                  _loc4_=_loc4_.clone();
                  _loc4_.text=_loc4_.text.substring(Math.max(0,_loc4_.text.length-_loc3_*_loc2_));
                  _loc1_=this.togipujo(_loc4_,_loc5_)+_loc1_;
                  break;
               }
            }
            _loc4_=_loc4_.meqyfubyw;
         }
         this.wyqy=true;
         this.kodomepys.htmlText="<logs>"+_loc1_+"</logs>";
         this.kodomepys.scrollV=this.kodomepys.maxScrollV;
         this.wyqy=false;
         this.kubiheg();
         return;
      }

      private function jysehyr(param1:Mywapiqas) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.ceqy==0||param1.priority>=this.ceqy)&&((this.gikutig(param1.ch))||(((this.lef)&&(this.bymihoq.indexOf(Console.wup)>=0))&&(param1.text.toLowerCase().indexOf(this.lef)>=0))||((this.jypoji)&&(this.bymihoq.indexOf(Console.wup)>=0))&&param1.text.search(this.jypoji)>=0);
      }

      private function gikutig(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.bymihoq.length==0||this.bymihoq.indexOf(param1)>=0)&&(this.kegyg.length==0||this.kegyg.indexOf(param1)<0);
      }

      public function get reportChannel() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.bymihoq.length==1?this.bymihoq[0]:Console.hizogo;
      }

      public function setViewingChannels(... rest) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in rest)
         {
            _loc2_.push(Console.pytidyte(_loc3_));
         }
         if(this.bymihoq[0]==Babydel.monela&&(!_loc2_||!(_loc2_[0]==this.bymihoq[0])))
         {
            console.refs.exitFocus();
         }
         this.kegyg.splice(0);
         this.bymihoq.splice(0);
         if(_loc2_.indexOf(Console.topodifuw)<0&&_loc2_.indexOf(null)<0)
         {
            for each (_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  this.bymihoq.push(_loc4_);
               }
            }
         }
         this.newafyzoh();
         console.panels.updateMenu();
         return;
      }

      public function get viewingChannels() : Array {
         return this.bymihoq;
      }

      public function cazu(... rest) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in rest)
         {
            _loc2_.push(Console.pytidyte(_loc3_));
         }
         if(this.bymihoq[0]==Babydel.monela)
         {
            console.refs.exitFocus();
         }
         this.kegyg.splice(0);
         this.bymihoq.splice(0);
         if(_loc2_.indexOf(Console.topodifuw)<0&&_loc2_.indexOf(null)<0)
         {
            for each (_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  this.kegyg.push(_loc4_);
               }
            }
         }
         this.newafyzoh();
         console.panels.updateMenu();
         return;
      }

      public function get ignoredChannels() : Array {
         return this.kegyg;
      }

      private function bamugamoz(param1:String="") : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.jypoji=null;
            this.lef=Babydel.jopawulu(param1.toLowerCase());
            this.nag();
         }
         else
         {
            this.nykule();
         }
         return;
      }

      private function gaticehu(param1:String="") : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.lef=null;
            this.jypoji=new RegExp(Babydel.jopawulu(param1),"gi");
            this.nag();
         }
         else
         {
            this.nykule();
         }
         return;
      }

      private function nag() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         console.clear(Console.wup);
         console.logs.addChannel(Console.wup);
         this.setViewingChannels(Console.wup);
         return;
      }

      private function nykule() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jypoji=null;
         this.lef=null;
         if(this.bymihoq.length==1&&this.bymihoq[0]==Console.wup)
         {
            this.setViewingChannels(Console.topodifuw);
         }
         return;
      }

      private function togipujo(param1:Mywapiqas, param2:Boolean) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = "<p>";
         if(param2)
         {
            _loc3_=_loc3_+param1.zynyqe;
         }
         if(config.showLineNumber)
         {
            _loc3_=_loc3_+param1.tetur;
         }
         if(config.showTimestamp)
         {
            _loc3_=_loc3_+param1.tyqa;
         }
         var _loc4_:String = "p"+param1.priority;
         return _loc3_+"<"+_loc4_+">"+this.nowy(param1.text)+"</"+_loc4_+"></p>";
      }

      private function nowy(param1:String) : String {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(this.jypoji)
         {
            this.jypoji.lastIndex=0;
            _loc2_=this.jypoji.exec(param1);
            while(_loc2_!=null)
            {
               _loc3_=_loc2_.index;
               _loc4_=_loc2_[0];
               if(_loc4_.search("<|>")>=0)
               {
                  this.jypoji.lastIndex=this.jypoji.lastIndex-_loc4_.length-_loc4_.search("<|>");
               }
               else
               {
                  if(param1.lastIndexOf("<",_loc3_)<=param1.lastIndexOf(">",_loc3_))
                  {
                     param1=param1.substring(0,_loc3_)+"<u>"+param1.substring(_loc3_,_loc3_+_loc4_.length)+"</u>"+param1.substring(_loc3_+_loc4_.length);
                     this.jypoji.lastIndex=this.jypoji.lastIndex+7;
                  }
               }
               _loc2_=this.jypoji.exec(param1);
            }
         }
         else
         {
            if(this.lef)
            {
               _loc5_=param1.toLowerCase();
               _loc6_=_loc5_.lastIndexOf(this.lef);
               while(_loc6_>=0)
               {
                  param1=param1.substring(0,_loc6_)+"<u>"+param1.substring(_loc6_,_loc6_+this.lef.length)+"</u>"+param1.substring(_loc6_+this.lef.length);
                  _loc6_=_loc5_.lastIndexOf(this.lef,_loc6_-2);
               }
            }
         }
         return param1;
      }

      private function mojif(param1:Event=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         if((this.wyqy)||(this.mifi))
         {
            return;
         }
         var _loc2_:* = this.kodomepys.scrollV>=this.kodomepys.maxScrollV;
         if(!console.paused&&!(this.piki==_loc2_))
         {
            _loc3_=this.kodomepys.maxScrollV-this.kodomepys.scrollV;
            this.qutica=this.kodomepys.text.length-this.kodomepys.selectionBeginIndex;
            this.syk=this.kodomepys.text.length-this.kodomepys.selectionEndIndex;
            this.piki=_loc2_;
            this.pejavuho();
            this.kodomepys.scrollV=this.kodomepys.maxScrollV-_loc3_;
         }
         this.kubiheg();
         return;
      }

      private function kubiheg() : void {
         var [OFS2]_loc1_:* = [/OFS]true;
         var [OFS3]_loc2_:* = [/OFS]false;
         if(this.[OFS7]kodomepys[/OFS].[OFS10]maxScrollV[/OFS][OFS15]<=[/OFS][OFS13]1[/OFS])
         {
            this.[OFS20]lekywa[/OFS].[OFS24]visible[/OFS][OFS24]=[/OFS]false;
         }
         else
         {
            this.[OFS31]lekywa[/OFS].[OFS35]visible[/OFS][OFS35]=[/OFS]true;
            if(this.[OFS38]piki[/OFS])
            {
               this.[OFS48]bytetu[/OFS][OFS48]=[/OFS][OFS46]1[/OFS];
            }
            else
            {
               this.[OFS73]bytetu[/OFS][OFS73]=[/OFS](this.[OFS57]kodomepys[/OFS].[OFS60]scrollV[/OFS][OFS63]-1[/OFS])[OFS72]/[/OFS](this.[OFS65]kodomepys[/OFS].[OFS68]maxScrollV[/OFS][OFS71]-1[/OFS]);
            }
         }
         [OFS76]return[/OFS];
      }

      private function rynor(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.gyvah.visible)&&this.gyvah.mouseY>0||!this.gyvah.visible&&this.lekywa.mouseY>this.qywoqe/2)
         {
            this.zarobuk=3;
         }
         else
         {
            this.zarobuk=-3;
         }
         this.kodomepys.scrollV=this.kodomepys.scrollV+this.zarobuk;
         this.logijyn=0;
         addEventListener(Event.ENTER_FRAME,this.riwygy,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.rubonogo,false,0,true);
         return;
      }

      private function riwygy(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.logijyn++;
         if(this.logijyn>10)
         {
            this.logijyn=9;
            if(this.zarobuk<0&&this.gyvah.y>this.lekywa.mouseY||this.zarobuk>0&&this.gyvah.y+this.gyvah.height<this.lekywa.mouseY)
            {
               this.kodomepys.scrollV=this.kodomepys.scrollV+this.zarobuk;
            }
         }
         return;
      }

      private function rubonogo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.riwygy);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.rubonogo);
         return;
      }

      private function get bytetu() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.gyvah.y-style.controlSize)/(this.qywoqe-30-style.controlSize*2);
      }

      private function set bytetu(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gyvah.y=style.controlSize+(this.qywoqe-30-style.controlSize*2)*param1;
         return;
      }

      private function befi(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         this.tedew=true;
         if(!console.paused&&(this.piki))
         {
            this.piki=false;
            _loc2_=this.bytetu;
            this.pejavuho();
            this.bytetu=_loc2_;
         }
         this.gyvah.startDrag(false,new Rectangle(0,style.controlSize,0,this.qywoqe-30-style.controlSize*2));
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.tikyko,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.poceryjo,false,0,true);
         param1.stopPropagation();
         return;
      }

      private function tikyko(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wyqy=true;
         this.kodomepys.scrollV=Math.round(this.bytetu*(this.kodomepys.maxScrollV-1)+1);
         this.wyqy=false;
         return;
      }

      private function poceryjo(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gyvah.stopDrag();
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.tikyko);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.poceryjo);
         this.tedew=false;
         this.mojif();
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wyqy=true;
         super.width=param1;
         this.kodomepys.width=param1-4;
         zyfile.width=param1-6;
         this.wyvybamy.width=width-15-this.wyvybamy.x;
         this.kanulon.width=param1;
         this.pinuqywyt.graphics.clear();
         this.pinuqywyt.graphics.lineStyle(1,style.controlColor);
         this.pinuqywyt.graphics.moveTo(10,-1);
         this.pinuqywyt.graphics.lineTo(param1-10,-1);
         this.lekywa.x=param1;
         this.piki=true;
         this.fofewofo();
         this.fuhifa=true;
         this.pyn=true;
         this.wyqy=false;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         this.wyqy=true;
         var _loc2_:int = style.menuFontSize;
         var _loc3_:Number = _loc2_+6+style.traceFontSize;
         if(height!=param1)
         {
            this.pojopyty=param1<(this.wyvybamy.visible?_loc3_+_loc2_+4:_loc3_);
         }
         super.height=param1;
         var _loc4_:Boolean = (this.pojopyty)||!style.topMenu;
         this.risujabu();
         this.kodomepys.y=_loc4_?0:_loc2_;
         this.kodomepys.height=param1-(this.wyvybamy.visible?_loc2_+4:0)-(_loc4_?0:_loc2_);
         var _loc5_:Number = param1-_loc2_+6;
         this.wyvybamy.y=_loc5_;
         this.vikiwife.y=_loc5_;
         this.lyjufyq.y=this.wyvybamy.y-this.lyjufyq.height;
         this.kanulon.y=_loc5_;
         this.pinuqywyt.y=this.wyvybamy.visible?_loc5_:param1;
         this.lekywa.y=_loc4_?6:_loc2_+4;
         var _loc6_:uint = style.controlSize;
         this.qywoqe=this.pinuqywyt.y-(this.wyvybamy.visible?0:_loc6_*2)-this.lekywa.y;
         this.gyvah.visible=this.qywoqe>40;
         this.lekywa.graphics.clear();
         if(this.qywoqe>=10)
         {
            this.lekywa.graphics.beginFill(style.controlColor,0.7);
            this.lekywa.graphics.drawRect(-_loc6_,0,_loc6_,_loc6_);
            this.lekywa.graphics.drawRect(-_loc6_,this.qywoqe-_loc6_,_loc6_,_loc6_);
            this.lekywa.graphics.beginFill(style.controlColor,0.25);
            this.lekywa.graphics.drawRect(-_loc6_,_loc6_,_loc6_,this.qywoqe-_loc6_*2);
            this.lekywa.graphics.beginFill(0,0);
            this.lekywa.graphics.drawRect(-_loc6_*2,_loc6_*2,_loc6_*2,this.qywoqe-_loc6_*2);
            this.lekywa.graphics.endFill();
         }
         this.piki=true;
         this.pyn=true;
         this.wyqy=false;
         return;
      }

      private function risujabu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = (this.pojopyty)||!style.topMenu;
         this.kodomepys.y=_loc1_?0:zyfile.y+zyfile.height-6;
         this.kodomepys.height=Math.max(0,height-(this.wyvybamy.visible?style.menuFontSize+4:0)-this.kodomepys.y);
         return;
      }

      public function updateMenu(param1:Boolean=false) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.negupid();
         }
         else
         {
            this.fuhifa=true;
         }
         return;
      }

      private function negupid() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = false;
         var _loc3_:String = null;
         var _loc1_:* = "<r><high>";
         if((this.pojopyty)||!style.topMenu)
         {
            _loc1_=_loc1_+"<menu><b> <a href=\"event:show\">‹</a>";
         }
         else
         {
            if(!console.panels.channelsPanel)
            {
               _loc1_=_loc1_+this.getChannelsLink(true);
            }
            _loc1_=_loc1_+"<menu> <b>";
            for (_loc3_ in this.sykacu)
            {
               _loc1_=_loc1_+("<a href=\"event:external_"+_loc3_+"\">"+_loc3_+"</a> ");
               _loc2_=true;
            }
            if(_loc2_)
            {
               _loc1_=_loc1_+"¦ ";
            }
            _loc1_=_loc1_+this.tuz("<a href=\"event:fps\">F</a>",console.fpsMonitor>0);
            _loc1_=_loc1_+this.tuz(" <a href=\"event:mm\">M</a>",console.memoryMonitor>0);
            _loc1_=_loc1_+this.tuz(" <a href=\"event:command\">CL</a>",this.commandLine);
            if(console.remoter.remoting!=Segar.bufiti)
            {
               if(config.displayRollerEnabled)
               {
                  _loc1_=_loc1_+this.tuz(" <a href=\"event:roller\">Ro</a>",console.displayRoller);
               }
               if(config.rulerToolEnabled)
               {
                  _loc1_=_loc1_+this.tuz(" <a href=\"event:ruler\">RL</a>",console.panels.rulerActive);
               }
            }
            _loc1_=_loc1_+" ¦</b>";
            _loc1_=_loc1_+" <a href=\"event:copy\">Sv</a>";
            _loc1_=_loc1_+(" <a href=\"event:priority\">P"+this.ceqy+"</a>");
            _loc1_=_loc1_+this.tuz(" <a href=\"event:pause\">P</a>",console.paused);
            _loc1_=_loc1_+" <a href=\"event:clear\">C</a> <a href=\"event:close\">X</a> <a href=\"event:hide\">›</a>";
         }
         _loc1_=_loc1_+" </b></menu></high></r>";
         zyfile.htmlText=_loc1_;
         zyfile.scrollH=zyfile.maxScrollH;
         this.risujabu();
         return;
      }

      public function getChannelsLink(param1:Boolean=false) : String {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc2_:* = "<chs>";
         var _loc3_:Array = console.logs.getChannels();
         var _loc4_:int = _loc3_.length;
         if((param1)&&_loc4_>style.maxChannelsInMenu)
         {
            _loc4_=style.maxChannelsInMenu;
         }
         var _loc5_:Boolean = this.bymihoq.length>0||this.kegyg.length>0;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=_loc3_[_loc6_];
            _loc8_=!_loc5_&&_loc6_==0||(_loc5_)&&!(_loc6_==0)&&(this.gikutig(_loc7_))?"<ch><b>"+_loc7_+"</b></ch>":_loc7_;
            _loc2_=_loc2_+("<a href=\"event:channel_"+_loc7_+"\">["+_loc8_+"]</a> ");
            _loc6_++;
         }
         if(param1)
         {
            _loc2_=_loc2_+("<ch><a href=\"event:channels\"><b>"+(_loc3_.length>_loc4_?"...":"")+"</b>^^ </a></ch>");
         }
         _loc2_=_loc2_+"</chs> ";
         return _loc2_;
      }

      private function tuz(param1:String, param2:Boolean) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param2)
         {
            return "<menuHi>"+param1+"</menuHi>";
         }
         return param1;
      }

      public function onMenuRollOver(param1:TextEvent, param2:Qir=null) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         if(param2==null)
         {
            param2=this;
         }
         var _loc3_:String = param1.text?param1.text.replace("event:",""):"";
         if(_loc3_=="channel_"+Console.topodifuw)
         {
            _loc3_="View all channels";
         }
         else
         {
            if(_loc3_=="channel_"+Console.biloka)
            {
               _loc3_="Default channel::Logs with no channel";
            }
            else
            {
               if(_loc3_=="channel_"+Console.hizogo)
               {
                  _loc3_="Console\'s channel::Logs generated from Console";
               }
               else
               {
                  if(_loc3_=="channel_"+Console.wup)
                  {
                     _loc3_=this.jypoji?String(this.jypoji):this.lef;
                     _loc3_="Filtering channel"+"::*"+_loc3_+"wepynyji";
                  }
                  else
                  {
                     if(_loc3_=="channel_"+Babydel.monela)
                     {
                        _loc3_="Inspecting channel";
                     }
                     else
                     {
                        if(_loc3_.indexOf("channel_")==0)
                        {
                           _loc3_="Change channel::shift: select multiple\nctrl: ignore channel";
                        }
                        else
                        {
                           if(_loc3_=="pause")
                           {
                              if(console.paused)
                              {
                                 _loc3_="Resume updates";
                              }
                              else
                              {
                                 _loc3_="Pause updates";
                              }
                           }
                           else
                           {
                              if(_loc3_=="close"&&param2==this)
                              {
                                 _loc3_="Close::Type password to show again";
                              }
                              else
                              {
                                 if(_loc3_.indexOf("external_")==0)
                                 {
                                    _loc4_=this.sykacu[_loc3_.substring(9)];
                                    if(_loc4_)
                                    {
                                       _loc3_=_loc4_[2];
                                    }
                                 }
                                 else
                                 {
                                    _loc5_=
                                       {
                                          fps:"Frames Per Second",
                                          mm:"Memory Monitor",
                                          roller:"Display Roller::Map the display list under your mouse",
                                          ruler:"Screen Ruler::Measure the distance and angle between two points on screen.",
                                          command:"Command Line",
                                          copy:"Save to clipboard::shift: no channel name\nctrl: use viewing filters\nalt: save to file",
                                          clear:"Clear log",
                                          priority:"Priority filter::shift: previous priority\n(skips unused priorites)",
                                          channels:"Expand channels",
                                          close:"Close"
                                       }
                                    ;
                                    _loc3_=_loc5_[_loc3_];
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         console.panels.tooltip(_loc3_,param2);
         return;
      }

      private function sidadene(param1:TextEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var str:String = null;
         var file:FileReference = null;
         var ind:int = 0;
         var menu:Array = null;
         var e:TextEvent = param1;
         zyfile.setSelection(0,0);
         stopDrag();
         var t:String = e.text;
         if(t=="pause")
         {
            if(console.paused)
            {
               console.paused=false;
            }
            else
            {
               console.paused=true;
            }
            console.panels.tooltip(null);
         }
         else
         {
            if(t=="hide")
            {
               console.panels.tooltip();
               this.pojopyty=true;
               console.config.style.topMenu=false;
               this.height=height;
               this.updateMenu();
            }
            else
            {
               if(t=="show")
               {
                  console.panels.tooltip();
                  this.pojopyty=false;
                  console.config.style.topMenu=true;
                  this.height=height;
                  this.updateMenu();
               }
               else
               {
                  if(t=="close")
                  {
                     console.panels.tooltip();
                     visible=false;
                     dispatchEvent(new Event(Event.CLOSE));
                  }
                  else
                  {
                     if(t=="channels")
                     {
                        console.panels.channelsPanel=!console.panels.channelsPanel;
                     }
                     else
                     {
                        if(t=="fps")
                        {
                           console.fpsMonitor=!console.fpsMonitor;
                        }
                        else
                        {
                           if(t=="priority")
                           {
                              this.vojiga(this.mifi);
                           }
                           else
                           {
                              if(t=="mm")
                              {
                                 console.memoryMonitor=!console.memoryMonitor;
                              }
                              else
                              {
                                 if(t=="roller")
                                 {
                                    console.displayRoller=!console.displayRoller;
                                 }
                                 else
                                 {
                                    if(t=="ruler")
                                    {
                                       console.panels.tooltip();
                                       console.panels.startRuler();
                                    }
                                    else
                                    {
                                       if(t=="command")
                                       {
                                          this.commandLine=!this.commandLine;
                                       }
                                       else
                                       {
                                          if(t=="copy")
                                          {
                                             str=console.logs.getLogsAsString("\r\n",!this.mifi,this.jagen?this.jysehyr:null);
                                             if(this.jaryja)
                                             {
                                                file=new FileReference();
                                                try
                                                {
                                                   file["save"](str,"log.txt");
                                                }
                                                catch(err:Error)
                                                {
                                                   if(!(_loc4_&&(this)))
                                                   {
                                                      console.report("Save to file is not supported in your flash player.",8);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                System.setClipboard(str);
                                                console.report("Copied log to clipboard.",-1);
                                             }
                                          }
                                          else
                                          {
                                             if(t=="clear")
                                             {
                                                console.clear();
                                             }
                                             else
                                             {
                                                if(t=="settings")
                                                {
                                                   console.report("A new window should open in browser. If not, try searching for \'Flash Player Global Security Settings panel\' online :)",-1);
                                                   Security.showSettings(SecurityPanel.SETTINGS_MANAGER);
                                                }
                                                else
                                                {
                                                   if(t=="remote")
                                                   {
                                                      console.remoter.remoting=Segar.bufiti;
                                                   }
                                                   else
                                                   {
                                                      if(t.indexOf("ref")==0)
                                                      {
                                                         console.refs.handleRefEvent(t);
                                                      }
                                                      else
                                                      {
                                                         if(t.indexOf("channel_")==0)
                                                         {
                                                            this.onChannelPressed(t.substring(8));
                                                         }
                                                         else
                                                         {
                                                            if(t.indexOf("cl_")==0)
                                                            {
                                                               ind=t.indexOf("_",3);
                                                               console.cl.handleScopeEvent(uint(t.substring(3,ind<0?t.length:ind)));
                                                               if(ind>=0)
                                                               {
                                                                  this.wyvybamy.text=t.substring(ind+1);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(t.indexOf("external_")==0)
                                                               {
                                                                  menu=this.sykacu[t.substring(9)];
                                                                  if(menu)
                                                                  {
                                                                     menu[0].apply(null,menu[1]);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         zyfile.setSelection(0,0);
         e.stopPropagation();
         return;
      }

      public function onChannelPressed(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         if((this.jagen)&&!(param1==Console.topodifuw))
         {
            _loc2_=this.ryquhis(this.kegyg,param1);
            this.cazu.apply(this,_loc2_);
         }
         else
         {
            if((this.mifi)&&!(param1==Console.topodifuw)&&!(this.bymihoq[0]==Babydel.monela))
            {
               _loc2_=this.ryquhis(this.bymihoq,param1);
               this.setViewingChannels.apply(this,_loc2_);
            }
            else
            {
               console.setViewingChannels(param1);
            }
         }
         return;
      }

      private function ryquhis(param1:Array, param2:String) : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var param1:Array = param1.concat();
         var _loc3_:int = param1.indexOf(param2);
         if(_loc3_>=0)
         {
            param1.splice(_loc3_,1);
            if(param1.length==0)
            {
               param1.push(Console.topodifuw);
            }
         }
         else
         {
            param1.push(param2);
         }
         return param1;
      }

      public function set priority(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ceqy=param1;
         console.so[zyro]=this.ceqy;
         this.newafyzoh();
         this.updateMenu();
         return;
      }

      public function get priority() : uint {
         return this.ceqy;
      }

      private function vojiga(param1:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:uint = 0;
         var _loc2_:uint = 10;
         var _loc4_:Mywapiqas = console.logs.last;
         var _loc5_:int = this.ceqy;
         this.ceqy=0;
         var _loc6_:uint = 32000;
         while((_loc4_)&&_loc6_>0)
         {
            _loc6_--;
            if(this.jysehyr(_loc4_))
            {
               if(_loc4_.priority>_loc5_&&_loc2_>_loc4_.priority)
               {
                  _loc2_=_loc4_.priority;
               }
               if(_loc4_.priority<_loc5_&&_loc3_<_loc4_.priority)
               {
                  _loc3_=_loc4_.priority;
               }
            }
            _loc4_=_loc4_.meqyfubyw;
         }
         if(param1)
         {
            if(_loc3_==_loc5_)
            {
               _loc5_=10;
            }
            else
            {
               _loc5_=_loc3_;
            }
         }
         else
         {
            if(_loc2_==_loc5_)
            {
               _loc5_=0;
            }
            else
            {
               _loc5_=_loc2_;
            }
         }
         this.priority=_loc5_;
         return;
      }

      private function qahufybid(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.towibev=-1;
         console.updateSO();
         this.jeriso=new Array();
         return;
      }

      private function fusolapom(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Keyboard.TAB)
         {
            if(this.qohy)
            {
               this.wyvybamy.text=this.qohy;
               this.wazef();
               this.qibezagos();
            }
         }
         return;
      }

      private function suzeh(param1:KeyboardEvent) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         if(param1.keyCode==Keyboard.ENTER)
         {
            this.newafyzoh();
            this.qibezagos();
            if(this.ripyziqe)
            {
               console.remoter.login(this.wyvybamy.text);
               this.wyvybamy.text="";
               this.requestLogin(false);
            }
            else
            {
               _loc2_=this.wyvybamy.text;
               if(_loc2_.length>2)
               {
                  _loc3_=this.jeriso.indexOf(_loc2_);
                  while(_loc3_>=0)
                  {
                     this.jeriso.splice(_loc3_,1);
                     _loc3_=this.jeriso.indexOf(_loc2_);
                  }
                  this.jeriso.unshift(_loc2_);
                  this.towibev=-1;
                  if(this.jeriso.length>20)
                  {
                     this.jeriso.splice(20);
                  }
                  console.updateSO(zibosoqus);
               }
               this.wyvybamy.text="";
               if(config.commandLineInputPassThrough!=null)
               {
                  _loc2_=config.commandLineInputPassThrough(_loc2_);
               }
               if(_loc2_)
               {
                  console.cl.run(_loc2_);
               }
            }
         }
         else
         {
            if(param1.keyCode==Keyboard.ESCAPE)
            {
               if(stage)
               {
                  stage.focus=null;
               }
            }
            else
            {
               if(param1.keyCode==Keyboard.UP)
               {
                  this.qibezagos();
                  if((this.wyvybamy.text)&&this.towibev<0)
                  {
                     this.jeriso.unshift(this.wyvybamy.text);
                     this.towibev++;
                  }
                  if(this.towibev<this.jeriso.length-1)
                  {
                     this.towibev++;
                     this.wyvybamy.text=this.jeriso[this.towibev];
                     this.wazef();
                  }
                  else
                  {
                     this.towibev=this.jeriso.length;
                     this.wyvybamy.text="";
                  }
               }
               else
               {
                  if(param1.keyCode==Keyboard.DOWN)
                  {
                     this.qibezagos();
                     if(this.towibev>0)
                     {
                        this.towibev--;
                        this.wyvybamy.text=this.jeriso[this.towibev];
                        this.wazef();
                     }
                     else
                     {
                        this.towibev=-1;
                        this.wyvybamy.text="";
                     }
                  }
                  else
                  {
                     if(param1.keyCode==Keyboard.TAB)
                     {
                        this.wazef();
                     }
                     else
                     {
                        if(!this.ripyziqe)
                        {
                           this.curuhulyr();
                        }
                     }
                  }
               }
            }
         }
         return;
      }

      private function wazef() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wyvybamy.setSelection(this.wyvybamy.text.length,this.wyvybamy.text.length);
         return;
      }

      private function curuhulyr(param1:Event=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:String = this.wyvybamy.text;
         if((_loc2_)&&(config.commandLineAutoCompleteEnabled)&&!(console.remoter.remoting==Segar.bufiti))
         {
            try
            {
               this.qibezagos(console.cl.getHintsFor(_loc2_,5));
               return;
            }
            catch(err:Error)
            {
            }
         }
         this.qibezagos();
         return;
      }

      private function kawymo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qibezagos();
         return;
      }

      private function qibezagos(param1:Array=null) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Rectangle = null;
         var _loc5_:String = null;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         if((param1)&&(param1.length))
         {
            this.qohy=param1[0][0];
            if(param1.length>1)
            {
               _loc5_=param1[1][0];
               _loc6_=false;
               _loc7_=0;
               while(_loc7_<_loc5_.length)
               {
                  if(_loc5_.charAt(_loc7_)==this.qohy.charAt(_loc7_))
                  {
                     _loc6_=true;
                     _loc7_++;
                     continue;
                  }
                  if((_loc6_)&&this.wyvybamy.text.length<_loc7_)
                  {
                     this.qohy=this.qohy.substring(0,_loc7_);
                  }
                  break;
               }
            }
            _loc2_=new Array();
            for each (_loc3_ in param1)
            {
               _loc2_.push("<p3>"+_loc3_[0]+"</p3> <p0>"+(_loc3_[1]?_loc3_[1]:"")+"</p0>");
            }
            this.lyjufyq.htmlText="<p>"+_loc2_.reverse().join("\n")+"</p>";
            this.lyjufyq.visible=true;
            _loc4_=this.wyvybamy.getCharBoundaries(this.wyvybamy.text.length-1);
            if(!_loc4_)
            {
               _loc4_=new Rectangle();
            }
            this.lyjufyq.x=this.wyvybamy.x+_loc4_.x+_loc4_.width+30;
            this.lyjufyq.y=height-this.lyjufyq.height;
         }
         else
         {
            this.lyjufyq.visible=false;
            this.qohy=null;
         }
         return;
      }

      public function cuzawop(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.ripyziqe)
         {
            this.ripyziqe=false;
            this.requestLogin(false);
         }
         this.vikiwife.autoSize=TextFieldAutoSize.LEFT;
         this.vikiwife.text=param1;
         this.fofewofo();
         return;
      }

      private function fofewofo() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = width-48;
         if(this.vikiwife.width>120||this.vikiwife.width>_loc1_)
         {
            this.vikiwife.autoSize=TextFieldAutoSize.NONE;
            this.vikiwife.width=_loc1_>120?120:_loc1_;
            this.vikiwife.scrollH=this.vikiwife.maxScrollH;
         }
         this.wyvybamy.x=this.vikiwife.width+2;
         this.wyvybamy.width=width-15-this.wyvybamy.x;
         this.lyjufyq.x=this.wyvybamy.x;
         return;
      }

      public function set commandLine(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.wyvybamy.visible=true;
            this.vikiwife.visible=true;
            this.kanulon.visible=true;
         }
         else
         {
            this.wyvybamy.visible=false;
            this.vikiwife.visible=false;
            this.kanulon.visible=false;
         }
         this.fuhifa=true;
         this.height=height;
         return;
      }

      public function get commandLine() : Boolean {
         return this.wyvybamy.visible;
      }
   }

}