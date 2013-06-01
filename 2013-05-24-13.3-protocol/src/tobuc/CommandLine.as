package tobuc
{
   import vajurym.Myhosiwas;
   import vajurym.Muhitu;
   import flash.utils.ByteArray;
   import flash.events.Event;
   import flash.utils.getQualifiedClassName;
   import flash.display.DisplayObjectContainer;
   import lutyfopo.Console;


   public class CommandLine extends Zuby
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function CommandLine(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var m:Console = param1;
         this.petivo=new Array("filter","filterexp");
         super(m);
         this.tig=new Myhosiwas();
         this.syt=m;
         this.liri=new Object();
         this.fat=new Muhitu(m);
         this.tig.vupative("C",m);
         remoter.registerCallback("cmd",new function(param1:ByteArray):void
         {
            run(param1.readUTF());
            return;
            });
            remoter.registerCallback("scope",new function(param1:ByteArray):void
            {
               handleScopeEvent(param1.readUnsignedInt());
               return;
               });
               remoter.registerCallback("cls",this.hira);
               remoter.addEventListener(Event.CONNECT,this.zapakuly);
               this.addCLCmd("help",this.tulenudok,"How to use command line");
               this.addCLCmd("save|store",this.nopym,"Save current scope as weak reference. (same as Cc.store(...))");
               this.addCLCmd("savestrong|storestrong",this.tikefer,"Save current scope as strong reference");
               this.addCLCmd("saved|stored",this.gibuj,"Show a list of all saved references");
               this.addCLCmd("string",this.pozyjoz,"Create String, useful to paste complex strings without worrying about \" or \'",false,null);
               this.addCLCmd("commands",this.sofa,"Show a list of all slash commands",true);
               this.addCLCmd("inspect",this.kiqot,"Inspect current scope");
               this.addCLCmd("explode",this.coj,"Explode current scope to its properties and values (similar to JSON)");
               this.addCLCmd("map",this.cyjiqi,"Get display list map starting from current scope");
               this.addCLCmd("jezofykaj",this.kitinary,"Create function. param is the commandline string to create as function. (experimental)");
               this.addCLCmd("autoscope",this.bejofa,"Toggle autoscoping.");
               this.addCLCmd("base",this.cygahubyz,"Return to base scope");
               this.addCLCmd("/",this.kovowojy,"Return to previous scope");
               return;
      }

      private static const tylane:String = "<b>Advanced CommandLine is disabled.</b>\nEnable by setting `Cc.config.commandLineAllowed = true;´\nType <b>/commands</b> for permitted commands.";

      private static const batazahu:Array = [Executer.pulyhitat,"base","C"];

      private var tig:Myhosiwas;

      private var syt;

      private var fat:Muhitu;

      private var ruhewa:String = "";

      private var liri:Object;

      public var petivo:Array;

      public function set base(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.base)
         {
            report("Set new commandLine base from "+this.base+" to "+param1,10);
         }
         else
         {
            this.fat.firycynus=this.syt;
            this.syt=param1;
            this.ruhewa=Bamyhugep.cyqevu(param1,false);
         }
         this.tig.vupative("base",param1);
         return;
      }

      public function get base() : Object {
         return this.tig.Hulocucum("base");
      }

      public function hira(param1:ByteArray) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ruhewa=param1.readUTF();
         return;
      }

      public function handleScopeEvent(param1:uint) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:ByteArray = null;
         var _loc3_:* = undefined;
         if(remoter.remoting==Wywysok.mysewe)
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

      public function hatizy(param1:String, param2:Object, param3:Boolean=false) : void {
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
         if(batazahu.indexOf(param1)>=0)
         {
            report("ERROR: The name ["+param1+"] is reserved",10);
            return;
         }
         this.tig.vupative(param1,param2,param3);
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
         for (X in this.liri)
         {
            cmd=this.liri[X];
            if((config.commandLineAllowed)||(cmd.allow))
            {
               all.push(["/"+X+" ",cmd.d?cmd.d:null]);
            }
         }
         if(config.commandLineAllowed)
         {
            for (Y in this.tig)
            {
               all.push(["$"+Y,Bamyhugep.cyqevu(this.tig.Hulocucum(Y))]);
            }
            if(this.syt)
            {
               all.push(["this",Bamyhugep.cyqevu(this.syt)]);
               all=all.concat(console.refs.getPossibleCalls(this.syt));
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
         return config.commandLineAllowed?this.ruhewa:"";
      }

      public function addCLCmd(param1:String, param2:Function, param3:String, param4:Boolean=false, param5:String=";") : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:Array = param1.split("|");
         var _loc7_:* = 0;
         while(_loc7_<_loc6_.length)
         {
            param1=_loc6_[_loc7_];
            this.liri[param1]=new SlashCommand(param1,param2,param3,false,param4,param5);
            _loc7_++;
         }
         return;
      }

      public function wub(param1:String, param2:Function, param3:String="", param4:Boolean=true, param5:String=";") : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:SlashCommand = null;
         var param1:String = param1.replace(new RegExp("[^\\w]*","g"),"");
         if(this.liri[param1]!=null)
         {
            _loc6_=this.liri[param1];
            if(!_loc6_.user)
            {
               throw new Error("Can not alter build-in slash command ["+param1+"]");
            }
         }
         if(param2==null)
         {
            delete this.liri[[param1]];
         }
         else
         {
            this.liri[param1]=new SlashCommand(param1,param2,Bamyhugep.vyjyb(param3),true,param4,param5);
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
         if(remoter.remoting==Wywysok.mysewe)
         {
            if(str.charAt(0)=="~")
            {
               str=str.substring(1);
            }
            else
            {
               if(str.search(new RegExp("/"+this.petivo.join("|/")))!=0)
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
               this.nekalu(str.substring(1));
            }
            else
            {
               if(!config.commandLineAllowed)
               {
                  report(tylane,9);
                  return null;
               }
               exe=new Executer();
               exe.addEventListener(Event.COMPLETE,this.gyduwapib,false,0,true);
               if(saves)
               {
                  for (X in this.tig)
                  {
                     if(!saves[X])
                     {
                        saves[X]=this.tig[X];
                     }
                  }
               }
               else
               {
                  saves=this.tig;
               }
               exe.dimyho(saves);
               exe.syl(batazahu);
               exe.fozopu=config.commandLineAutoScope;
               v=exe.exec(this.syt,str);
            }
         }
         catch(e:Error)
         {
            reportError(e);
         }
         return v;
      }

      private function gyduwapib(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Executer = param1.currentTarget as Executer;
         if(this.syt==_loc2_.scope)
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

      private function nekalu(param1:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var slashcmd:SlashCommand = null;
         var restStr:String = null;
         var endInd:int = 0;
         var str:String = param1;
         var brk:int = str.search(new RegExp("[^\\w]"));
         var cmd:String = str.substring(0,brk>0?brk:str.length);
         if(cmd=="")
         {
            this.setReturned(this.tig.Hulocucum(Executer.pulyhitat),true);
            return;
         }
         var param:String = brk>0?str.substring(brk+1):"";
         if(this.liri[cmd]!=null)
         {
            slashcmd=this.liri[cmd];
            if(!config.commandLineAllowed&&!slashcmd.allow)
            {
               report(tylane,9);
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
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!config.commandLineAllowed)
         {
            report(tylane,9);
            return;
         }
         if(param1!==undefined)
         {
            this.tig.vupative(Executer.pulyhitat,param1,true);
            if((param2)&&!(param1===this.syt))
            {
               this.fat.firycynus=this.syt;
               this.syt=param1;
               if(remoter.remoting!=Wywysok.mysewe)
               {
                  this.ruhewa=Bamyhugep.cyqevu(this.syt,false);
                  this.zapakuly();
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

      public function zapakuly(param1:Event=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTF(this.ruhewa);
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
         var _loc8_:RegExp = new RegExp("\\s*at\\s+("+Executer.gyqisa+"|"+getQualifiedClassName(this)+")");
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

      private function nopym(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hatizy(param1,this.syt,false);
         return;
      }

      private function tikefer(param1:String=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hatizy(param1,this.syt,true);
         return;
      }

      private function gibuj(... rest) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:String = null;
         var _loc5_:Muhitu = null;
         report("Saved vars: ",-1);
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         for (_loc4_ in this.tig)
         {
            _loc5_=this.tig.muju(_loc4_);
            _loc2_++;
            if(_loc5_.firycynus==null)
            {
               _loc3_++;
            }
            report((_loc5_.strong?"strong":"weak")+" <b>$"+_loc4_+"</b> = "+console.refs.makeString(_loc5_.firycynus),-2);
         }
         report("Found "+_loc2_+" item(s), "+_loc3_+" empty.",-1);
         return;
      }

      private function pozyjoz(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         report("String with "+param1.length+" chars entered. Use /save <i>(name)</i> to save.",-2);
         this.setReturned(param1,true);
         return;
      }

      private function sofa(... rest) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:SlashCommand = null;
         var _loc2_:Array = [];
         var _loc3_:Array = [];
         for each (_loc4_ in this.liri)
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

      private function kiqot(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         console.refs.focus(this.syt);
         return;
      }

      private function coj(param1:String="0") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = int(param1);
         console.explodech(console.panels.mainPanel.reportChannel,this.syt,_loc2_<=0?3:_loc2_);
         return;
      }

      private function cyjiqi(param1:String="0") : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         console.mapch(console.panels.mainPanel.reportChannel,this.syt as DisplayObjectContainer,int(param1));
         return;
      }

      private function kitinary(param1:String="") : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:FakeFunction = new FakeFunction(this.run,param1);
         report("Function created. Use /savestrong <i>(name)</i> to save.",-2);
         this.setReturned(_loc2_.exec,true);
         return;
      }

      private function bejofa(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         config.commandLineAutoScope=!config.commandLineAutoScope;
         report("Auto-scoping <b>"+(config.commandLineAutoScope?"enabled":"disabled")+"</b>.",10);
         return;
      }

      private function cygahubyz(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setReturned(this.base,true);
         return;
      }

      private function kovowojy(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setReturned(this.fat.firycynus,true);
         return;
      }

      private function tulenudok(... rest) : void {
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
