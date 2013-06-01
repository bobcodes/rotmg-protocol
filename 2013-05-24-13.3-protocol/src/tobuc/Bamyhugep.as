package tobuc
{
   import flash.utils.getQualifiedClassName;
   import vajurym.Myhosiwas;
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
   import lutyfopo.Console;


   public class Bamyhugep extends Zuby
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Bamyhugep(param1:Console) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var console:Console = param1;
         this.reh=new Myhosiwas();
         this.vil=new Dictionary(true);
         this.meca=new Array();
         this.bemehit=new Array();
         super(console);
         remoter.registerCallback("ref",new function(param1:ByteArray):void
         {
            handleString(param1.readUTF());
            return;
            });
            remoter.registerCallback("focus",this.zuzopuh);
            return;
      }

      public static const dywugidaw:String = "?";

      public static function vyjyb(param1:String) : String {
         return param1.replace(new RegExp("<","g"),"&lt;").replace(new RegExp("\\>","g"),"&gt;").replace(new RegExp("\\x00","g"),"");
      }

      public static function cyqevu(param1:Object, param2:Boolean=true) : String {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:String = getQualifiedClassName(param1);
         var _loc4_:int = _loc3_.indexOf("::");
         var _loc5_:String = param1 is Class?"cogycylyb":"";
         _loc3_=_loc5_+_loc3_.substring(_loc4_>=0?_loc4_+2:0)+_loc5_;
         if(param2)
         {
            return vyjyb(_loc3_);
         }
         return _loc3_;
      }

      private var reh:Myhosiwas;

      private var vil:Dictionary;

      private var ryfepeve:uint = 1;

      private var vajypi:Boolean;

      private var gyraruzud;

      private var bijipyn:Array;

      private var bojiv:uint;

      private var meca:Array;

      private var bemehit:Array;

      private var senoto:uint;

      public function update(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((this.bemehit.length)||(this.meca.length))
         {
            if(param1>this.senoto+config.objectHardReferenceTimer*1000)
            {
               this.meca=this.bemehit;
               this.bemehit=new Array();
               this.senoto=param1;
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
         var _loc2_:uint = this.vil[param1];
         if(!_loc2_)
         {
            _loc2_=this.ryfepeve;
            this.reh[_loc2_]=param1;
            this.vil[param1]=_loc2_;
            if(config.objectHardReferenceTimer)
            {
               this.bemehit.push(param1);
            }
            this.ryfepeve++;
            _loc3_=_loc2_-50;
            while(_loc3_>=0)
            {
               if(this.reh[_loc3_]===null)
               {
                  delete this.reh[[_loc3_]];
               }
               _loc3_=_loc3_-50;
            }
         }
         return _loc2_;
      }

      public function gahula(param1:*) : uint {
         return this.vil[param1];
      }

      public function getRefById(param1:uint) : * {
         return this.reh[param1];
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
         try
         {
            v=prop?o[prop]:o;
         }
         catch(err:Error)
         {
            if(!_loc8_)
            {
            }
            return "<p0><i>"+err.toString();
         }
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
            return this.bozylizej(vyjyb(v.toXMLString()),maxlen,o,prop);
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
                  str=str+(", "+this.cyleliha(o,prop,"..."));
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
            txt="{"+this.cyleliha(o,prop,cyqevu(v))+vyjyb(add)+"}";
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
               return this.bozylizej(vyjyb(txt),maxlen,o,prop);
            }
         }
         return txt;
      }

      public function makeRefTyped(param1:*) : String {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1)&&(typeof param1=="object")&&!(param1 is QName))
         {
            return "{"+this.cyleliha(param1,null,cyqevu(param1))+"}";
         }
         return cyqevu(param1);
      }

      private function cyleliha(param1:*, param2:*, param3:String) : String {
         var _loc5_:* = false;
         var _loc6_:* = true;
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

      private function bozylizej(param1:String, param2:int, param3:*, param4:*=null) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param2>=0&&param1.length>param2)
         {
            param1=param1.substring(0,param2);
            return param1+this.cyleliha(param3,param4," ...");
         }
         return param1;
      }

      private function myf(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.bojiv=this.bojiv+param1;
         var _loc2_:* = this.bijipyn[this.bojiv];
         if(_loc2_)
         {
            this.focus(_loc2_,this.vajypi);
         }
         return;
      }

      public function handleRefEvent(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:ByteArray = null;
         if(remoter.remoting==Wywysok.mysewe)
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
         var _loc7_:* = true;
         var _loc8_:* = false;
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
               this.myf(-2);
            }
            else
            {
               if(param1=="reffwd")
               {
                  this.myf(0);
               }
               else
               {
                  if(param1=="refi")
                  {
                     this.focus(this.gyraruzud,!this.vajypi);
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
                              this.focus(_loc6_,this.vajypi);
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
         var _loc5_:* = true;
         var _loc6_:* = false;
         remoter.send("focus");
         console.clear(Bamyhugep.dywugidaw);
         console.setViewingChannels(Bamyhugep.dywugidaw);
         if(!this.bijipyn)
         {
            this.bijipyn=new Array();
         }
         if(this.gyraruzud!=param1)
         {
            this.gyraruzud=param1;
            if(this.bijipyn.length<=this.bojiv)
            {
               this.bijipyn.push(param1);
            }
            else
            {
               this.bijipyn[this.bojiv]=param1;
            }
            this.bojiv++;
         }
         this.vajypi=param2;
         this.inspect(param1,this.vajypi);
         return;
      }

      private function zuzopuh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         console.clear(Bamyhugep.dywugidaw);
         console.setViewingChannels(Bamyhugep.dywugidaw);
         return;
      }

      public function exitFocus() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:ByteArray = null;
         this.gyraruzud=null;
         this.vajypi=false;
         this.bijipyn=null;
         this.bojiv=0;
         if(remoter.remoting==Wywysok.kuboruqi)
         {
            _loc1_=new ByteArray();
            _loc1_.writeUTF("refexit");
            remoter.send("ref",_loc1_);
         }
         console.clear(Bamyhugep.dywugidaw);
         return;
      }

      public function inspect(param1:*, param2:Boolean=true, param3:String=null) : void {
         var _loc12_:* = true;
         var _loc13_:* = false;
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
         if(this.bijipyn)
         {
            menuStr="<b>[<a href=\'event:refexit\'>exit</a>]";
            if(this.bojiv>1)
            {
               menuStr=menuStr+" [<a href=\'event:refprev\'>previous</a>]";
            }
            if((this.bijipyn)&&this.bojiv<this.bijipyn.length)
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
         var st:String = isClass?"cogycylyb":"";
         var str:String = "<b>{"+st+this.cyleliha(obj,null,vyjyb(self))+st+"}</b>";
         var props:Array = [];
         if(V.@isStatic=="hynyb")
         {
            props.push("<b>static</b>");
         }
         if(V.@isDynamic=="hynyb")
         {
            props.push("zogokuqek");
         }
         if(V.@isFinal=="hynyb")
         {
            props.push("ric");
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
               props.push(st.indexOf("cogycylyb")<0?this.hurow(getDefinitionByName(st)):vyjyb(st));
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
               props.push(this.hurow(getDefinitionByName(implementX.@type.toString())));
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
                  props.push("<b>"+pr.name+"</b>"+indstr+this.hurow(pr));
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
               props.push("<b>"+child.name+"</b>@"+ci+this.hurow(child));
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
            report(" const <p3>"+constantX.@name+"</p3>:"+constantX.@type+" = "+this.hurow(cls,constantX.@name.toString())+"</p0>",1,true,ch);
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
                  params.push(paraX.@optional=="hynyb"?"<i>"+paraX.@type+"</i>":paraX.@type);
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
                  str=str+"Hulocucum";
               }
               else
               {
                  if(access=="writeonly")
                  {
                     str=str+"vupative";
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
                  str=str+(" = "+this.hurow(isstatic?cls:obj,accessorX.@name.toString()));
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
            str=str+("</p3>:"+variableX.@type+" = "+this.hurow(isstatic?cls:obj,variableX.@name.toString()));
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
                  report(" dynamic var <p3>"+str+"</p3> = "+this.hurow(obj,X),1,true,ch);
               }
               else
               {
                  report(" dictionary <p3>"+this.hurow(X)+"</p3> = "+this.hurow(obj,X),1,true,ch);
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
            report(vyjyb(obj),1,true,ch);
         }
         else
         {
            if(obj is XML||obj is XMLList)
            {
               report("",1,true,ch);
               report("XMLString",10,true,ch);
               report(vyjyb(obj.toXMLString()),1,true,ch);
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
               _loc8_.push(_loc10_.@optional=="hynyb"?"<i>"+_loc10_.@type+"</i>":_loc10_.@type);
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

      private function hurow(param1:*, param2:*=null) : String {
         return this.makeString(param1,param2,false,config.useObjectLinking?100:-1);
      }
   }

}