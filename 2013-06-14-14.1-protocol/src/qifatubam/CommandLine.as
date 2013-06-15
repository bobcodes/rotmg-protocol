package qifatubam
{
   import rikewu.Jatu;
   import rikewu.Zacola;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import flash.utils.getQualifiedClassName;
   import flash.display.DisplayObjectContainer;
   import zipirytab.Console;


   public class CommandLine extends Viq
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function CommandLine(param1:Console) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var m:Console = param1;
         this.comup=new Array("filter","filterexp");
         super(m);
         this.voser=new Jatu();
         this.bonuveti=m;
         this.gujehekaj=new Object();
         this.vaj=new Zacola(m);
         this.voser.Lunahymo("C",m);
         remoter.registerCallback("cmd",new function(param1:ByteArray):void
         {
            [/METHOD][METHOD13481][OFS8]run[/OFS][OFS8]([/OFS][OFS3]param1[/OFS].[OFS4]readUTF[/OFS][OFS4]([/OFS][OFS4])[/OFS][OFS8])[/OFS];
            [OFS12]return[/OFS];[/METHOD][METHOD13483]
            });
            remoter.registerCallback("scope",new function(param1:ByteArray):void
            {
               [/METHOD][OFS8]handleScopeEvent[/OFS][OFS8]([/OFS][OFS3]param1[/OFS].[OFS4]readUnsignedInt[/OFS][OFS4]([/OFS][OFS4])[/OFS][OFS8])[/OFS];
               [OFS12]return[/OFS];
               });
               remoter.registerCallback("cls",this.wisa);
               remoter.addEventListener(Event.CONNECT,this.mapubutop);
               this.addCLCmd("help",this.hef,"How to use command line");
               this.addCLCmd("save|store",this.suwasec,"Save current scope as weak reference. (same as Cc.store(...))");
               this.addCLCmd("savestrong|storestrong",this.qoqyc,"Save current scope as strong reference");
               this.addCLCmd("saved|stored",this.lesov,"Show a list of all saved references");
               this.addCLCmd("string",this.sevywadiv,"Create String, useful to paste complex strings without worrying about \" or \'",false,null);
               this.addCLCmd("commands",this.jamyv,"Show a list of all slash commands",true);
               this.addCLCmd("inspect",this.jibove,"Inspect current scope");
               this.addCLCmd("explode",this.rora,"Explode current scope to its properties and values (similar to JSON)");
               this.addCLCmd("map",this.zuna,"Get display list map starting from current scope");
               this.addCLCmd("function",this.kali,"Create function. param is the commandline string to create as function. (experimental)");
               this.addCLCmd("autoscope",this.jogeje,"Toggle autoscoping.");
               this.addCLCmd("base",this.jyfo,"Return to base scope");
               this.addCLCmd("/",this.baqufily,"Return to previous scope");
               return;
      }

      private static const music:String = "<b>Advanced CommandLine is disabled.</b>\nEnable by setting `Cc.config.commandLineAllowed = true;´\nType <b>/commands</b> for permitted commands.";

      private static const mikyc:Array = [Executer.ceqikabe,"base","C"];

      private var voser:Jatu;

      private var bonuveti;

      private var vaj:Zacola;

      private var zigific:String = "";

      private var gujehekaj:Object;

      public var comup:Array;

      public function set base(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.base)
         {
            report("Set new commandLine base from "+this.base+" to "+param1,10);
         }
         else
         {
            this.vaj.hed=this.bonuveti;
            this.bonuveti=param1;
            this.zigific=Babydel.lybi(param1,false);
         }
         this.voser.Lunahymo("base",param1);
         return;
      }

      public function get base() : Object {
         return this.voser.vivuqes("base");
      }

      public function wisa(param1:ByteArray) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zigific=param1.readUTF();
         return;
      }

      public function handleScopeEvent(param1:uint) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:ByteArray = null;
         var _loc3_:* = undefined;
         if(remoter.remoting==Segar.bufiti)
         {
            _loc2_=new ByteArray();
            _loc2_.writeUnsignedInt(param1);
            remoter.send("scope",_loc2_);
         }
         else
         {
            _loc3_=console.refs.getRefById(param1);
            if(_loc3_)
            {
               console.cl.setReturned(_loc3_,true,false);
            }
            else
            {
               console.report("Reference no longer exist.",-2);
            }
         }
         return;
      }

      public function gulotyfu(param1:String, param2:Object, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!param1)
         {
            report("ERROR: Give a name to save.",10);
            return;
         }
         if(param2 is Function)
         {
            param3=true;
         }
         var param1:String = param1.replace(new RegExp("[^\\w]*","g"),"");
         if(mikyc.indexOf(param1)>=0)
         {
            report("ERROR: The name ["+param1+"] is reserved",10);
            return;
         }
         this.voser.Lunahymo(param1,param2,param3);
         return;
      }

      public function getHintsFor(param1:String, param2:uint) : Array {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var X:String = null;
         var canadate:Array = null;
         var cmd:Object = null;
         var Y:String = null;
         var str:String = param1;
         var max:uint = param2;
         var all:Array = new Array();
         for (X in this.gujehekaj)
         {
            cmd=this.gujehekaj[X];
            if((config.commandLineAllowed)||(cmd.allow))
            {
               all.push(["/"+X+" ",cmd.d?cmd.d:null]);
            }
         }
         if(config.commandLineAllowed)
         {
            for (Y in this.voser)
            {
               all.push(["$"+Y,Babydel.lybi(this.voser.vivuqes(Y))]);
            }
            if(this.bonuveti)
            {
               all.push(["this",Babydel.lybi(this.bonuveti)]);
               all=all.concat(console.refs.getPossibleCalls(this.bonuveti));
            }
         }
         str=str.toLowerCase();
         var hints:Array = new Array();
         for each (canadate in all)
         {
            if(canadate[0].toLowerCase().indexOf(str)==0)
            {
               hints.push(canadate);
            }
         }
         hints=hints.sort(new function(param1:Array, param2:Array):int
         {
            if(param1[0].length<param2[0].length)
            {
                  return -1;
            }
            if(param1[0].length>param2[0].length)
            {
                  return 1;
            }
            return 0;
            });
            if(max>0&&hints.length>max)
            {
               hints.splice(max);
               hints.push(["..."]);
            }
            return hints;
      }

      public function get scopeString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return config.commandLineAllowed?this.zigific:"";
      }

      public function addCLCmd(param1:String, param2:Function, param3:String, param4:Boolean=false, param5:String=";") : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:Array = param1.split("|");
         var _loc7_:* = 0;
         while(_loc7_<_loc6_.length)
         {
            param1=_loc6_[_loc7_];
            this.gujehekaj[param1]=new SlashCommand(param1,param2,param3,false,param4,param5);
            _loc7_++;
         }
         return;
      }

      public function qim(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:SlashCommand = null;
         var param1:String = param1.replace(new RegExp("[^\\w]*","g"),"");
         if(this.gujehekaj[param1]!=null)
         {
            _loc6_=this.gujehekaj[param1];
            if(!_loc6_.user)
            {
               throw new Error("Can not alter build-in slash command ["+param1+"]");
            }
         }
         if(param2==null)
         {
            GlobalNotificationActionte this.gujehekaj[[param1]];
         }
         else
         {
            this.gujehekaj[param1]=new SlashCommand(param1,param2,Babydel.jopawulu(param3),true,param4,param5);
         }
         return;
      }

      public function run(param1:String, param2:Object=null) : * {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var bytes:ByteArray = null;
         var exe:Executer = null;
         var X:String = null;
         var str:String = param1;
         var saves:Object = param2;
         if(!str)
         {
            return;
         }
         str=str.replace(new RegExp("\\s*"),"");
         if(remoter.remoting==Segar.bufiti)
         {
            if(str.charAt(0)=="~")
            {
               str=str.substring(1);
            }
            else
            {
               if(str.search(new RegExp("/"+this.comup.join("|/")))!=0)
               {
                  report("Run command at remote: "+str,-2);
                  bytes=new ByteArray();
                  bytes.writeUTF(str);
                  if(!console.remoter.send("cmd",bytes))
                  {
                     report("Command could not be sent to client.",10);
                  }
                  return null;
               }
            }
         }
         report("&gt; "+str,4,false);
         var v:* = null;
         try
         {
            if(str.charAt(0)=="/")
            {
               this.dopuhazor(str.substring(1));
            }
            else
            {
               if(!config.commandLineAllowed)
               {
                  report(music,9);
                  return null;
               }
               exe=new Executer();
               exe.addEventListener(Event.COMPLETE,this.lecec,false,0,true);
               if(saves)
               {
                  for (X in this.voser)
                  {
                     if(!saves[X])
                     {
                        saves[X]=this.voser[X];
                     }
                  }
               }
               else
               {
                  saves=this.voser;
               }
               exe.tete(saves);
               exe.jejusered(mikyc);
               exe.jyramavy=config.commandLineAutoScope;
               v=exe.exec(this.bonuveti,str);
            }
         }
         catch(e:Error)
         {
            reportError(e);
         }
         return v;
      }

      private function lecec(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Executer = param1.currentTarget as Executer;
         if(this.bonuveti==_loc2_.scope)
         {
            this.setReturned(_loc2_.returned);
         }
         else
         {
            if(_loc2_.scope==_loc2_.returned)
            {
               this.setReturned(_loc2_.scope,true);
            }
            else
            {
               this.setReturned(_loc2_.returned);
               this.setReturned(_loc2_.scope,true);
            }
         }
         return;
      }

      private function dopuhazor(param1:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var slashcmd:SlashCommand = null;
         var restStr:String = null;
         var endInd:int = 0;
         var str:String = param1;
         var brk:int = str.search(new RegExp("[^\\w]"));
         var cmd:String = str.substring(0,brk>0?brk:str.length);
         if(cmd=="")
         {
            this.setReturned(this.voser.vivuqes(Executer.ceqikabe),true);
            return;
         }
         var param:String = brk>0?str.substring(brk+1):"";
         if(this.gujehekaj[cmd]!=null)
         {
            slashcmd=this.gujehekaj[cmd];
            if(!config.commandLineAllowed&&!slashcmd.allow)
            {
               report(music,9);
               return;
            }
            if(slashcmd.endMarker)
            {
               endInd=param.indexOf(slashcmd.endMarker);
               if(endInd>=0)
               {
                  restStr=param.substring(endInd+slashcmd.endMarker.length);
                  param=param.substring(0,endInd);
               }
            }
            if(param.length==0)
            {
               slashcmd.f();
            }
            else
            {
               slashcmd.f(param);
            }
            if(restStr)
            {
               this.run(restStr);
            }
         }
         else
         {
            report("Undefined command <b>/commands</b> for list of all commands.",10);
         }
         return;
      }

      public function setReturned(param1:*, param2:Boolean=false, param3:Boolean=true) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!config.commandLineAllowed)
         {
            report(music,9);
            return;
         }
         if(param1!==undefined)
         {
            this.voser.Lunahymo(Executer.ceqikabe,param1,true);
            if((param2)&&!(param1===this.bonuveti))
            {
               this.vaj.hed=this.bonuveti;
               this.bonuveti=param1;
               if(remoter.remoting!=Segar.bufiti)
               {
                  this.zigific=Babydel.lybi(this.bonuveti,false);
                  this.mapubutop();
               }
               report("Changed to "+console.refs.makeRefTyped(param1),-1);
            }
            else
            {
               if(param3)
               {
                  report("Returned "+console.refs.makeString(param1),-1);
               }
            }
         }
         else
         {
            if(param3)
            {
               report("Exec successful, undefined return.",-1);
            }
         }
         return;
      }

      public function mapubutop(param1:Event=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTF(this.zigific);
         console.remoter.send("cls",_loc2_);
         return;
      }

      private function reportError(param1:Error) : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc10_:String = null;
         var _loc2_:String = console.refs.makeString(param1);
         var _loc3_:Array = _loc2_.split(new RegExp("\\n\\s*"));
         var _loc4_:* = 10;
         var _loc5_:* = 0;
         var _loc6_:int = _loc3_.length;
         var _loc7_:Array = [];
         var _loc8_:RegExp = new RegExp("\\s*at\\s+("+Executer.hihigy+"|"+getQualifiedClassName(this)+")");
         var _loc9_:* = 0;
         while(_loc9_<_loc6_)
         {
            _loc10_=_loc3_[_loc9_];
            if(_loc10_.search(_loc8_)==0)
            {
               _loc5_++;
            }
            _loc7_.push("<p"+_loc4_+"> "+_loc10_+"</p"+_loc4_+">");
            _loc4_--;
            _loc9_++;
         }
         report(_loc7_.join("\n"),9);
         return;
      }

      private function suwasec(param1:String=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gulotyfu(param1,this.bonuveti,false);
         return;
      }

      private function qoqyc(param1:String=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gulotyfu(param1,this.bonuveti,true);
         return;
      }

      private function lesov(... rest) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:String = null;
         var _loc5_:Zacola = null;
         report("Saved vars: ",-1);
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         for (_loc4_ in this.voser)
         {
            _loc5_=this.voser.telibivyw(_loc4_);
            _loc2_++;
            if(_loc5_.hed==null)
            {
               _loc3_++;
            }
            report((_loc5_.strong?"strong":"weak")+" <b>$"+_loc4_+"</b> = "+console.refs.makeString(_loc5_.hed),-2);
         }
         report("Found "+_loc2_+" item(s), "+_loc3_+" empty.",-1);
         return;
      }

      private function sevywadiv(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         report("String with "+param1.length+" chars entered. Use /save <i>(name)</i> to save.",-2);
         this.setReturned(param1,true);
         return;
      }

      private function jamyv(... rest) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:SlashCommand = null;
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         for each (_loc4_ in this.gujehekaj)
         {
            if((config.commandLineAllowed)||(_loc4_.allow))
            {
               if(_loc4_.user)
               {
                  _loc3_.push(_loc4_);
               }
               else
               {
                  _loc2_.push(_loc4_);
               }
            }
         }
         _loc2_=_loc2_.sortOn("n");
         report("Built-in commands:"+(!config.commandLineAllowed?" (limited permission)":""),4);
         for each (_loc4_ in _loc2_)
         {
            report("<b>/"+_loc4_.n+"</b> <p-1>"+_loc4_.d+"</p-1>",-2);
         }
         if(_loc3_.length)
         {
            _loc3_=_loc3_.sortOn("n");
            report("User commands:",4);
            for each (_loc4_ in _loc3_)
            {
               report("<b>/"+_loc4_.n+"</b> <p-1>"+_loc4_.d+"</p-1>",-2);
            }
         }
         return;
      }

      private function jibove(... rest) : void {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         [OFS6]console[/OFS].[OFS9]refs[/OFS].[OFS16]focus[/OFS][OFS16]([/OFS]this.[OFS13]bonuveti[/OFS][OFS16])[/OFS];
         [OFS20]return[/OFS];
      }

      private function rora(param1:String="0") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = int(param1);
         console.explodech(console.panels.mainPanel.reportChannel,this.bonuveti,_loc2_<=0?3:_loc2_);
         return;
      }

      private function zuna(param1:String="0") : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         console.mapch(console.panels.mainPanel.reportChannel,this.bonuveti as DisplayObjectContainer,int(param1));
         return;
      }

      private function kali(param1:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:FakeFunction = new FakeFunction(this.run,param1);
         report("Function created. Use /savestrong <i>(name)</i> to save.",-2);
         this.setReturned(_loc2_.exec,true);
         return;
      }

      private function jogeje(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         config.commandLineAutoScope=!config.commandLineAutoScope;
         report("Auto-scoping <b>"+(config.commandLineAutoScope?"enabled":"disabled")+"</b>.",10);
         return;
      }

      private function jyfo(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setReturned(this.base,true);
         return;
      }

      private function baqufily(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setReturned(this.vaj.hed,true);
         return;
      }

      private function hef(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         report("____Command Line Help___",10);
         report("/filter (text) = filter/search logs for matching text",5);
         report("/commands to see all slash commands",5);
         report("Press up/down arrow keys to recall previous line",2);
         report("__Examples:",10);
         report("<b>stage.stageWidth</b>",5);
         report("<b>stage.scaleMode = flash.display.StageScaleMode.NO_SCALE</b>",5);
         report("<b>stage.frameRate = 12</b>",5);
         report("__________",10);
         return;
      }
   }

}

   class FakeFunction extends Object
   {
      function FakeFunction(param1:Function, param2:String) {
         super();
         this.run=param1;
         this.line=param2;
         return;
      }

      private var line:String;

      private var run:Function;

      public function exec(... rest) : * {
         return this.run(this.line,rest);
      }
   }


   class SlashCommand extends Object
   {
      function SlashCommand(param1:String, param2:Function, param3:String, param4:Boolean, param5:Boolean, param6:String) {
         super();
         this.n=param1;
         this.f=param2;
         this.d=param3?param3:"";
         this.user=param4;
         this.allow=param5;
         this.endMarker=param6;
         return;
      }

      public var n:String;

      public var f:Function;

      public var d:String;

      public var user:Boolean;

      public var allow:Boolean;

      public var endMarker:String;
   }
