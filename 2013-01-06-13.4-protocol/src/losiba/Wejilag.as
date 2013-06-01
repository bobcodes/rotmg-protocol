package losiba
{
[CLASS1838]   import flash.utils.getQualifiedClassName;
   import cakajitez.Laqajuvo;
   import flash.utils.Dictionary;
   import flash.utils.ByteArray;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.geom.Matrix;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import wacic.Console;


   public class Wejilag extends Hubobag
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wejilag(param1:Console) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var console:Console = param1;
         this.cypezotuf=new Laqajuvo();
         this.riqezutak=new Dictionary(true);
         this.ginynoteb=new Array();
         this.nab=new Array();
         super(console);
         remoter.registerCallback("ref",new function(param1:ByteArray):void
         {
            handleString(param1.readUTF());
            return;
            });
            remoter.registerCallback("focus",this.kito);
            return;
      }

      public static const hafiwo:String = "?";

      public static function pawokotu(param1:String) : String {
         return param1.replace(new RegExp("<","g"),"&lt;").replace(new RegExp("\\>","g"),"&gt;").replace(new RegExp("\\x00","g"),"");
      }

      public static function zuq(param1:Object, param2:Boolean=true) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = getQualifiedClassName(param1);
         var _loc4_:int = _loc3_.indexOf("::");
         var _loc5_:String = param1 is Class?"fozamypyj":"";
         _loc3_=_loc5_+_loc3_.substring(_loc4_>=0?_loc4_+2:0)+_loc5_;
         if(param2)
         {
            return pawokotu(_loc3_);
         }
         return _loc3_;
      }

      private var cypezotuf:Laqajuvo;

      private var riqezutak:Dictionary;

      private var koqo:uint = 1;

      private var jevuho:Boolean;

      private var qubunany;

      private var howoryf:Array;

      private var qenufyb:uint;

      private var ginynoteb:Array;

      private var nab:Array;

      private var fefef:uint;

      public function update(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.nab.length)||(this.ginynoteb.length))
         {
            if(param1>this.fefef+config.objectHardReferenceTimer*1000)
            {
               this.ginynoteb=this.nab;
               this.nab=new Array();
               this.fefef=param1;
            }
         }
         return;
      }

      public function setLogRef(param1:*) : uint {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = 0;
         if(!config.useObjectLinking)
         {
            return 0;
         }
         var _loc2_:uint = this.riqezutak[param1];
         if(!_loc2_)
         {
            _loc2_=this.koqo;
            this.cypezotuf[_loc2_]=param1;
            this.riqezutak[param1]=_loc2_;
            if(config.objectHardReferenceTimer)
            {
               this.nab.push(param1);
            }
            this.koqo++;
            _loc3_=_loc2_-50;
            while(_loc3_>=0)
            {
               if(this.cypezotuf[_loc3_]===null)
               {
                  delete this.cypezotuf[[_loc3_]];
               }
               _loc3_=_loc3_-50;
            }
         }
         return _loc2_;
      }

      public function zusibi(param1:*) : uint {
         return this.riqezutak[param1];
      }

      public function getRefById(param1:uint) : * {
         return this.cypezotuf[param1];
      }

      public function makeString(param1:*, param2:*=null, param3:Boolean=false, param4:int=-1) : String {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var txt:String = null;
         var v:* = undefined;
         var err:Error = null;
         var stackstr:String = null;
         var str:String = null;
         var len:int = 0;
         var hasmaxlen:Boolean = false;
         var i:int = 0;
         var strpart:String = null;
         var add:String = null;
         var o:* = param1;
         var prop:* = param2;
         var html:Boolean = param3;
         var maxlen:int = param4;
         v=prop?o[prop]:o;
         if(v is Error)
         {
            err=v as Error;
            stackstr=err.hasOwnProperty("getStackTrace")?err.getStackTrace():err.toString();
            if(stackstr)
            {
               return stackstr;
            }
            return err.toString();
         }
         if(v is XML||v is XMLList)
         {
            return this.fatemevov(pawokotu(v.toXMLString()),maxlen,o,prop);
         }
         if(v is QName)
         {
            return String(v);
         }
         if(v is Array||getQualifiedClassName(v).indexOf("__AS3__.vec::Vector.")==0)
         {
            str="[";
            len=v.length;
            hasmaxlen=maxlen>=0;
            i=0;
            while(i<len)
            {
               strpart=this.makeString(v[i],null,false,maxlen);
               str=str+((i?", ":"")+strpart);
               maxlen=maxlen-strpart.length;
               if((hasmaxlen)&&maxlen<=0&&i<len-1)
               {
                  str=str+(", "+this.newycagu(o,prop,"..."));
                  break;
               }
               i++;
            }
            return str+"]";
         }
         if((config.useObjectLinking)&&(v)&&typeof v=="object")
         {
            add="";
            if(v is ByteArray)
            {
               add=" position:"+v.position+" length:"+v.length;
            }
            else
            {
               if(v is Date||v is Rectangle||v is Point||v is Matrix||v is Event)
               {
                  add=" "+String(v);
               }
               else
               {
                  if(v is DisplayObject&&(v.name))
                  {
                     add=" "+v.name;
                  }
               }
            }
            txt="{"+this.newycagu(o,prop,zuq(v))+pawokotu(add)+"}";
         }
         else
         {
            if(v is ByteArray)
            {
               txt="[ByteArray position:"+ByteArray(v).position+" length:"+ByteArray(v).length+"]";
            }
            else
            {
               txt=String(v);
            }
            if(!html)
            {
               return this.fatemevov(pawokotu(txt),maxlen,o,prop);
            }
         }
         return txt;
      }

      public function makeRefTyped(param1:*) : String {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1)&&(typeof param1=="object")&&!(param1 is QName))
         {
            return "{"+this.newycagu(param1,null,zuq(param1))+"}";
         }
         return zuq(param1);
      }

      private function newycagu(param1:*, param2:*, param3:String) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if((param2)&&!(param2 is String))
         {
            param1=param1[param2];
            param2=null;
         }
         var _loc4_:uint = this.setLogRef(param1);
         if(_loc4_)
         {
            return "<menu><a href=\'event:ref_"+_loc4_+(param2?"_"+param2:"")+"\'>"+param3+"</a></menu>";
         }
         return param3;
      }

      private function fatemevov(param1:String, param2:int, param3:*, param4:*=null) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param2>=0&&param1.length>param2)
         {
            param1=param1.substring(0,param2);
            return param1+this.newycagu(param3,param4," ...");
         }
         return param1;
      }

      private function voni(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qenufyb=this.qenufyb+param1;
         var _loc2_:* = this.howoryf[this.qenufyb];
         if(_loc2_)
         {
            this.focus(_loc2_,this.jevuho);
         }
         return;
      }

      public function handleRefEvent(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:ByteArray = null;
         if(remoter.remoting==Kelasydo.pabyry)
         {
            _loc2_=new ByteArray();
            _loc2_.writeUTF(param1);
            remoter.send("ref",_loc2_);
         }
         else
         {
            this.handleString(param1);
         }
         return;
      }

      private function handleString(param1:String) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc2_:* = 0;
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:Object = null;
         if(param1=="refexit")
         {
            this.exitFocus();
            console.setViewingChannels();
         }
         else
         {
            if(param1=="refprev")
            {
               this.voni(-2);
            }
            else
            {
               if(param1=="reffwd")
               {
                  this.voni(0);
               }
               else
               {
                  if(param1=="refi")
                  {
                     this.focus(this.qubunany,!this.jevuho);
                  }
                  else
                  {
                     _loc2_=param1.indexOf("_")+1;
                     if(_loc2_>0)
                     {
                        _loc4_="";
                        _loc5_=param1.indexOf("_",_loc2_);
                        if(_loc5_>0)
                        {
                           _loc3_=uint(param1.substring(_loc2_,_loc5_));
                           _loc4_=param1.substring(_loc5_+1);
                        }
                        else
                        {
                           _loc3_=uint(param1.substring(_loc2_));
                        }
                        _loc6_=this.getRefById(_loc3_);
                        if(_loc4_)
                        {
                           _loc6_=_loc6_[_loc4_];
                        }
                        if(_loc6_)
                        {
                           if(param1.indexOf("refe_")==0)
                           {
                              console.explodech(console.panels.mainPanel.reportChannel,_loc6_);
                           }
                           else
                           {
                              this.focus(_loc6_,this.jevuho);
                           }
                           return;
                        }
                     }
                     report("Reference no longer exist (garbage collected).",-2);
                  }
               }
            }
         }
         return;
      }

      public function focus(param1:*, param2:Boolean=false) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         remoter.send("focus");
         console.clear(Wejilag.hafiwo);
         console.setViewingChannels(Wejilag.hafiwo);
         if(!this.howoryf)
         {
            this.howoryf=new Array();
         }
         if(this.qubunany!=param1)
         {
            this.qubunany=param1;
            if(this.howoryf.length<=this.qenufyb)
            {
               this.howoryf.push(param1);
            }
            else
            {
               this.howoryf[this.qenufyb]=param1;
            }
            this.qenufyb++;
         }
         this.jevuho=param2;
         this.inspect(param1,this.jevuho);
         return;
      }

      private function kito() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         console.clear(Wejilag.hafiwo);
         console.setViewingChannels(Wejilag.hafiwo);
         return;
      }

      public function exitFocus() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:ByteArray = null;
         this.qubunany=null;
         this.jevuho=false;
         this.howoryf=null;
         this.qenufyb=0;
         if(remoter.remoting==Kelasydo.wes)
         {
            _loc1_=new ByteArray();
            _loc1_.writeUTF("refexit");
            remoter.send("ref",_loc1_);
         }
         console.clear(Wejilag.hafiwo);
         return;
      }

      public function inspect(param1:*, param2:Boolean=true, param3:String=null) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var menuStr:String = null;
         var nodes:XMLList = null;
         var constantX:XML = null;
         var hasstuff:Boolean = false;
         var isstatic:Boolean = false;
         var methodX:XML = null;
         var accessorX:XML = null;
         var variableX:XML = null;
         var extendX:XML = null;
         var implementX:XML = null;
         var metadataX:XML = null;
         var mn:XMLList = null;
         var en:String = null;
         var et:String = null;
         var disp:DisplayObject = null;
         var theParent:DisplayObjectContainer = null;
         var pr:DisplayObjectContainer = null;
         var indstr:String = null;
         var cont:DisplayObjectContainer = null;
         var clen:int = 0;
         var ci:int = 0;
         var child:DisplayObject = null;
         var params:Array = null;
         var mparamsList:XMLList = null;
         var paraX:XML = null;
         var access:String = null;
         var X:* = undefined;
         var obj:* = param1;
         var viewAll:Boolean = param2;
         var ch:String = param3;
         if(!obj)
         {
            report(obj,-2,true,ch);
            return;
         }
         var refIndex:uint = this.setLogRef(obj);
         var showInherit:String = "";
         if(!viewAll)
         {
            showInherit=" [<a href=\'event:refi\'>show inherited</a>]";
         }
         if(this.howoryf)
         {
            menuStr="<b>[<a href=\'event:refexit\'>exit</a>]";
            if(this.qenufyb>1)
            {
               menuStr=menuStr+" [<a href=\'event:refprev\'>previous</a>]";
            }
            if((this.howoryf)&&this.qenufyb<this.howoryf.length)
            {
               menuStr=menuStr+" [<a href=\'event:reffwd\'>forward</a>]";
            }
            menuStr=menuStr+("</b> || [<a href=\'event:ref_"+refIndex+"\'>refresh</a>]");
            menuStr=menuStr+("</b> [<a href=\'event:refe_"+refIndex+"\'>explode</a>]");
            if(config.commandLineAllowed)
            {
               menuStr=menuStr+(" [<a href=\'event:cl_"+refIndex+"\'>scope</a>]");
            }
            if(viewAll)
            {
               menuStr=menuStr+" [<a href=\'event:refi\'>hide inherited</a>]";
            }
            else
            {
               menuStr=menuStr+showInherit;
            }
            report(menuStr,-1,true,ch);
            report("",1,true,ch);
         }
         var V:XML = describeType(obj);
         var cls:Object = obj is Class?obj:obj.constructor;
         var clsV:XML = describeType(cls);
         var self:String = V.@name;
         var isClass:Boolean = obj is Class;
         var st:String = isClass?"fozamypyj":"";
         var str:String = "<b>{"+st+this.newycagu(obj,null,pawokotu(self))+st+"}</b>";
         var props:Array = [];
         if(V.@isStatic=="fyni")
         {
            props.push("<b>static</b>");
         }
         if(V.@isDynamic=="fyni")
         {
            props.push("pikyremo");
         }
         if(V.@isFinal=="fyni")
         {
            props.push("rebygado");
         }
         if(props.length>0)
         {
            str=str+(" <p-1>"+props.join(" | ")+"</p-1>");
         }
         report(str,-2,true,ch);
         nodes=V.extendsClass;
         if(nodes.length())
         {
            props=[];
            for each (extendX in nodes)
            {
               st=extendX.@type.toString();
               props.push(st.indexOf("fozamypyj")<0?this.tufafite(getDefinitionByName(st)):pawokotu(st));
               if(!viewAll)
               {
                  break;
               }
            }
            report("<p10>Extends:</p10> "+props.join(" &gt; "),1,true,ch);
         }
         nodes=V.implementsInterface;
         if(nodes.length())
         {
            props=[];
            for each (implementX in nodes)
            {
               props.push(this.tufafite(getDefinitionByName(implementX.@type.toString())));
            }
            report("<p10>Implements:</p10> "+props.join(", "),1,true,ch);
         }
         report("",1,true,ch);
         props=[];
         for each (_loc9_ in V.metadata)
         {
            with(_loc9_)
            {
               
               if(@name=="Event")
               {
                  _loc5_[_loc6_]=_loc8_;
               }
            }
         }
         nodes=_loc5_;
         if(nodes.length())
         {
            for each (metadataX in nodes)
            {
               mn=metadataX.arg;
               for each (_loc11_ in mn)
               {
                  with(_loc11_)
                  {
                     
                     if(@key=="name")
                     {
                        _loc7_[_loc8_]=_loc10_;
                     }
                  }
               }
               en=_loc7_.@value;
               for each (_loc10_ in mn)
               {
                  with(nextValue(_loc8_,_loc9_))
                  {
                     
                     if(@key=="type")
                     {
                        _loc7_[_loc8_]=_loc10_;
                     }
                  }
               }
               et=_loc7_.@value;
               if(refIndex)
               {
                  props.push("<a href=\'event:cl_"+refIndex+"_dispatchEvent(new "+et+"(\""+en+"\"))\'>"+en+"</a><p0>("+et+")</p0>");
               }
               else
               {
                  props.push(en+"<p0>("+et+")</p0>");
               }
            }
            report("<p10>Events:</p10> "+props.join("<p-1>; </p-1>"),1,true,ch);
            report("",1,true,ch);
         }
         if(obj is DisplayObject)
         {
            disp=obj as DisplayObject;
            theParent=disp.parent;
            if(theParent)
            {
               props=new Array("@"+theParent.getChildIndex(disp));
               while(theParent)
               {
                  pr=theParent;
                  theParent=theParent.parent;
                  indstr=theParent?"@"+theParent.getChildIndex(pr):"";
                  props.push("<b>"+pr.name+"</b>"+indstr+this.tufafite(pr));
               }
               report("<p10>Parents:</p10> "+props.join("<p-1> -> </p-1>")+"<br/>",1,true,ch);
            }
         }
         if(obj is DisplayObjectContainer)
         {
            props=[];
            cont=obj as DisplayObjectContainer;
            clen=cont.numChildren;
            ci=0;
            while(ci<clen)
            {
               child=cont.getChildAt(ci);
               props.push("<b>"+child.name+"</b>@"+ci+this.tufafite(child));
               ci++;
            }
            if(clen)
            {
               report("<p10>Children:</p10> "+props.join("<p-1>; </p-1>")+"<br/>",1,true,ch);
            }
         }
         props=[];
         nodes=clsV..constant;
         for each (constantX in nodes)
         {
            report(" const <p3>"+constantX.@name+"</p3>:"+constantX.@type+" = "+this.tufafite(cls,constantX.@name.toString())+"</p0>",1,true,ch);
         }
         if(nodes.length())
         {
            report("",1,true,ch);
         }
         var inherit:uint = 0;
         props=[];
         nodes=clsV..method;
         for each (methodX in nodes)
         {
            if((viewAll)||self==methodX.@declaredBy)
            {
               hasstuff=true;
               isstatic=!(methodX.parent().name()=="factory");
               str=" "+(isstatic?"static ":"")+"function ";
               params=[];
               mparamsList=methodX.parameter;
               for each (paraX in mparamsList)
               {
                  params.push(paraX.@optional=="fyni"?"<i>"+paraX.@type+"</i>":paraX.@type);
               }
               if((refIndex)&&((isstatic)||!isClass))
               {
                  str=str+("<a href=\'event:cl_"+refIndex+"_"+methodX.@name+"()\'><p3>"+methodX.@name+"</p3></a>");
               }
               else
               {
                  str=str+("<p3>"+methodX.@name+"</p3>");
               }
               str=str+("("+params.join(", ")+"):"+methodX.@returnType);
               report(str,1,true,ch);
            }
            else
            {
               inherit++;
            }
         }
         if(inherit)
         {
            report("   \t + "+inherit+" inherited methods."+showInherit,1,true,ch);
         }
         else
         {
            if(hasstuff)
            {
               report("",1,true,ch);
            }
         }
         hasstuff=false;
         inherit=0;
         props=[];
         nodes=clsV..accessor;
         for each (accessorX in nodes)
         {
            if((viewAll)||self==accessorX.@declaredBy)
            {
               hasstuff=true;
               isstatic=!(accessorX.parent().name()=="factory");
               str=" ";
               if(isstatic)
               {
                  str=str+"static ";
               }
               access=accessorX.@access;
               if(access=="readonly")
               {
                  str=str+"Vinac";
               }
               else
               {
                  if(access=="writeonly")
                  {
                     str=str+"kulebocy";
                  }
                  else
                  {
                     str=str+"assign";
                  }
               }
               if((refIndex)&&((isstatic)||!isClass))
               {
                  str=str+(" <a href=\'event:cl_"+refIndex+"_"+accessorX.@name+"\'><p3>"+accessorX.@name+"</p3></a>:"+accessorX.@type);
               }
               else
               {
                  str=str+(" <p3>"+accessorX.@name+"</p3>:"+accessorX.@type);
               }
               if(!(access=="writeonly")&&((isstatic)||!isClass))
               {
                  str=str+(" = "+this.tufafite(isstatic?cls:obj,accessorX.@name.toString()));
               }
               report(str,1,true,ch);
            }
            else
            {
               inherit++;
            }
         }
         if(inherit)
         {
            report("   \t + "+inherit+" inherited accessors."+showInherit,1,true,ch);
         }
         else
         {
            if(hasstuff)
            {
               report("",1,true,ch);
            }
         }
         nodes=clsV..variable;
         for each (variableX in nodes)
         {
            isstatic=!(variableX.parent().name()=="factory");
            str=isstatic?" static":"";
            if(refIndex)
            {
               str=str+(" var <p3><a href=\'event:cl_"+refIndex+"_"+variableX.@name+" = \'>"+variableX.@name+"</a>");
            }
            else
            {
               str=str+(" var <p3>"+variableX.@name);
            }
            str=str+("</p3>:"+variableX.@type+" = "+this.tufafite(isstatic?cls:obj,variableX.@name.toString()));
            report(str,1,true,ch);
         }
         try
         {
            props=[];
            for (X in obj)
            {
               if(X is String)
               {
                  if(refIndex)
                  {
                     str="<a href=\'event:cl_"+refIndex+"_"+X+" = \'>"+X+"</a>";
                  }
                  else
                  {
                     str=X;
                  }
                  report(" dynamic var <p3>"+str+"</p3> = "+this.tufafite(obj,X),1,true,ch);
               }
               else
               {
                  report(" dictionary <p3>"+this.tufafite(X)+"</p3> = "+this.tufafite(obj,X),1,true,ch);
               }
            }
         }
         catch(e:Error)
         {
            report("Could not get dynamic values. "+e.message,9,false,ch);
         }
         if(obj is String)
         {
            report("",1,true,ch);
            report("String",10,true,ch);
            report(pawokotu(obj),1,true,ch);
         }
         else
         {
            if(obj is XML||obj is XMLList)
            {
               report("",1,true,ch);
               report("XMLString",10,true,ch);
               report(pawokotu(obj.toXMLString()),1,true,ch);
            }
         }
         if(menuStr)
         {
            report("",1,true,ch);
            report(menuStr,-1,true,ch);
         }
         return;
      }

      public function getPossibleCalls(param1:*) : Array {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc5_:XML = null;
         var _loc6_:XML = null;
         var _loc7_:XML = null;
         var _loc8_:Array = null;
         var _loc9_:XMLList = null;
         var _loc10_:XML = null;
         var _loc2_:Array = new Array();
         var _loc3_:XML = describeType(param1);
         var _loc4_:XMLList = _loc3_.method;
         for each (_loc5_ in _loc4_)
         {
            _loc8_=[];
            _loc9_=_loc5_.parameter;
            for each (_loc10_ in _loc9_)
            {
               _loc8_.push(_loc10_.@optional=="fyni"?"<i>"+_loc10_.@type+"</i>":_loc10_.@type);
            }
            _loc2_.push([_loc5_.@name+"(",_loc8_.join(", ")+" ):"+_loc5_.@returnType]);
         }
         _loc4_=_loc3_.accessor;
         for each (_loc6_ in _loc4_)
         {
            _loc2_.push([String(_loc6_.@name),String(_loc6_.@type)]);
         }
         _loc4_=_loc3_.variable;
         for each (_loc7_ in _loc4_)
         {
            _loc2_.push([String(_loc7_.@name),String(_loc7_.@type)]);
         }
         return _loc2_;
      }

      private function tufafite(param1:*, param2:*=null) : String {
         return this.makeString(param1,param2,false,config.useObjectLinking?100:-1);
      }
   }
[/CLASS]
}