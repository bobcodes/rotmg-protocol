package qudulul
{
   import flash.text.TextField;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.geom.ColorTransform;
   import vajurym.Cicyhovyl;
   import lutyfopo.Console;
   import tobuc.Bamyhugep;
   import flash.geom.Rectangle;
   import tobuc.Wywysok;
   import flash.events.TextEvent;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.system.Security;
   import flash.system.SecurityPanel;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import flash.events.FocusEvent;


   public class Suvavi extends Hycoba
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Suvavi(param1:Console) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.cycyfi=new Object();
         super(param1);
         var _loc2_:int = style.menuFontSize;
         console.cl.addCLCmd("filter",this.fiqor,"Filter console logs to matching string. When done, click on the * (global channel) at top.",true);
         console.cl.addCLCmd("filterexp",this.kusikyqyw,"Filter console logs to matching regular expression",true);
         console.cl.addCLCmd("clearhistory",this.tugyzajaq,"Clear history of commands you have entered.",true);
         name=NAME;
         vamaboby=50;
         dabapiku=18;
         this.lohug=goqyc("traceField");
         this.lohug.wordWrap=true;
         this.lohug.multiline=true;
         this.lohug.y=_loc2_;
         this.lohug.addEventListener(Event.SCROLL,this.fopoh);
         addChild(this.lohug);
         zem=goqyc("menuField");
         zem.wordWrap=true;
         zem.multiline=true;
         zem.autoSize=TextFieldAutoSize.RIGHT;
         zem.height=_loc2_+6;
         zem.y=-2;
         kek(zem,this.onMenuRollOver);
         addChild(zem);
         this.nicopin=new Shape();
         this.nicopin.name="commandBackground";
         this.nicopin.graphics.beginFill(style.commandLineColor,0.1);
         this.nicopin.graphics.drawRoundRect(0,0,100,18,_loc2_,_loc2_);
         this.nicopin.scale9Grid=new Rectangle(9,9,80,1);
         addChild(this.nicopin);
         var _loc3_:TextFormat = new TextFormat(style.menuFont,style.menuFontSize,style.highColor);
         this.pequpa=new TextField();
         this.pequpa.name="commandField";
         this.pequpa.type=TextFieldType.INPUT;
         this.pequpa.x=40;
         this.pequpa.height=_loc2_+6;
         this.pequpa.addEventListener(KeyboardEvent.KEY_DOWN,this.docegovuq);
         this.pequpa.addEventListener(KeyboardEvent.KEY_UP,this.bimegakik);
         this.pequpa.addEventListener(FocusEvent.FOCUS_IN,this.ripaqyge);
         this.pequpa.addEventListener(FocusEvent.FOCUS_OUT,this.nawafam);
         this.pequpa.defaultTextFormat=_loc3_;
         addChild(this.pequpa);
         this.nadegiko=goqyc("hintField",true);
         this.nadegiko.mouseEnabled=false;
         this.nadegiko.x=this.pequpa.x;
         this.nadegiko.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.nadegiko);
         this.putahatad();
         _loc3_.color=style.commandLineColor;
         this.fazam=new TextField();
         this.fazam.name="commandPrefx";
         this.fazam.type=TextFieldType.DYNAMIC;
         this.fazam.x=2;
         this.fazam.height=_loc2_+6;
         this.fazam.selectable=false;
         this.fazam.defaultTextFormat=_loc3_;
         this.fazam.addEventListener(MouseEvent.MOUSE_DOWN,this.vijacyp);
         this.fazam.addEventListener(MouseEvent.MOUSE_MOVE,this.faryp);
         this.fazam.addEventListener(MouseEvent.ROLL_OUT,this.faryp);
         addChild(this.fazam);
         this.wuvu=new Shape();
         this.wuvu.name="blinkLine";
         this.wuvu.alpha=0.2;
         addChild(this.wuvu);
         this.sozunuzyh=new Sprite();
         this.sozunuzyh.name="scroller";
         this.sozunuzyh.tabEnabled=false;
         this.sozunuzyh.y=_loc2_+4;
         this.sozunuzyh.buttonMode=true;
         this.sozunuzyh.addEventListener(MouseEvent.MOUSE_DOWN,this.sinyvo,false,0,true);
         this.tuni=new Sprite();
         this.tuni.name="scrollbar";
         this.tuni.tabEnabled=false;
         this.tuni.y=style.controlSize;
         this.tuni.graphics.beginFill(style.controlColor,1);
         this.tuni.graphics.drawRect(-style.controlSize,0,style.controlSize,30);
         this.tuni.graphics.beginFill(0,0);
         this.tuni.graphics.drawRect(-style.controlSize*2,0,style.controlSize*2,30);
         this.tuni.graphics.endFill();
         this.tuni.addEventListener(MouseEvent.MOUSE_DOWN,this.qonapato,false,0,true);
         this.sozunuzyh.addChild(this.tuni);
         addChild(this.sozunuzyh);
         this.pequpa.visible=false;
         this.fazam.visible=false;
         this.nicopin.visible=false;
         this.wibumine("");
         init(640,100,true);
         kehiza(zem);
         if(console.so[fatahud] is Array)
         {
            this.jujihumyj=console.so[fatahud];
         }
         else
         {
            console.so[fatahud]=this.jujihumyj=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[syzyg] is Array)
         {
            this.neh=console.so[syzyg];
         }
         else
         {
            console.so[syzyg]=this.neh=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[ziz] is Array)
         {
            this.zobidyv=console.so[ziz];
         }
         if(this.neh.length>0||this.zobidyv==null)
         {
            console.so[ziz]=this.zobidyv=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[sew] is uint)
         {
            this.met=console.so[sew];
         }
         addEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb,false,0,true);
         addEventListener(TextEvent.LINK,this.vaq,false,0,true);
         addEventListener(Event.ADDED_TO_STAGE,this.wubodur,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.gyceno,false,0,true);
         return;
      }

      public static const NAME:String = "mainPanel";

      private static const fatahud:String = "clhistory";

      private static const syzyg:String = "viewingChannels";

      private static const ziz:String = "ignoredChannels";

      private static const sew:String = "priority";

      private var lohug:TextField;

      private var fazam:TextField;

      private var pequpa:TextField;

      private var nadegiko:TextField;

      private var nicopin:Shape;

      private var wuvu:Shape;

      private var binityvu:Boolean;

      private var levavin:Boolean;

      private var buzebucoz:Boolean;

      private var rahypupah:Boolean;

      private var sozunuzyh:Sprite;

      private var tuni:Sprite;

      private var luzo:uint;

      private var joq:int;

      private var paq:Boolean;

      private var tarico:Number;

      private var zutopuq:int;

      private var kovabu:int;

      private var neh:Array;

      private var zobidyv:Array;

      private var cycyfi:Object;

      private var pudod:int = -1;

      private var met:uint;

      private var dej:String;

      private var wake:RegExp;

      private var turi:String = "";

      private var zaro:Boolean;

      private var hile:Boolean;

      private var puhehoc:Boolean;

      private var befy:Boolean = true;

      private var facucafe:Boolean;

      private var mebuv:String;

      private var jujihumyj:Array;

      public function pacagis(param1:String, param2:Function, param3:Array, param4:String) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(param1)
         {
            param1=param1.replace(new RegExp("[^\\w]*","g"),"");
            if(param2==null)
            {
               delete this.cycyfi[[param1]];
            }
            else
            {
               this.cycyfi[param1]=new Array(param2,param3,param4);
            }
            this.zaro=true;
         }
         else
         {
            console.report("ERROR: Invalid add menu params.",9);
         }
         return;
      }

      private function wubodur(param1:Event=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.hypewibev,true,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.pizikid,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.beryjan,false,0,true);
         return;
      }

      private function gyceno(param1:Event=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.hypewibev,true);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.pizikid);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.beryjan);
         return;
      }

      private function hypewibev(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.levavin=param1.shiftKey;
         this.buzebucoz=param1.ctrlKey;
         this.rahypupah=param1.altKey;
         return;
      }

      private function fapiveb(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         if(this.levavin)
         {
            _loc2_=console.config.style.traceFontSize+(param1.delta>0?1:-1);
            if(_loc2_>10&&_loc2_<20)
            {
               console.config.style.traceFontSize=_loc2_;
               console.config.style.updateStyleSheet();
               this.qavy();
               param1.stopPropagation();
            }
         }
         return;
      }

      private function faryp(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         console.panels.tooltip(param1.type==MouseEvent.MOUSE_MOVE?"Current scope::(CommandLine)":"",this);
         return;
      }

      private function vijacyp(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         try
         {
            stage.focus=this.pequpa;
            this.pinup();
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function beryjan(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Keyboard.SHIFT)
         {
            this.levavin=true;
         }
         if(param1.keyCode==Keyboard.CONTROL)
         {
            this.buzebucoz=true;
         }
         if(param1.keyCode==18)
         {
            this.rahypupah=true;
         }
         return;
      }

      private function pizikid(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1.keyCode==Keyboard.SHIFT)
         {
            this.levavin=false;
         }
         else
         {
            if(param1.keyCode==Keyboard.CONTROL)
            {
               this.buzebucoz=false;
            }
            else
            {
               if(param1.keyCode==18)
               {
                  this.rahypupah=false;
               }
            }
         }
         if((param1.keyCode==Keyboard.TAB||param1.keyCode==Keyboard.ENTER)&&(parent.visible)&&(visible)&&(this.pequpa.visible))
         {
            try
            {
               stage.focus=this.pequpa;
               this.pinup();
            }
            catch(err:Error)
            {
            }
         }
         return;
      }

      public function requestLogin(param1:Boolean=true) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ColorTransform = new ColorTransform();
         if(param1)
         {
            console.commandLine=true;
            console.report("//",-2);
            console.report("// <b>Enter remoting password</b> in CommandLine below...",-2);
            this.wibumine("Password");
            _loc2_.color=style.controlColor;
            this.nicopin.transform.colorTransform=_loc2_;
            this.lohug.transform.colorTransform=new ColorTransform(0.7,0.7,0.7);
         }
         else
         {
            this.wibumine("");
            this.nicopin.transform.colorTransform=_loc2_;
            this.lohug.transform.colorTransform=_loc2_;
         }
         this.pequpa.displayAsPassword=param1;
         this.facucafe=param1;
         return;
      }

      public function update(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.wuvu.alpha>0)
         {
            this.wuvu.alpha=this.wuvu.alpha-0.25;
         }
         if(style.showCommandLineScope)
         {
            if(this.turi!=console.cl.scopeString)
            {
               this.turi=console.cl.scopeString;
               this.wibumine(this.turi);
            }
         }
         else
         {
            if(this.turi!=null)
            {
               this.turi="";
               this.wibumine("");
            }
         }
         if(param1)
         {
            this.wuvu.alpha=1;
            this.zaro=true;
            this.hile=true;
         }
         if(this.hile)
         {
            this.hile=false;
            this.wyzopesa(true);
         }
         if(this.zaro)
         {
            this.zaro=false;
            this.mypofeve();
         }
         return;
      }

      public function qavy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.befy=true;
         this.hile=true;
         return;
      }

      private function wyzopesa(param1:Boolean=false) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.befy)
         {
            this.rejidocos();
         }
         else
         {
            if(!param1)
            {
               this.hapijo();
            }
         }
         if(this.zutopuq!=this.kovabu)
         {
            if(this.befy)
            {
               this.lohug.setSelection(this.lohug.text.length-this.zutopuq,this.lohug.text.length-this.kovabu);
            }
            else
            {
               this.lohug.setSelection(this.lohug.text.length-this.kovabu,this.lohug.text.length-this.zutopuq);
            }
            this.kovabu=-1;
            this.zutopuq=-1;
         }
         return;
      }

      private function hapijo() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:* = "";
         var _loc2_:Cicyhovyl = console.logs.first;
         var _loc3_:* = !(this.neh.length==1);
         var _loc4_:Boolean = this.met==0&&this.neh.length==0;
         while(_loc2_)
         {
            if((_loc4_)||(this.juju(_loc2_)))
            {
               _loc1_=_loc1_+this.sagibuwik(_loc2_,_loc3_);
            }
            _loc2_=_loc2_.next;
         }
         this.puhehoc=true;
         this.lohug.htmlText="<logs>"+_loc1_+"</logs>";
         this.puhehoc=false;
         this.gewepadeg();
         return;
      }

      public function lohomo(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1)&&(this.befy))
         {
            this.befy=false;
            this.wyzopesa();
            this.lohug.scrollV=this.lohug.maxScrollV;
         }
         else
         {
            if(!param1)
            {
               this.befy=true;
               this.rejidocos();
            }
         }
         this.updateMenu();
         return;
      }

      private function rejidocos() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:* = 0;
         var _loc1_:* = "";
         var _loc2_:int = Math.round(this.lohug.height/style.traceFontSize);
         var _loc3_:int = Math.round(this.lohug.width*5/style.traceFontSize);
         var _loc4_:Cicyhovyl = console.logs.last;
         var _loc5_:* = !(this.neh.length==1);
         while(_loc4_)
         {
            if(this.juju(_loc4_))
            {
               _loc6_=Math.ceil(_loc4_.text.length/_loc3_);
               if((_loc4_.html)||_loc2_>=_loc6_)
               {
                  _loc1_=this.sagibuwik(_loc4_,_loc5_)+_loc1_;
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
                  _loc1_=this.sagibuwik(_loc4_,_loc5_)+_loc1_;
                  break;
               }
            }
            _loc4_=_loc4_.wacumod;
         }
         this.puhehoc=true;
         this.lohug.htmlText="<logs>"+_loc1_+"</logs>";
         this.lohug.scrollV=this.lohug.maxScrollV;
         this.puhehoc=false;
         this.gewepadeg();
         return;
      }

      private function juju(param1:Cicyhovyl) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.met==0||param1.priority>=this.met)&&((this.kikepoqo(param1.ch))||(((this.dej)&&(this.neh.indexOf(Console.wenoc)>=0))&&(param1.text.toLowerCase().indexOf(this.dej)>=0))||((this.wake)&&(this.neh.indexOf(Console.wenoc)>=0))&&param1.text.search(this.wake)>=0);
      }

      private function kikepoqo(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return (this.neh.length==0||this.neh.indexOf(param1)>=0)&&(this.zobidyv.length==0||this.zobidyv.indexOf(param1)<0);
      }

      public function get reportChannel() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.neh.length==1?this.neh[0]:Console.sajim;
      }

      public function setViewingChannels(... rest) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in rest)
         {
            _loc2_.push(Console.suj(_loc3_));
         }
         if(this.neh[0]==Bamyhugep.dywugidaw&&(!_loc2_||!(_loc2_[0]==this.neh[0])))
         {
            console.refs.exitFocus();
         }
         this.zobidyv.splice(0);
         this.neh.splice(0);
         if(_loc2_.indexOf(Console.caraky)<0&&_loc2_.indexOf(null)<0)
         {
            for each (_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  this.neh.push(_loc4_);
               }
            }
         }
         this.qavy();
         console.panels.updateMenu();
         return;
      }

      public function get viewingChannels() : Array {
         return this.neh;
      }

      public function jerupen(... rest) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in rest)
         {
            _loc2_.push(Console.suj(_loc3_));
         }
         if(this.neh[0]==Bamyhugep.dywugidaw)
         {
            console.refs.exitFocus();
         }
         this.zobidyv.splice(0);
         this.neh.splice(0);
         if(_loc2_.indexOf(Console.caraky)<0&&_loc2_.indexOf(null)<0)
         {
            for each (_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  this.zobidyv.push(_loc4_);
               }
            }
         }
         this.qavy();
         console.panels.updateMenu();
         return;
      }

      public function get ignoredChannels() : Array {
         return this.zobidyv;
      }

      private function fiqor(param1:String="") : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.wake=null;
            this.dej=Bamyhugep.vyjyb(param1.toLowerCase());
            this.hocamugol();
         }
         else
         {
            this.foluliza();
         }
         return;
      }

      private function kusikyqyw(param1:String="") : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.dej=null;
            this.wake=new RegExp(Bamyhugep.vyjyb(param1),"gi");
            this.hocamugol();
         }
         else
         {
            this.foluliza();
         }
         return;
      }

      private function hocamugol() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         console.clear(Console.wenoc);
         console.logs.addChannel(Console.wenoc);
         this.setViewingChannels(Console.wenoc);
         return;
      }

      private function foluliza() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.wake=null;
         this.dej=null;
         if(this.neh.length==1&&this.neh[0]==Console.wenoc)
         {
            this.setViewingChannels(Console.caraky);
         }
         return;
      }

      private function sagibuwik(param1:Cicyhovyl, param2:Boolean) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = "<p>";
         if(param2)
         {
            _loc3_=_loc3_+param1.gebaqica;
         }
         if(config.showLineNumber)
         {
            _loc3_=_loc3_+param1.totyduv;
         }
         if(config.showTimestamp)
         {
            _loc3_=_loc3_+param1.web;
         }
         var _loc4_:String = "p"+param1.priority;
         return _loc3_+"<"+_loc4_+">"+this.zynajah(param1.text)+"</"+_loc4_+"></p>";
      }

      private function zynajah(param1:String) : String {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(this.wake)
         {
            this.wake.lastIndex=0;
            _loc2_=this.wake.exec(param1);
            while(_loc2_!=null)
            {
               _loc3_=_loc2_.index;
               _loc4_=_loc2_[0];
               if(_loc4_.search("<|>")>=0)
               {
                  this.wake.lastIndex=this.wake.lastIndex-_loc4_.length-_loc4_.search("<|>");
               }
               else
               {
                  if(param1.lastIndexOf("<",_loc3_)<=param1.lastIndexOf(">",_loc3_))
                  {
                     param1=param1.substring(0,_loc3_)+"<u>"+param1.substring(_loc3_,_loc3_+_loc4_.length)+"</u>"+param1.substring(_loc3_+_loc4_.length);
                     this.wake.lastIndex=this.wake.lastIndex+7;
                  }
               }
               _loc2_=this.wake.exec(param1);
            }
         }
         else
         {
            if(this.dej)
            {
               _loc5_=param1.toLowerCase();
               _loc6_=_loc5_.lastIndexOf(this.dej);
               while(_loc6_>=0)
               {
                  param1=param1.substring(0,_loc6_)+"<u>"+param1.substring(_loc6_,_loc6_+this.dej.length)+"</u>"+param1.substring(_loc6_+this.dej.length);
                  _loc6_=_loc5_.lastIndexOf(this.dej,_loc6_-2);
               }
            }
         }
         return param1;
      }

      private function fopoh(param1:Event=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         if((this.puhehoc)||(this.levavin))
         {
            return;
         }
         var _loc2_:* = this.lohug.scrollV>=this.lohug.maxScrollV;
         if(!console.paused&&!(this.befy==_loc2_))
         {
            _loc3_=this.lohug.maxScrollV-this.lohug.scrollV;
            this.zutopuq=this.lohug.text.length-this.lohug.selectionBeginIndex;
            this.kovabu=this.lohug.text.length-this.lohug.selectionEndIndex;
            this.befy=_loc2_;
            this.wyzopesa();
            this.lohug.scrollV=this.lohug.maxScrollV-_loc3_;
         }
         this.gewepadeg();
         return;
      }

      private function gewepadeg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.lohug.maxScrollV<=1)
         {
            this.sozunuzyh.visible=false;
         }
         else
         {
            this.sozunuzyh.visible=true;
            if(this.befy)
            {
               this.wonujilut=1;
            }
            else
            {
               this.wonujilut=(this.lohug.scrollV-1)/(this.lohug.maxScrollV-1);
            }
         }
         return;
      }

      private function sinyvo(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((this.tuni.visible)&&this.tuni.mouseY>0||!this.tuni.visible&&this.sozunuzyh.mouseY>this.tarico/2)
         {
            this.joq=3;
         }
         else
         {
            this.joq=-3;
         }
         this.lohug.scrollV=this.lohug.scrollV+this.joq;
         this.luzo=0;
         addEventListener(Event.ENTER_FRAME,this.voti,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.hyfohyzoj,false,0,true);
         return;
      }

      private function voti(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.luzo++;
         if(this.luzo>10)
         {
            this.luzo=9;
            if(this.joq<0&&this.tuni.y>this.sozunuzyh.mouseY||this.joq>0&&this.tuni.y+this.tuni.height<this.sozunuzyh.mouseY)
            {
               this.lohug.scrollV=this.lohug.scrollV+this.joq;
            }
         }
         return;
      }

      private function hyfohyzoj(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ENTER_FRAME,this.voti);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.hyfohyzoj);
         return;
      }

      private function get wonujilut() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.tuni.y-style.controlSize)/(this.tarico-30-style.controlSize*2);
      }

      private function set wonujilut(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuni.y=style.controlSize+(this.tarico-30-style.controlSize*2)*param1;
         return;
      }

      private function qonapato(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         this.paq=true;
         if(!console.paused&&(this.befy))
         {
            this.befy=false;
            _loc2_=this.wonujilut;
            this.wyzopesa();
            this.wonujilut=_loc2_;
         }
         this.tuni.startDrag(false,new Rectangle(0,style.controlSize,0,this.tarico-30-style.controlSize*2));
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.vovepurek,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.fih,false,0,true);
         param1.stopPropagation();
         return;
      }

      private function vovepurek(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.puhehoc=true;
         this.lohug.scrollV=Math.round(this.wonujilut*(this.lohug.maxScrollV-1)+1);
         this.puhehoc=false;
         return;
      }

      private function fih(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuni.stopDrag();
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.vovepurek);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.fih);
         this.paq=false;
         this.fopoh();
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.puhehoc=true;
         super.width=param1;
         this.lohug.width=param1-4;
         zem.width=param1-6;
         this.pequpa.width=width-15-this.pequpa.x;
         this.nicopin.width=param1;
         this.wuvu.graphics.clear();
         this.wuvu.graphics.lineStyle(1,style.controlColor);
         this.wuvu.graphics.moveTo(10,-1);
         this.wuvu.graphics.lineTo(param1-10,-1);
         this.sozunuzyh.x=param1;
         this.befy=true;
         this.tyl();
         this.zaro=true;
         this.hile=true;
         this.puhehoc=false;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.puhehoc=true;
         var _loc2_:int = style.menuFontSize;
         var _loc3_:Number = _loc2_+6+style.traceFontSize;
         if(height!=param1)
         {
            this.binityvu=param1<(this.pequpa.visible?_loc3_+_loc2_+4:_loc3_);
         }
         super.height=param1;
         var _loc4_:Boolean = (this.binityvu)||!style.topMenu;
         this.bibipeq();
         this.lohug.y=_loc4_?0:_loc2_;
         this.lohug.height=param1-(this.pequpa.visible?_loc2_+4:0)-(_loc4_?0:_loc2_);
         var _loc5_:Number = param1-_loc2_+6;
         this.pequpa.y=_loc5_;
         this.fazam.y=_loc5_;
         this.nadegiko.y=this.pequpa.y-this.nadegiko.height;
         this.nicopin.y=_loc5_;
         this.wuvu.y=this.pequpa.visible?_loc5_:param1;
         this.sozunuzyh.y=_loc4_?6:_loc2_+4;
         var _loc6_:uint = style.controlSize;
         this.tarico=this.wuvu.y-(this.pequpa.visible?0:_loc6_*2)-this.sozunuzyh.y;
         this.tuni.visible=this.tarico>40;
         this.sozunuzyh.graphics.clear();
         if(this.tarico>=10)
         {
            this.sozunuzyh.graphics.beginFill(style.controlColor,0.7);
            this.sozunuzyh.graphics.drawRect(-_loc6_,0,_loc6_,_loc6_);
            this.sozunuzyh.graphics.drawRect(-_loc6_,this.tarico-_loc6_,_loc6_,_loc6_);
            this.sozunuzyh.graphics.beginFill(style.controlColor,0.25);
            this.sozunuzyh.graphics.drawRect(-_loc6_,_loc6_,_loc6_,this.tarico-_loc6_*2);
            this.sozunuzyh.graphics.beginFill(0,0);
            this.sozunuzyh.graphics.drawRect(-_loc6_*2,_loc6_*2,_loc6_*2,this.tarico-_loc6_*2);
            this.sozunuzyh.graphics.endFill();
         }
         this.befy=true;
         this.hile=true;
         this.puhehoc=false;
         return;
      }

      private function bibipeq() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Boolean = (this.binityvu)||!style.topMenu;
         this.lohug.y=_loc1_?0:zem.y+zem.height-6;
         this.lohug.height=Math.max(0,height-(this.pequpa.visible?style.menuFontSize+4:0)-this.lohug.y);
         return;
      }

      public function updateMenu(param1:Boolean=false) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.mypofeve();
         }
         else
         {
            this.zaro=true;
         }
         return;
      }

      private function mypofeve() : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = false;
         var _loc3_:String = null;
         var _loc1_:* = "<r><high>";
         if((this.binityvu)||!style.topMenu)
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
            for (_loc3_ in this.cycyfi)
            {
               _loc1_=_loc1_+("<a href=\"event:external_"+_loc3_+"\">"+_loc3_+"</a> ");
               _loc2_=true;
            }
            if(_loc2_)
            {
               _loc1_=_loc1_+"¦ ";
            }
            _loc1_=_loc1_+this.hahygoty("<a href=\"event:fps\">F</a>",console.fpsMonitor>0);
            _loc1_=_loc1_+this.hahygoty(" <a href=\"event:mm\">M</a>",console.memoryMonitor>0);
            _loc1_=_loc1_+this.hahygoty(" <a href=\"event:command\">CL</a>",this.commandLine);
            if(console.remoter.remoting!=Wywysok.mysewe)
            {
               if(config.displayRollerEnabled)
               {
                  _loc1_=_loc1_+this.hahygoty(" <a href=\"event:roller\">Ro</a>",console.displayRoller);
               }
               if(config.rulerToolEnabled)
               {
                  _loc1_=_loc1_+this.hahygoty(" <a href=\"event:ruler\">RL</a>",console.panels.rulerActive);
               }
            }
            _loc1_=_loc1_+" ¦</b>";
            _loc1_=_loc1_+" <a href=\"event:copy\">Sv</a>";
            _loc1_=_loc1_+(" <a href=\"event:priority\">P"+this.met+"</a>");
            _loc1_=_loc1_+this.hahygoty(" <a href=\"event:pause\">P</a>",console.paused);
            _loc1_=_loc1_+" <a href=\"event:clear\">C</a> <a href=\"event:close\">X</a> <a href=\"event:hide\">›</a>";
         }
         _loc1_=_loc1_+" </b></menu></high></r>";
         zem.htmlText=_loc1_;
         zem.scrollH=zem.maxScrollH;
         this.bibipeq();
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
         var _loc5_:Boolean = this.neh.length>0||this.zobidyv.length>0;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=_loc3_[_loc6_];
            _loc8_=!_loc5_&&_loc6_==0||(_loc5_)&&!(_loc6_==0)&&(this.kikepoqo(_loc7_))?"<ch><b>"+_loc7_+"</b></ch>":_loc7_;
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

      private function hahygoty(param1:String, param2:Boolean) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2)
         {
            return "<menuHi>"+param1+"</menuHi>";
         }
         return param1;
      }

      public function onMenuRollOver(param1:TextEvent, param2:Hycoba=null) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         if(param2==null)
         {
            param2=this;
         }
         var _loc3_:String = param1.text?param1.text.replace("event:",""):"";
         if(_loc3_=="channel_"+Console.caraky)
         {
            _loc3_="View all channels";
         }
         else
         {
            if(_loc3_=="channel_"+Console.zuhuly)
            {
               _loc3_="Default channel::Logs with no channel";
            }
            else
            {
               if(_loc3_=="channel_"+Console.sajim)
               {
                  _loc3_="Console\'s channel::Logs generated from Console";
               }
               else
               {
                  if(_loc3_=="channel_"+Console.wenoc)
                  {
                     _loc3_=this.wake?String(this.wake):this.dej;
                     _loc3_="Filtering channel"+"::*"+_loc3_+"cogycylyb";
                  }
                  else
                  {
                     if(_loc3_=="channel_"+Bamyhugep.dywugidaw)
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
                                    _loc4_=this.cycyfi[_loc3_.substring(9)];
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

      private function vaq(param1:TextEvent) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var str:String = null;
         var file:FileReference = null;
         var ind:int = 0;
         var menu:Array = null;
         var e:TextEvent = param1;
         zem.setSelection(0,0);
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
               this.binityvu=true;
               console.config.style.topMenu=false;
               this.height=height;
               this.updateMenu();
            }
            else
            {
               if(t=="show")
               {
                  console.panels.tooltip();
                  this.binityvu=false;
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
                              this.vedo(this.levavin);
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
                                             str=console.logs.getLogsAsString("\r\n",!this.levavin,this.buzebucoz?this.juju:null);
                                             if(this.rahypupah)
                                             {
                                                file=new FileReference();
                                                try
                                                {
                                                   file["save"](str,"log.txt");
                                                }
                                                catch(err:Error)
                                                {
                                                   if(_loc5_)
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
                                                      console.remoter.remoting=Wywysok.mysewe;
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
                                                                  this.pequpa.text=t.substring(ind+1);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(t.indexOf("external_")==0)
                                                               {
                                                                  menu=this.cycyfi[t.substring(9)];
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
         zem.setSelection(0,0);
         e.stopPropagation();
         return;
      }

      public function onChannelPressed(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = null;
         if((this.buzebucoz)&&!(param1==Console.caraky))
         {
            _loc2_=this.lufar(this.zobidyv,param1);
            this.jerupen.apply(this,_loc2_);
         }
         else
         {
            if((this.levavin)&&!(param1==Console.caraky)&&!(this.neh[0]==Bamyhugep.dywugidaw))
            {
               _loc2_=this.lufar(this.neh,param1);
               this.setViewingChannels.apply(this,_loc2_);
            }
            else
            {
               console.setViewingChannels(param1);
            }
         }
         return;
      }

      private function lufar(param1:Array, param2:String) : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var param1:Array = param1.concat();
         var _loc3_:int = param1.indexOf(param2);
         if(_loc3_>=0)
         {
            param1.splice(_loc3_,1);
            if(param1.length==0)
            {
               param1.push(Console.caraky);
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
         this.met=param1;
         console.so[sew]=this.met;
         this.qavy();
         this.updateMenu();
         return;
      }

      public function get priority() : uint {
         return this.met;
      }

      private function vedo(param1:Boolean) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:uint = 0;
         var _loc2_:uint = 10;
         var _loc4_:Cicyhovyl = console.logs.last;
         var _loc5_:int = this.met;
         this.met=0;
         var _loc6_:uint = 32000;
         while((_loc4_)&&_loc6_>0)
         {
            _loc6_--;
            if(this.juju(_loc4_))
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
            _loc4_=_loc4_.wacumod;
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

      private function tugyzajaq(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pudod=-1;
         console.updateSO();
         this.jujihumyj=new Array();
         return;
      }

      private function docegovuq(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Keyboard.TAB)
         {
            if(this.mebuv)
            {
               this.pequpa.text=this.mebuv;
               this.pinup();
               this.putahatad();
            }
         }
         return;
      }

      private function bimegakik(param1:KeyboardEvent) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         if(param1.keyCode==Keyboard.ENTER)
         {
            this.qavy();
            this.putahatad();
            if(this.facucafe)
            {
               console.remoter.login(this.pequpa.text);
               this.pequpa.text="";
               this.requestLogin(false);
            }
            else
            {
               _loc2_=this.pequpa.text;
               if(_loc2_.length>2)
               {
                  _loc3_=this.jujihumyj.indexOf(_loc2_);
                  while(_loc3_>=0)
                  {
                     this.jujihumyj.splice(_loc3_,1);
                     _loc3_=this.jujihumyj.indexOf(_loc2_);
                  }
                  this.jujihumyj.unshift(_loc2_);
                  this.pudod=-1;
                  if(this.jujihumyj.length>20)
                  {
                     this.jujihumyj.splice(20);
                  }
                  console.updateSO(fatahud);
               }
               this.pequpa.text="";
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
                  this.putahatad();
                  if((this.pequpa.text)&&this.pudod<0)
                  {
                     this.jujihumyj.unshift(this.pequpa.text);
                     this.pudod++;
                  }
                  if(this.pudod<this.jujihumyj.length-1)
                  {
                     this.pudod++;
                     this.pequpa.text=this.jujihumyj[this.pudod];
                     this.pinup();
                  }
                  else
                  {
                     this.pudod=this.jujihumyj.length;
                     this.pequpa.text="";
                  }
               }
               else
               {
                  if(param1.keyCode==Keyboard.DOWN)
                  {
                     this.putahatad();
                     if(this.pudod>0)
                     {
                        this.pudod--;
                        this.pequpa.text=this.jujihumyj[this.pudod];
                        this.pinup();
                     }
                     else
                     {
                        this.pudod=-1;
                        this.pequpa.text="";
                     }
                  }
                  else
                  {
                     if(param1.keyCode==Keyboard.TAB)
                     {
                        this.pinup();
                     }
                     else
                     {
                        if(!this.facucafe)
                        {
                           this.ripaqyge();
                        }
                     }
                  }
               }
            }
         }
         return;
      }

      private function pinup() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pequpa.setSelection(this.pequpa.text.length,this.pequpa.text.length);
         return;
      }

      private function ripaqyge(param1:Event=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.pequpa.text;
         if((_loc2_)&&(config.commandLineAutoCompleteEnabled)&&!(console.remoter.remoting==Wywysok.mysewe))
         {
            try
            {
               this.putahatad(console.cl.getHintsFor(_loc2_,5));
               return;
            }
            catch(err:Error)
            {
            }
         }
         this.putahatad();
         return;
      }

      private function nawafam(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.putahatad();
         return;
      }

      private function putahatad(param1:Array=null) : void {
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
            this.mebuv=param1[0][0];
            if(param1.length>1)
            {
               _loc5_=param1[1][0];
               _loc6_=false;
               _loc7_=0;
               while(_loc7_<_loc5_.length)
               {
                  if(_loc5_.charAt(_loc7_)==this.mebuv.charAt(_loc7_))
                  {
                     _loc6_=true;
                     _loc7_++;
                     continue;
                  }
                  if((_loc6_)&&this.pequpa.text.length<_loc7_)
                  {
                     this.mebuv=this.mebuv.substring(0,_loc7_);
                  }
               }
            }
            _loc2_=new Array();
            for each (_loc3_ in param1)
            {
               _loc2_.push("<p3>"+_loc3_[0]+"</p3> <p0>"+(_loc3_[1]?_loc3_[1]:"")+"</p0>");
            }
            this.nadegiko.htmlText="<p>"+_loc2_.reverse().join("\n")+"</p>";
            this.nadegiko.visible=true;
            _loc4_=this.pequpa.getCharBoundaries(this.pequpa.text.length-1);
            if(!_loc4_)
            {
               _loc4_=new Rectangle();
            }
            this.nadegiko.x=this.pequpa.x+_loc4_.x+_loc4_.width+30;
            this.nadegiko.y=height-this.nadegiko.height;
         }
         else
         {
            this.nadegiko.visible=false;
            this.mebuv=null;
         }
         return;
      }

      public function wibumine(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.facucafe)
         {
            this.facucafe=false;
            this.requestLogin(false);
         }
         this.fazam.autoSize=TextFieldAutoSize.LEFT;
         this.fazam.text=param1;
         this.tyl();
         return;
      }

      private function tyl() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = width-48;
         if(this.fazam.width>120||this.fazam.width>_loc1_)
         {
            this.fazam.autoSize=TextFieldAutoSize.NONE;
            this.fazam.width=_loc1_>120?120:_loc1_;
            this.fazam.scrollH=this.fazam.maxScrollH;
         }
         this.pequpa.x=this.fazam.width+2;
         this.pequpa.width=width-15-this.pequpa.x;
         this.nadegiko.x=this.pequpa.x;
         return;
      }

      public function set commandLine(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.pequpa.visible=true;
            this.fazam.visible=true;
            this.nicopin.visible=true;
         }
         else
         {
            this.pequpa.visible=false;
            this.fazam.visible=false;
            this.nicopin.visible=false;
         }
         this.zaro=true;
         this.height=height;
         return;
      }

      public function get commandLine() : Boolean {
         return this.pequpa.visible;
      }
   }

}