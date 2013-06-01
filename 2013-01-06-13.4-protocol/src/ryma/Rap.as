package ryma
{
[CLASS1905]   import flash.text.TextField;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.geom.ColorTransform;
   import cakajitez.Ras;
   import wacic.Console;
   import losiba.Wejilag;
   import flash.geom.Rectangle;
   import losiba.Kelasydo;
   import flash.events.TextEvent;
   import flash.net.FileReference;
   import flash.system.System;
   import flash.system.Security;
   import flash.system.SecurityPanel;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.text.TextFieldType;
   import flash.events.FocusEvent;


   public class Rap extends Nil
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rap(param1:Console) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.faqap=new Object();
         super(param1);
         var _loc2_:int = style.menuFontSize;
         console.cl.addCLCmd("filter",this.nyzyjiva,"Filter console logs to matching string. When done, click on the * (global channel) at top.",true);
         console.cl.addCLCmd("filterexp",this.kego,"Filter console logs to matching regular expression",true);
         console.cl.addCLCmd("clearhistory",this.cym,"Clear history of commands you have entered.",true);
         name=NAME;
         wufetowup=50;
         cudu=18;
         this.vysamazo=bula("traceField");
         this.vysamazo.wordWrap=true;
         this.vysamazo.multiline=true;
         this.vysamazo.y=_loc2_;
         this.vysamazo.addEventListener(Event.SCROLL,this.gadyv);
         addChild(this.vysamazo);
         hanapoje=bula("menuField");
         hanapoje.wordWrap=true;
         hanapoje.multiline=true;
         hanapoje.autoSize=TextFieldAutoSize.RIGHT;
         hanapoje.height=_loc2_+6;
         hanapoje.y=-2;
         qisur(hanapoje,this.onMenuRollOver);
         addChild(hanapoje);
         this.pysi=new Shape();
         this.pysi.name="commandBackground";
         this.pysi.graphics.beginFill(style.commandLineColor,0.1);
         this.pysi.graphics.drawRoundRect(0,0,100,18,_loc2_,_loc2_);
         this.pysi.scale9Grid=new Rectangle(9,9,80,1);
         addChild(this.pysi);
         var _loc3_:TextFormat = new TextFormat(style.menuFont,style.menuFontSize,style.highColor);
         this.qaki=new TextField();
         this.qaki.name="commandField";
         this.qaki.type=TextFieldType.INPUT;
         this.qaki.x=40;
         this.qaki.height=_loc2_+6;
         this.qaki.addEventListener(KeyboardEvent.KEY_DOWN,this.pobyvo);
         this.qaki.addEventListener(KeyboardEvent.KEY_UP,this.tipuqoha);
         this.qaki.addEventListener(FocusEvent.FOCUS_IN,this.bob);
         this.qaki.addEventListener(FocusEvent.FOCUS_OUT,this.poporaga);
         this.qaki.defaultTextFormat=_loc3_;
         addChild(this.qaki);
         this.tuqovake=bula("hintField",true);
         this.tuqovake.mouseEnabled=false;
         this.tuqovake.x=this.qaki.x;
         this.tuqovake.autoSize=TextFieldAutoSize.LEFT;
         addChild(this.tuqovake);
         this.piwypi();
         _loc3_.color=style.commandLineColor;
         this.dihaparuc=new TextField();
         this.dihaparuc.name="commandPrefx";
         this.dihaparuc.type=TextFieldType.DYNAMIC;
         this.dihaparuc.x=2;
         this.dihaparuc.height=_loc2_+6;
         this.dihaparuc.selectable=false;
         this.dihaparuc.defaultTextFormat=_loc3_;
         this.dihaparuc.addEventListener(MouseEvent.MOUSE_DOWN,this.cykycy);
         this.dihaparuc.addEventListener(MouseEvent.MOUSE_MOVE,this.botilegut);
         this.dihaparuc.addEventListener(MouseEvent.ROLL_OUT,this.botilegut);
         addChild(this.dihaparuc);
         this.danoh=new Shape();
         this.danoh.name="blinkLine";
         this.danoh.alpha=0.2;
         addChild(this.danoh);
         this.kaf=new Sprite();
         this.kaf.name="scroller";
         this.kaf.tabEnabled=false;
         this.kaf.y=_loc2_+4;
         this.kaf.buttonMode=true;
         this.kaf.addEventListener(MouseEvent.MOUSE_DOWN,this.gygijawef,false,0,true);
         this.dawo=new Sprite();
         this.dawo.name="scrollbar";
         this.dawo.tabEnabled=false;
         this.dawo.y=style.controlSize;
         this.dawo.graphics.beginFill(style.controlColor,1);
         this.dawo.graphics.drawRect(-style.controlSize,0,style.controlSize,30);
         this.dawo.graphics.beginFill(0,0);
         this.dawo.graphics.drawRect(-style.controlSize*2,0,style.controlSize*2,30);
         this.dawo.graphics.endFill();
         this.dawo.addEventListener(MouseEvent.MOUSE_DOWN,this.pogywi,false,0,true);
         this.kaf.addChild(this.dawo);
         addChild(this.kaf);
         this.qaki.visible=false;
         this.dihaparuc.visible=false;
         this.pysi.visible=false;
         this.los("");
         init(640,100,true);
         qatada(hanapoje);
         if(console.so[sapyjes] is Array)
         {
            this.bahak=console.so[sapyjes];
         }
         else
         {
            console.so[sapyjes]=this.bahak=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[pog] is Array)
         {
            this.vis=console.so[pog];
         }
         else
         {
            console.so[pog]=this.vis=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[lutawacu] is Array)
         {
            this.hyhe=console.so[lutawacu];
         }
         if(this.vis.length>0||this.hyhe==null)
         {
            console.so[lutawacu]=this.hyhe=new Array();
         }
         if((config.rememberFilterSettings)&&console.so[waquw] is uint)
         {
            this.bakakuhoc=console.so[waquw];
         }
         addEventListener(MouseEvent.MOUSE_WHEEL,this.jybep,false,0,true);
         addEventListener(TextEvent.LINK,this.dylivep,false,0,true);
         addEventListener(Event.ADDED_TO_STAGE,this.bafa,false,0,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this.baribalyl,false,0,true);
         return;
      }

      public static const NAME:String = "mainPanel";

      private static const sapyjes:String = "clhistory";

      private static const pog:String = "viewingChannels";

      private static const lutawacu:String = "ignoredChannels";

      private static const waquw:String = "priority";

      private var vysamazo:TextField;

      private var dihaparuc:TextField;

      private var qaki:TextField;

      private var tuqovake:TextField;

      private var pysi:Shape;

      private var danoh:Shape;

      private var keliq:Boolean;

      private var soqabyjat:Boolean;

      private var migabejo:Boolean;

      private var jyp:Boolean;

      private var kaf:Sprite;

      private var dawo:Sprite;

      private var qifoqy:uint;

      private var hupud:int;

      private var famypysof:Boolean;

      private var racag:Number;

      private var pik:int;

      private var pyz:int;

      private var vis:Array;

      private var hyhe:Array;

      private var faqap:Object;

      private var guqepyfy:int = -1;

      private var bakakuhoc:uint;

      private var cybilemi:String;

      private var rupaca:RegExp;

      private var jysipyhil:String = "";

      private var runivat:Boolean;

      private var qupikosu:Boolean;

      private var hecokyvy:Boolean;

      private var nyto:Boolean = true;

      private var bepe:Boolean;

      private var junaru:String;

      private var bahak:Array;

      public function tyr(param1:String, param2:Function, param3:Array, param4:String) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param1)
         {
            param1=param1.replace(new RegExp("[^\\w]*","g"),"");
            if(param2==null)
            {
               delete this.faqap[[param1]];
            }
            else
            {
               this.faqap[param1]=new Array(param2,param3,param4);
            }
            this.runivat=true;
         }
         else
         {
            console.report("ERROR: Invalid add menu params.",9);
         }
         return;
      }

      private function bafa(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(MouseEvent.MOUSE_DOWN,this.jega,true,0,true);
         stage.addEventListener(KeyboardEvent.KEY_UP,this.myzob,false,0,true);
         stage.addEventListener(KeyboardEvent.KEY_DOWN,this.dozofycy,false,0,true);
         return;
      }

      private function baribalyl(param1:Event=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,this.jega,true);
         stage.removeEventListener(KeyboardEvent.KEY_UP,this.myzob);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,this.dozofycy);
         return;
      }

      private function jega(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.soqabyjat=param1.shiftKey;
         this.migabejo=param1.ctrlKey;
         this.jyp=param1.altKey;
         return;
      }

      private function jybep(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         if(this.soqabyjat)
         {
            _loc2_=console.config.style.traceFontSize+(param1.delta>0?1:-1);
            if(_loc2_>10&&_loc2_<20)
            {
               console.config.style.traceFontSize=_loc2_;
               console.config.style.updateStyleSheet();
               this.zim();
               param1.stopPropagation();
            }
         }
         return;
      }

      private function botilegut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         console.panels.tooltip(param1.type==MouseEvent.MOUSE_MOVE?"Current scope::(CommandLine)":"",this);
         return;
      }

      private function cykycy(param1:MouseEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         try
         {
            stage.focus=this.qaki;
            this.kyticuq();
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function dozofycy(param1:KeyboardEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.keyCode==Keyboard.SHIFT)
         {
            this.soqabyjat=true;
         }
         if(param1.keyCode==Keyboard.CONTROL)
         {
            this.migabejo=true;
         }
         if(param1.keyCode==18)
         {
            this.jyp=true;
         }
         return;
      }

      private function myzob(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1.keyCode==Keyboard.SHIFT)
         {
            this.soqabyjat=false;
         }
         else
         {
            if(param1.keyCode==Keyboard.CONTROL)
            {
               this.migabejo=false;
            }
            else
            {
               if(param1.keyCode==18)
               {
                  this.jyp=false;
               }
            }
         }
         if((param1.keyCode==Keyboard.TAB||param1.keyCode==Keyboard.ENTER)&&(parent.visible)&&(visible)&&(this.qaki.visible))
         {
            try
            {
               stage.focus=this.qaki;
               this.kyticuq();
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
            this.los("Password");
            _loc2_.color=style.controlColor;
            this.pysi.transform.colorTransform=_loc2_;
            this.vysamazo.transform.colorTransform=new ColorTransform(0.7,0.7,0.7);
         }
         else
         {
            this.los("");
            this.pysi.transform.colorTransform=_loc2_;
            this.vysamazo.transform.colorTransform=_loc2_;
         }
         this.qaki.displayAsPassword=param1;
         this.bepe=param1;
         return;
      }

      public function update(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.danoh.alpha>0)
         {
            this.danoh.alpha=this.danoh.alpha-0.25;
         }
         if(style.showCommandLineScope)
         {
            if(this.jysipyhil!=console.cl.scopeString)
            {
               this.jysipyhil=console.cl.scopeString;
               this.los(this.jysipyhil);
            }
         }
         else
         {
            if(this.jysipyhil!=null)
            {
               this.jysipyhil="";
               this.los("");
            }
         }
         if(param1)
         {
            this.danoh.alpha=1;
            this.runivat=true;
            this.qupikosu=true;
         }
         if(this.qupikosu)
         {
            this.qupikosu=false;
            this.konarigeh(true);
         }
         if(this.runivat)
         {
            this.runivat=false;
            this.sogututok();
         }
         return;
      }

      public function zim() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nyto=true;
         this.qupikosu=true;
         return;
      }

      private function konarigeh(param1:Boolean=false) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.nyto)
         {
            this.cepa();
         }
         else
         {
            if(!param1)
            {
               this.kokonun();
            }
         }
         if(this.pik!=this.pyz)
         {
            if(this.nyto)
            {
               this.vysamazo.setSelection(this.vysamazo.text.length-this.pik,this.vysamazo.text.length-this.pyz);
            }
            else
            {
               this.vysamazo.setSelection(this.vysamazo.text.length-this.pyz,this.vysamazo.text.length-this.pik);
            }
            this.pyz=-1;
            this.pik=-1;
         }
         return;
      }

      private function kokonun() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:* = "";
         var _loc2_:Ras = console.logs.first;
         var _loc3_:* = !(this.vis.length==1);
         var _loc4_:Boolean = this.bakakuhoc==0&&this.vis.length==0;
         while(_loc2_)
         {
            if((_loc4_)||(this.kilyvih(_loc2_)))
            {
               _loc1_=_loc1_+this.zarupyby(_loc2_,_loc3_);
            }
            _loc2_=_loc2_.next;
         }
         this.hecokyvy=true;
         this.vysamazo.htmlText="<logs>"+_loc1_+"</logs>";
         this.hecokyvy=false;
         this.qum();
         return;
      }

      public function gyjacofe(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1)&&(this.nyto))
         {
            this.nyto=false;
            this.konarigeh();
            this.vysamazo.scrollV=this.vysamazo.maxScrollV;
         }
         else
         {
            if(!param1)
            {
               this.nyto=true;
               this.cepa();
            }
         }
         this.updateMenu();
         return;
      }

      private function cepa() : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:* = 0;
         var _loc1_:* = "";
         var _loc2_:int = Math.round(this.vysamazo.height/style.traceFontSize);
         var _loc3_:int = Math.round(this.vysamazo.width*5/style.traceFontSize);
         var _loc4_:Ras = console.logs.last;
         var _loc5_:* = !(this.vis.length==1);
         while(_loc4_)
         {
            if(this.kilyvih(_loc4_))
            {
               _loc6_=Math.ceil(_loc4_.text.length/_loc3_);
               if((_loc4_.html)||_loc2_>=_loc6_)
               {
                  _loc1_=this.zarupyby(_loc4_,_loc5_)+_loc1_;
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
                  _loc1_=this.zarupyby(_loc4_,_loc5_)+_loc1_;
                  break;
               }
            }
            _loc4_=_loc4_.syluget;
         }
         this.hecokyvy=true;
         this.vysamazo.htmlText="<logs>"+_loc1_+"</logs>";
         this.vysamazo.scrollV=this.vysamazo.maxScrollV;
         this.hecokyvy=false;
         this.qum();
         return;
      }

      private function kilyvih(param1:Ras) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.bakakuhoc==0||param1.priority>=this.bakakuhoc)&&((this.dyku(param1.ch))||(((this.cybilemi)&&(this.vis.indexOf(Console.zunowerim)>=0))&&(param1.text.toLowerCase().indexOf(this.cybilemi)>=0))||((this.rupaca)&&(this.vis.indexOf(Console.zunowerim)>=0))&&param1.text.search(this.rupaca)>=0);
      }

      private function dyku(param1:String) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.vis.length==0||this.vis.indexOf(param1)>=0)&&(this.hyhe.length==0||this.hyhe.indexOf(param1)<0);
      }

      public function get reportChannel() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.vis.length==1?this.vis[0]:Console.gicidip;
      }

      public function setViewingChannels(... rest) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in rest)
         {
            _loc2_.push(Console.rojik(_loc3_));
         }
         if(this.vis[0]==Wejilag.hafiwo&&(!_loc2_||!(_loc2_[0]==this.vis[0])))
         {
            console.refs.exitFocus();
         }
         this.hyhe.splice(0);
         this.vis.splice(0);
         if(_loc2_.indexOf(Console.wacyvefo)<0&&_loc2_.indexOf(null)<0)
         {
            for each (_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  this.vis.push(_loc4_);
               }
            }
         }
         this.zim();
         console.panels.updateMenu();
         return;
      }

      public function get viewingChannels() : Array {
         return this.vis;
      }

      public function cubofojiv(... rest) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Array = new Array();
         for each (_loc3_ in rest)
         {
            _loc2_.push(Console.rojik(_loc3_));
         }
         if(this.vis[0]==Wejilag.hafiwo)
         {
            console.refs.exitFocus();
         }
         this.hyhe.splice(0);
         this.vis.splice(0);
         if(_loc2_.indexOf(Console.wacyvefo)<0&&_loc2_.indexOf(null)<0)
         {
            for each (_loc4_ in _loc2_)
            {
               if(_loc4_)
               {
                  this.hyhe.push(_loc4_);
               }
            }
         }
         this.zim();
         console.panels.updateMenu();
         return;
      }

      public function get ignoredChannels() : Array {
         return this.hyhe;
      }

      private function nyzyjiva(param1:String="") : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.rupaca=null;
            this.cybilemi=Wejilag.pawokotu(param1.toLowerCase());
            this.namacotil();
         }
         else
         {
            this.fitucuv();
         }
         return;
      }

      private function kego(param1:String="") : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.cybilemi=null;
            this.rupaca=new RegExp(Wejilag.pawokotu(param1),"gi");
            this.namacotil();
         }
         else
         {
            this.fitucuv();
         }
         return;
      }

      private function namacotil() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         console.clear(Console.zunowerim);
         console.logs.addChannel(Console.zunowerim);
         this.setViewingChannels(Console.zunowerim);
         return;
      }

      private function fitucuv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rupaca=null;
         this.cybilemi=null;
         if(this.vis.length==1&&this.vis[0]==Console.zunowerim)
         {
            this.setViewingChannels(Console.wacyvefo);
         }
         return;
      }

      private function zarupyby(param1:Ras, param2:Boolean) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = "<p>";
         if(param2)
         {
            _loc3_=_loc3_+param1.koh;
         }
         if(config.showLineNumber)
         {
            _loc3_=_loc3_+param1.fagidic;
         }
         if(config.showTimestamp)
         {
            _loc3_=_loc3_+param1.dadufodap;
         }
         var _loc4_:String = "p"+param1.priority;
         return _loc3_+"<"+_loc4_+">"+this.guvasycit(param1.text)+"</"+_loc4_+"></p>";
      }

      private function guvasycit(param1:String) : String {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:Object = null;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:* = 0;
         if(this.rupaca)
         {
            this.rupaca.lastIndex=0;
            _loc2_=this.rupaca.exec(param1);
            while(_loc2_!=null)
            {
               _loc3_=_loc2_.index;
               _loc4_=_loc2_[0];
               if(_loc4_.search("<|>")>=0)
               {
                  this.rupaca.lastIndex=this.rupaca.lastIndex-_loc4_.length-_loc4_.search("<|>");
               }
               else
               {
                  if(param1.lastIndexOf("<",_loc3_)<=param1.lastIndexOf(">",_loc3_))
                  {
                     param1=param1.substring(0,_loc3_)+"<u>"+param1.substring(_loc3_,_loc3_+_loc4_.length)+"</u>"+param1.substring(_loc3_+_loc4_.length);
                     this.rupaca.lastIndex=this.rupaca.lastIndex+7;
                  }
               }
               _loc2_=this.rupaca.exec(param1);
            }
         }
         else
         {
            if(this.cybilemi)
            {
               _loc5_=param1.toLowerCase();
               _loc6_=_loc5_.lastIndexOf(this.cybilemi);
               while(_loc6_>=0)
               {
                  param1=param1.substring(0,_loc6_)+"<u>"+param1.substring(_loc6_,_loc6_+this.cybilemi.length)+"</u>"+param1.substring(_loc6_+this.cybilemi.length);
                  _loc6_=_loc5_.lastIndexOf(this.cybilemi,_loc6_-2);
               }
            }
         }
         return param1;
      }

      private function gadyv(param1:Event=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         if((this.hecokyvy)||(this.soqabyjat))
         {
            return;
         }
         var _loc2_:* = this.vysamazo.scrollV>=this.vysamazo.maxScrollV;
         if(!console.paused&&!(this.nyto==_loc2_))
         {
            _loc3_=this.vysamazo.maxScrollV-this.vysamazo.scrollV;
            this.pik=this.vysamazo.text.length-this.vysamazo.selectionBeginIndex;
            this.pyz=this.vysamazo.text.length-this.vysamazo.selectionEndIndex;
            this.nyto=_loc2_;
            this.konarigeh();
            this.vysamazo.scrollV=this.vysamazo.maxScrollV-_loc3_;
         }
         this.qum();
         return;
      }

      private function qum() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.vysamazo.maxScrollV<=1)
         {
            this.kaf.visible=false;
         }
         else
         {
            this.kaf.visible=true;
            if(this.nyto)
            {
               this.kejyf=1;
            }
            else
            {
               this.kejyf=(this.vysamazo.scrollV-1)/(this.vysamazo.maxScrollV-1);
            }
         }
         return;
      }

      private function gygijawef(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.dawo.visible)&&this.dawo.mouseY>0||!this.dawo.visible&&this.kaf.mouseY>this.racag/2)
         {
            this.hupud=3;
         }
         else
         {
            this.hupud=-3;
         }
         this.vysamazo.scrollV=this.vysamazo.scrollV+this.hupud;
         this.qifoqy=0;
         addEventListener(Event.ENTER_FRAME,this.bijam,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.pataqugot,false,0,true);
         return;
      }

      private function bijam(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.qifoqy++;
         if(this.qifoqy>10)
         {
            this.qifoqy=9;
            if(this.hupud<0&&this.dawo.y>this.kaf.mouseY||this.hupud>0&&this.dawo.y+this.dawo.height<this.kaf.mouseY)
            {
               this.vysamazo.scrollV=this.vysamazo.scrollV+this.hupud;
            }
         }
         return;
      }

      private function pataqugot(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.bijam);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.pataqugot);
         return;
      }

      private function get kejyf() : Number {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.dawo.y-style.controlSize)/(this.racag-30-style.controlSize*2);
      }

      private function set kejyf(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dawo.y=style.controlSize+(this.racag-30-style.controlSize*2)*param1;
         return;
      }

      private function pogywi(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         this.famypysof=true;
         if(!console.paused&&(this.nyto))
         {
            this.nyto=false;
            _loc2_=this.kejyf;
            this.konarigeh();
            this.kejyf=_loc2_;
         }
         this.dawo.startDrag(false,new Rectangle(0,style.controlSize,0,this.racag-30-style.controlSize*2));
         stage.addEventListener(MouseEvent.MOUSE_MOVE,this.cyzepod,false,0,true);
         stage.addEventListener(MouseEvent.MOUSE_UP,this.feketag,false,0,true);
         param1.stopPropagation();
         return;
      }

      private function cyzepod(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hecokyvy=true;
         this.vysamazo.scrollV=Math.round(this.kejyf*(this.vysamazo.maxScrollV-1)+1);
         this.hecokyvy=false;
         return;
      }

      private function feketag(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dawo.stopDrag();
         stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.cyzepod);
         stage.removeEventListener(MouseEvent.MOUSE_UP,this.feketag);
         this.famypysof=false;
         this.gadyv();
         return;
      }

      override public function set width(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hecokyvy=true;
         super.width=param1;
         this.vysamazo.width=param1-4;
         hanapoje.width=param1-6;
         this.qaki.width=width-15-this.qaki.x;
         this.pysi.width=param1;
         this.danoh.graphics.clear();
         this.danoh.graphics.lineStyle(1,style.controlColor);
         this.danoh.graphics.moveTo(10,-1);
         this.danoh.graphics.lineTo(param1-10,-1);
         this.kaf.x=param1;
         this.nyto=true;
         this.boqadep();
         this.runivat=true;
         this.qupikosu=true;
         this.hecokyvy=false;
         return;
      }

      override public function set height(param1:Number) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.hecokyvy=true;
         var _loc2_:int = style.menuFontSize;
         var _loc3_:Number = _loc2_+6+style.traceFontSize;
         if(height!=param1)
         {
            this.keliq=param1<(this.qaki.visible?_loc3_+_loc2_+4:_loc3_);
         }
         super.height=param1;
         var _loc4_:Boolean = (this.keliq)||!style.topMenu;
         this.tagis();
         this.vysamazo.y=_loc4_?0:_loc2_;
         this.vysamazo.height=param1-(this.qaki.visible?_loc2_+4:0)-(_loc4_?0:_loc2_);
         var _loc5_:Number = param1-_loc2_+6;
         this.qaki.y=_loc5_;
         this.dihaparuc.y=_loc5_;
         this.tuqovake.y=this.qaki.y-this.tuqovake.height;
         this.pysi.y=_loc5_;
         this.danoh.y=this.qaki.visible?_loc5_:param1;
         this.kaf.y=_loc4_?6:_loc2_+4;
         var _loc6_:uint = style.controlSize;
         this.racag=this.danoh.y-(this.qaki.visible?0:_loc6_*2)-this.kaf.y;
         this.dawo.visible=this.racag>40;
         this.kaf.graphics.clear();
         if(this.racag>=10)
         {
            this.kaf.graphics.beginFill(style.controlColor,0.7);
            this.kaf.graphics.drawRect(-_loc6_,0,_loc6_,_loc6_);
            this.kaf.graphics.drawRect(-_loc6_,this.racag-_loc6_,_loc6_,_loc6_);
            this.kaf.graphics.beginFill(style.controlColor,0.25);
            this.kaf.graphics.drawRect(-_loc6_,_loc6_,_loc6_,this.racag-_loc6_*2);
            this.kaf.graphics.beginFill(0,0);
            this.kaf.graphics.drawRect(-_loc6_*2,_loc6_*2,_loc6_*2,this.racag-_loc6_*2);
            this.kaf.graphics.endFill();
         }
         this.nyto=true;
         this.qupikosu=true;
         this.hecokyvy=false;
         return;
      }

      private function tagis() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Boolean = (this.keliq)||!style.topMenu;
         this.vysamazo.y=_loc1_?0:hanapoje.y+hanapoje.height-6;
         this.vysamazo.height=Math.max(0,height-(this.qaki.visible?style.menuFontSize+4:0)-this.vysamazo.y);
         return;
      }

      public function updateMenu(param1:Boolean=false) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.sogututok();
         }
         else
         {
            this.runivat=true;
         }
         return;
      }

      private function sogututok() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = false;
         var _loc3_:String = null;
         var _loc1_:* = "<r><high>";
         if((this.keliq)||!style.topMenu)
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
            for (_loc3_ in this.faqap)
            {
               _loc1_=_loc1_+("<a href=\"event:external_"+_loc3_+"\">"+_loc3_+"</a> ");
               _loc2_=true;
            }
            if(_loc2_)
            {
               _loc1_=_loc1_+"¦ ";
            }
            _loc1_=_loc1_+this.mymijigih("<a href=\"event:fps\">F</a>",console.fpsMonitor>0);
            _loc1_=_loc1_+this.mymijigih(" <a href=\"event:mm\">M</a>",console.memoryMonitor>0);
            _loc1_=_loc1_+this.mymijigih(" <a href=\"event:command\">CL</a>",this.commandLine);
            if(console.remoter.remoting!=Kelasydo.pabyry)
            {
               if(config.displayRollerEnabled)
               {
                  _loc1_=_loc1_+this.mymijigih(" <a href=\"event:roller\">Ro</a>",console.displayRoller);
               }
               if(config.rulerToolEnabled)
               {
                  _loc1_=_loc1_+this.mymijigih(" <a href=\"event:ruler\">RL</a>",console.panels.rulerActive);
               }
            }
            _loc1_=_loc1_+" ¦</b>";
            _loc1_=_loc1_+" <a href=\"event:copy\">Sv</a>";
            _loc1_=_loc1_+(" <a href=\"event:priority\">P"+this.bakakuhoc+"</a>");
            _loc1_=_loc1_+this.mymijigih(" <a href=\"event:pause\">P</a>",console.paused);
            _loc1_=_loc1_+" <a href=\"event:clear\">C</a> <a href=\"event:close\">X</a> <a href=\"event:hide\">›</a>";
         }
         _loc1_=_loc1_+" </b></menu></high></r>";
         hanapoje.htmlText=_loc1_;
         hanapoje.scrollH=hanapoje.maxScrollH;
         this.tagis();
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
         var _loc5_:Boolean = this.vis.length>0||this.hyhe.length>0;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=_loc3_[_loc6_];
            _loc8_=!_loc5_&&_loc6_==0||(_loc5_)&&!(_loc6_==0)&&(this.dyku(_loc7_))?"<ch><b>"+_loc7_+"</b></ch>":_loc7_;
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

      private function mymijigih(param1:String, param2:Boolean) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param2)
         {
            return "<menuHi>"+param1+"</menuHi>";
         }
         return param1;
      }

      public function onMenuRollOver(param1:TextEvent, param2:Nil=null) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         if(param2==null)
         {
            param2=this;
         }
         var _loc3_:String = param1.text?param1.text.replace("event:",""):"";
         if(_loc3_=="channel_"+Console.wacyvefo)
         {
            _loc3_="View all channels";
         }
         else
         {
            if(_loc3_=="channel_"+Console.tuju)
            {
               _loc3_="Default channel::Logs with no channel";
            }
            else
            {
               if(_loc3_=="channel_"+Console.gicidip)
               {
                  _loc3_="Console\'s channel::Logs generated from Console";
               }
               else
               {
                  if(_loc3_=="channel_"+Console.zunowerim)
                  {
                     _loc3_=this.rupaca?String(this.rupaca):this.cybilemi;
                     _loc3_="Filtering channel"+"::*"+_loc3_+"fozamypyj";
                  }
                  else
                  {
                     if(_loc3_=="channel_"+Wejilag.hafiwo)
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
                                    _loc4_=this.faqap[_loc3_.substring(9)];
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

      private function dylivep(param1:TextEvent) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var str:String = null;
         var file:FileReference = null;
         var ind:int = 0;
         var menu:Array = null;
         var e:TextEvent = param1;
         hanapoje.setSelection(0,0);
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
               this.keliq=true;
               console.config.style.topMenu=false;
               this.height=height;
               this.updateMenu();
            }
            else
            {
               if(t=="show")
               {
                  console.panels.tooltip();
                  this.keliq=false;
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
                              this.wydycehic(this.soqabyjat);
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
                                             str=console.logs.getLogsAsString("\r\n",!this.soqabyjat,this.migabejo?this.kilyvih:null);
                                             if(this.jyp)
                                             {
                                                file=new FileReference();
                                                try
                                                {
                                                   file["save"](str,"log.txt");
                                                }
                                                catch(err:Error)
                                                {
                                                   if(!(_loc5_&&(param1)))
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
                                                      console.remoter.remoting=Kelasydo.pabyry;
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
                                                                  this.qaki.text=t.substring(ind+1);
                                                               }
                                                            }
                                                            else
                                                            {
                                                               if(t.indexOf("external_")==0)
                                                               {
                                                                  menu=this.faqap[t.substring(9)];
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
         hanapoje.setSelection(0,0);
         e.stopPropagation();
         return;
      }

      public function onChannelPressed(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = null;
         if((this.migabejo)&&!(param1==Console.wacyvefo))
         {
            _loc2_=this.kenaq(this.hyhe,param1);
            this.cubofojiv.apply(this,_loc2_);
         }
         else
         {
            if((this.soqabyjat)&&!(param1==Console.wacyvefo)&&!(this.vis[0]==Wejilag.hafiwo))
            {
               _loc2_=this.kenaq(this.vis,param1);
               this.setViewingChannels.apply(this,_loc2_);
            }
            else
            {
               console.setViewingChannels(param1);
            }
         }
         return;
      }

      private function kenaq(param1:Array, param2:String) : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var param1:Array = param1.concat();
         var _loc3_:int = param1.indexOf(param2);
         if(_loc3_>=0)
         {
            param1.splice(_loc3_,1);
            if(param1.length==0)
            {
               param1.push(Console.wacyvefo);
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
         this.bakakuhoc=param1;
         console.so[waquw]=this.bakakuhoc;
         this.zim();
         this.updateMenu();
         return;
      }

      public function get priority() : uint {
         return this.bakakuhoc;
      }

      private function wydycehic(param1:Boolean) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:uint = 0;
         var _loc2_:uint = 10;
         var _loc4_:Ras = console.logs.last;
         var _loc5_:int = this.bakakuhoc;
         this.bakakuhoc=0;
         var _loc6_:uint = 32000;
         while((_loc4_)&&_loc6_>0)
         {
            _loc6_--;
            if(this.kilyvih(_loc4_))
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
            _loc4_=_loc4_.syluget;
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

      private function cym(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.guqepyfy=-1;
         console.updateSO();
         this.bahak=new Array();
         return;
      }

      private function pobyvo(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Keyboard.TAB)
         {
            if(this.junaru)
            {
               this.qaki.text=this.junaru;
               this.kyticuq();
               this.piwypi();
            }
         }
         return;
      }

      private function tipuqoha(param1:KeyboardEvent) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = null;
         var _loc3_:* = 0;
         if(param1.keyCode==Keyboard.ENTER)
         {
            this.zim();
            this.piwypi();
            if(this.bepe)
            {
               console.remoter.login(this.qaki.text);
               this.qaki.text="";
               this.requestLogin(false);
            }
            else
            {
               _loc2_=this.qaki.text;
               if(_loc2_.length>2)
               {
                  _loc3_=this.bahak.indexOf(_loc2_);
                  while(_loc3_>=0)
                  {
                     this.bahak.splice(_loc3_,1);
                     _loc3_=this.bahak.indexOf(_loc2_);
                  }
                  this.bahak.unshift(_loc2_);
                  this.guqepyfy=-1;
                  if(this.bahak.length>20)
                  {
                     this.bahak.splice(20);
                  }
                  console.updateSO(sapyjes);
               }
               this.qaki.text="";
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
                  this.piwypi();
                  if((this.qaki.text)&&this.guqepyfy<0)
                  {
                     this.bahak.unshift(this.qaki.text);
                     this.guqepyfy++;
                  }
                  if(this.guqepyfy<this.bahak.length-1)
                  {
                     this.guqepyfy++;
                     this.qaki.text=this.bahak[this.guqepyfy];
                     this.kyticuq();
                  }
                  else
                  {
                     this.guqepyfy=this.bahak.length;
                     this.qaki.text="";
                  }
               }
               else
               {
                  if(param1.keyCode==Keyboard.DOWN)
                  {
                     this.piwypi();
                     if(this.guqepyfy>0)
                     {
                        this.guqepyfy--;
                        this.qaki.text=this.bahak[this.guqepyfy];
                        this.kyticuq();
                     }
                     else
                     {
                        this.guqepyfy=-1;
                        this.qaki.text="";
                     }
                  }
                  else
                  {
                     if(param1.keyCode==Keyboard.TAB)
                     {
                        this.kyticuq();
                     }
                     else
                     {
                        if(!this.bepe)
                        {
                           this.bob();
                        }
                     }
                  }
               }
            }
         }
         return;
      }

      private function kyticuq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qaki.setSelection(this.qaki.text.length,this.qaki.text.length);
         return;
      }

      private function bob(param1:Event=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:String = this.qaki.text;
         if((_loc2_)&&(config.commandLineAutoCompleteEnabled)&&!(console.remoter.remoting==Kelasydo.pabyry))
         {
            try
            {
               this.piwypi(console.cl.getHintsFor(_loc2_,5));
               return;
            }
            catch(err:Error)
            {
            }
         }
         this.piwypi();
         return;
      }

      private function poporaga(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwypi();
         return;
      }

      private function piwypi(param1:Array=null) : void {
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
            this.junaru=param1[0][0];
            if(param1.length>1)
            {
               _loc5_=param1[1][0];
               _loc6_=false;
               _loc7_=0;
               while(_loc7_<_loc5_.length)
               {
                  if(_loc5_.charAt(_loc7_)==this.junaru.charAt(_loc7_))
                  {
                     _loc6_=true;
                     _loc7_++;
                     continue;
                  }
                  if((_loc6_)&&this.qaki.text.length<_loc7_)
                  {
                     this.junaru=this.junaru.substring(0,_loc7_);
                  }
               }
            }
            _loc2_=new Array();
            for each (_loc3_ in param1)
            {
               _loc2_.push("<p3>"+_loc3_[0]+"</p3> <p0>"+(_loc3_[1]?_loc3_[1]:"")+"</p0>");
            }
            this.tuqovake.htmlText="<p>"+_loc2_.reverse().join("\n")+"</p>";
            this.tuqovake.visible=true;
            _loc4_=this.qaki.getCharBoundaries(this.qaki.text.length-1);
            if(!_loc4_)
            {
               _loc4_=new Rectangle();
            }
            this.tuqovake.x=this.qaki.x+_loc4_.x+_loc4_.width+30;
            this.tuqovake.y=height-this.tuqovake.height;
         }
         else
         {
            this.tuqovake.visible=false;
            this.junaru=null;
         }
         return;
      }

      public function los(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.bepe)
         {
            this.bepe=false;
            this.requestLogin(false);
         }
         this.dihaparuc.autoSize=TextFieldAutoSize.LEFT;
         this.dihaparuc.text=param1;
         this.boqadep();
         return;
      }

      private function boqadep() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Number = width-48;
         if(this.dihaparuc.width>120||this.dihaparuc.width>_loc1_)
         {
            this.dihaparuc.autoSize=TextFieldAutoSize.NONE;
            this.dihaparuc.width=_loc1_>120?120:_loc1_;
            this.dihaparuc.scrollH=this.dihaparuc.maxScrollH;
         }
         this.qaki.x=this.dihaparuc.width+2;
         this.qaki.width=width-15-this.qaki.x;
         this.tuqovake.x=this.qaki.x;
         return;
      }

      public function set commandLine(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.qaki.visible=true;
            this.dihaparuc.visible=true;
            this.pysi.visible=true;
         }
         else
         {
            this.qaki.visible=false;
            this.dihaparuc.visible=false;
            this.pysi.visible=false;
         }
         this.runivat=true;
         this.height=height;
         return;
      }

      public function get commandLine() : Boolean {
         return this.qaki.visible;
      }
   }
[/CLASS]
}