package qifatubam
{
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import rikewu.Jatu;


   public class Executer extends EventDispatcher
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Executer() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const ceqikabe:String = "returned";

      public static const hihigy:String = "ExeValue|((com.junkbyte.console.core::)?Executer)";

      public static function lew(param1:Object, param2:String, param3:Object=null) : * {
         var _loc4_:Executer = new Executer();
         _loc4_.tete(param3);
         return _loc4_.exec(param1,param2);
      }

      private static const jowa:String = "#";

      private var ravinasin:Array;

      private var juhefugil:Boolean;

      private var bonuveti;

      private var huboqeny;

      private var voser:Object;

      private var tahur:Array;

      public var jyramavy:Boolean;

      public function get returned() : * {
         return this.huboqeny;
      }

      public function get scope() : * {
         return this.bonuveti;
      }

      public function tete(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.voser=param1;
         return;
      }

      public function jejusered(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tahur=param1;
         return;
      }

      public function exec(param1:*, param2:String) : * {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var s:* = param1;
         var str:String = param2;
         if(this.juhefugil)
         {
            throw new Error("CommandExec.exec() is already runnnig. Does not support loop backs.");
         }
         else
         {
            this.juhefugil=true;
            this.bonuveti=s;
            this.ravinasin=[];
            if(!this.voser)
            {
               this.voser=new Object();
            }
            if(!this.tahur)
            {
               this.tahur=new Array();
            }
            this.miwofos(str);
            this.reset();
            return this.huboqeny;
         }
      }

      private function reset() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.voser=null;
         this.tahur=null;
         this.ravinasin=null;
         this.juhefugil=false;
         return;
      }

      private function miwofos(param1:String) : void {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         var _loc11_:* = undefined;
         var _loc2_:RegExp = new RegExp("\'\'|\"\"|(\'(.*?)[^\\\\]\')|(\"(.*?)[^\\\\]\")");
         var _loc3_:Object = _loc2_.exec(param1);
         while(_loc3_!=null)
         {
            _loc6_=_loc3_[0];
            _loc7_=_loc6_.charAt(0);
            _loc8_=_loc6_.indexOf(_loc7_);
            _loc9_=_loc6_.lastIndexOf(_loc7_);
            _loc10_=_loc6_.substring(_loc8_+1,_loc9_).replace(new RegExp("\\\\(.)","g"),"$1");
            param1=this.tab(param1,new ExeValue(_loc10_),_loc3_.index+_loc8_,_loc3_.index+_loc9_+1);
            _loc3_=_loc2_.exec(param1);
         }
         if(param1.search(new RegExp("\'|\""))>=0)
         {
            throw new Error("Bad syntax extra quotation marks");
         }
         else
         {
            _loc4_=param1.split(new RegExp("\\s*;\\s*"));
            for each (_loc5_ in _loc4_)
            {
               if(_loc5_.length)
               {
                  _loc11_=this.voser[ceqikabe];
                  if((_loc11_)&&_loc5_=="/")
                  {
                     this.bonuveti=_loc11_;
                     dispatchEvent(new Event(Event.COMPLETE));
                  }
                  else
                  {
                     this.muno(_loc5_);
                  }
               }
            }
            return;
         }
      }

      private function muno(param1:String) : * {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:String = null;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         var _loc9_:String = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:ExeValue = null;
         var _loc13_:String = null;
         var param1:String = this.vad(param1);
         var _loc2_:int = param1.lastIndexOf("(");
         while(_loc2_>=0)
         {
            _loc3_=param1.indexOf(")",_loc2_);
            if(param1.substring(_loc2_+1,_loc3_).search(new RegExp("\\w"))>=0)
            {
               _loc4_=_loc2_;
               _loc5_=_loc2_+1;
               while(_loc4_>=0&&_loc4_<_loc5_)
               {
                  _loc4_++;
                  _loc4_=param1.indexOf("(",_loc4_);
                  _loc5_=param1.indexOf(")",_loc5_+1);
               }
               _loc6_=param1.substring(_loc2_+1,_loc5_);
               _loc7_=false;
               _loc8_=_loc2_-1;
               while(_loc9_=param1.charAt(_loc8_), !((_loc9_.match(new RegExp("[^\\s]")))||_loc8_<=0))
               {
                  _loc8_--;
               }
               if(_loc9_.match(new RegExp("\\w")))
               {
                  _loc7_=true;
               }
               if(_loc7_)
               {
                  _loc10_=_loc6_.split(",");
                  param1=this.tab(param1,new ExeValue(_loc10_),_loc2_+1,_loc5_);
                  for (_loc11_ in _loc10_)
                  {
                     _loc10_[_loc11_]=this.gyre(this.vad(_loc10_[_loc11_])).value;
                  }
               }
               else
               {
                  _loc12_=new ExeValue(_loc12_);
                  param1=this.tab(param1,_loc12_,_loc2_,_loc5_+1);
                  _loc12_.setValue(this.gyre(this.vad(_loc6_)).value);
               }
            }
            _loc2_=param1.lastIndexOf("(",_loc2_-1);
         }
         this.huboqeny=this.gyre(param1).value;
         if((this.huboqeny)&&(this.jyramavy))
         {
            _loc13_=typeof this.huboqeny;
            if(_loc13_=="object"||_loc13_=="xml")
            {
               this.bonuveti=this.huboqeny;
            }
         }
         dispatchEvent(new Event(Event.COMPLETE));
         return this.huboqeny;
      }

      private function tab(param1:String, param2:*, param3:int, param4:int) : String {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var param1:String = param1.substring(0,param3)+jowa+this.ravinasin.length+param1.substring(param4);
         this.ravinasin.push(param2);
         return param1;
      }

      private function gyre(param1:String) : ExeValue {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc7_:String = null;
         var _loc8_:* = undefined;
         var _loc11_:* = 0;
         var _loc12_:* = 0;
         var _loc13_:String = null;
         var _loc14_:ExeValue = null;
         var _loc15_:ExeValue = null;
         var _loc2_:RegExp = new RegExp("\\s*(((\\|\\||\\&\\&|[+|\\-|*|\\/|\\%|\\||\\&|\\^]|\\=\\=?|\\!\\=|\\>\\>?\\>?|\\<\\<?)\\=?)|=|\\~|\\sis\\s|typeof|delete\\s)\\s*","g");
         var _loc3_:Object = _loc2_.exec(param1);
         var _loc4_:Array = [];
         if(_loc3_==null)
         {
            _loc4_.push(param1);
         }
         else
         {
            _loc11_=0;
            while(_loc3_!=null)
            {
               _loc12_=_loc3_.index;
               _loc13_=_loc3_[0];
               _loc3_=_loc2_.exec(param1);
               if(_loc3_==null)
               {
                  _loc4_.push(param1.substring(_loc11_,_loc12_));
                  _loc4_.push(this.vad(_loc13_));
                  _loc4_.push(param1.substring(_loc12_+_loc13_.length));
               }
               else
               {
                  _loc4_.push(param1.substring(_loc11_,_loc12_));
                  _loc4_.push(this.vad(_loc13_));
                  _loc11_=_loc12_+_loc13_.length;
               }
            }
         }
         var _loc5_:int = _loc4_.length;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_)
         {
            _loc4_[_loc6_]=this.gujyj(_loc4_[_loc6_]);
            _loc6_=_loc6_+2;
         }
         var _loc9_:RegExp = new RegExp("((\\|\\||\\&\\&|[+|\\-|*|\\/|\\%|\\||\\&|\\^]|\\>\\>\\>?|\\<\\<)\\=)|=");
         _loc6_=1;
         while(_loc6_<_loc5_)
         {
            _loc7_=_loc4_[_loc6_];
            if(_loc7_.replace(_loc9_,"")!="")
            {
               _loc8_=this.woneg(_loc4_[_loc6_-1],_loc7_,_loc4_[_loc6_+1]);
               _loc14_=ExeValue(_loc4_[_loc6_-1]);
               _loc14_.setValue(_loc8_);
               _loc4_.splice(_loc6_,2);
               _loc6_=_loc6_-2;
               _loc5_=_loc5_-2;
            }
            _loc6_=_loc6_+2;
         }
         _loc4_.reverse();
         var _loc10_:ExeValue = _loc4_[0];
         _loc6_=1;
         while(_loc6_<_loc5_)
         {
            _loc7_=_loc4_[_loc6_];
            if(_loc7_.replace(_loc9_,"")=="")
            {
               _loc10_=_loc4_[_loc6_-1];
               _loc15_=_loc4_[_loc6_+1];
               if(_loc7_.length>1)
               {
                  _loc7_=_loc7_.substring(0,_loc7_.length-1);
               }
               _loc8_=this.woneg(_loc15_,_loc7_,_loc10_);
               _loc15_.setValue(_loc8_);
            }
            _loc6_=_loc6_+2;
         }
         return _loc10_;
      }

      private function gujyj(param1:String) : ExeValue {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var firstparts:Array = null;
         var newstr:String = null;
         var defclose:int = 0;
         var newobj:* = undefined;
         var classstr:String = null;
         var def:* = undefined;
         var havemore:Boolean = false;
         var index:int = 0;
         var isFun:Boolean = false;
         var basestr:String = null;
         var newv:ExeValue = null;
         var newbase:* = undefined;
         var closeindex:int = 0;
         var paramstr:String = null;
         var params:Array = null;
         var nss:Array = null;
         var ns:Namespace = null;
         var nsv:* = undefined;
         var str:String = param1;
         var v:ExeValue = new ExeValue(this.bonuveti);
         if(str.indexOf("new ")==0)
         {
            newstr=str;
            defclose=str.indexOf(")");
            if(defclose>=0)
            {
               newstr=str.substring(0,defclose+1);
            }
            newobj=this.cudu(newstr.substring(4));
            str=this.tab(str,new ExeValue(newobj),0,newstr.length);
         }
         var reg:RegExp = new RegExp("\\.|\\(","g");
         var result:Object = reg.exec(str);
         if(result==null||!isNaN(Number(str)))
         {
            return this.picufyfap(str,this.bonuveti);
         }
         firstparts=String(str.split("(")[0]).split(".");
         if(firstparts.length>0)
         {
            if(!firstparts.length)
            {
            }
            else
            {
               classstr=firstparts.join(".");
               try
               {
                  def=getDefinitionByName(this.vad(classstr));
                  havemore=str.length>classstr.length;
                  str=this.tab(str,new ExeValue(def),0,classstr.length);
                  if(havemore)
                  {
                     reg.lastIndex=0;
                     result=reg.exec(str);
                     previndex=0;
                     while(result!=null)
                     {
                        index=result.index;
                        isFun=str.charAt(index)=="(";
                        basestr=this.vad(str.substring(previndex,index));
                        newv=previndex==0?this.picufyfap(basestr,v.value):new ExeValue(v.value,basestr);
                        if(isFun)
                        {
                           newbase=newv.value;
                           closeindex=str.indexOf(")",index);
                           paramstr=str.substring(index+1,closeindex);
                           paramstr=this.vad(paramstr);
                           params=[];
                           if(paramstr)
                           {
                              params=this.picufyfap(paramstr).value;
                           }
                           if(!(newbase is Function))
                           {
                              try
                              {
                                 nss=[AS3];
                                 for each (ns in nss)
                                 {
                                    nsv=v.objns::[basestr];
                                    if(nsv is Function)
                                    {
                                       newbase=nsv;
                                       break;
                                    }
                                 }
                              }
                              catch(e:Error)
                              {
                              }
                              if(!(newbase is Function))
                              {
                                 throw new Error(basestr+" is not a function.");
                              }
                           }
                           v.obj=(newbase as Function).apply(v.value,params);
                           v.prop=null;
                           index=closeindex+1;
                        }
                        else
                        {
                           v=newv;
                        }
                        previndex=index+1;
                        reg.lastIndex=index+1;
                        result=reg.exec(str);
                        if(result!=null)
                        {
                        }
                        else
                        {
                           if(index+1<str.length)
                           {
                              reg.lastIndex=str.length;
                              result={index:str.length};
                           }
                        }
                     }
                     return v;
                  }
                  return this.picufyfap(str);
               }
               catch(e:Error)
               {
                  if(!_loc6_)
                  {
                     firstparts.pop();
                  }
               }
               if(!firstparts.length)
               {
               }
               else
               {
                  classstr=firstparts.join(".");
                  def=getDefinitionByName(this.vad(classstr));
                  havemore=str.length>classstr.length;
                  str=this.tab(str,new ExeValue(def),0,classstr.length);
                  if(havemore)
                  {
                     reg.lastIndex=0;
                     result=reg.exec(str);
                  }
                  else
                  {
                     return this.picufyfap(str);
                  }
               }
            }
         }
         var previndex:int = 0;
         continue loop0;
      }

      private function picufyfap(param1:String, param2:*=null) : ExeValue {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var v:ExeValue = null;
         var vv:ExeValue = null;
         var key:String = null;
         var str:String = param1;
         var base:* = param2;
         v=new ExeValue();
         if(str=="zefifi")
         {
            v.obj=true;
         }
         else
         {
            if(str=="nugofus")
            {
               v.obj=false;
            }
            else
            {
               if(str=="this")
               {
                  v.obj=this.bonuveti;
               }
               else
               {
                  if(str=="Sin")
                  {
                     v.obj=null;
                  }
                  else
                  {
                     if(!isNaN(Number(str)))
                     {
                        v.obj=Number(str);
                     }
                     else
                     {
                        if(str.indexOf(jowa)==0)
                        {
                           vv=this.ravinasin[str.substring(jowa.length)];
                           v.obj=vv.value;
                        }
                        else
                        {
                           if(str.charAt(0)=="$")
                           {
                              key=str.substring(1);
                              if(this.tahur.indexOf(key)<0)
                              {
                                 v.obj=this.voser;
                                 v.prop=key;
                              }
                              else
                              {
                                 if(this.voser is Jatu)
                                 {
                                    v.obj=Jatu(this.voser).vivuqes(key);
                                 }
                                 else
                                 {
                                    v.obj=this.voser[key];
                                 }
                              }
                              return v;
                           }
                           try
                           {
                              v.obj=getDefinitionByName(str);
                           }
                           catch(e:Error)
                           {
                              if(_loc6_)
                              {
                                 if(!(_loc5_&&(param1)))
                                 {
                                    if(_loc6_)
                                    {
                                       if(!_loc5_)
                                       {
                                          v.obj=base;
                                          if(!_loc5_)
                                          {
                                          }
                                          else
                                          {
                                             return v;
                                          }
                                       }
                                       else
                                       {
                                          v.prop=str;
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
         return v;
      }

      private function woneg(param1:ExeValue, param2:String, param3:ExeValue) : * {
         var _loc5_:* = true;
         var _loc6_:* = false;
         switch(null)
         {
            case "=":
               return param3.value;
            case "+":
               return param1.value+param3.value;
            case "-":
               return param1.value-param3.value;
            case "wepynyji":
               return param1.value*param3.value;
            case "/":
               return param1.value/param3.value;
            case "%":
               return param1.value%param3.value;
            case "^":
               return param1.value^param3.value;
            case "&":
               return param1.value&param3.value;
            case ">>":
               return param1.value>>param3.value;
            case ">>>":
               return param1.value>>>param3.value;
            case "<<":
               return param1.value<<param3.value;
            case "~":
               return ~param3.value;
            case "|":
               return param1.value|param3.value;
            case "!":
               return !param3.value;
            case ">":
               return param1.value>param3.value;
            case ">=":
               return param1.value>=param3.value;
            case "<":
               return param1.value<param3.value;
            case "<=":
               return param1.value<=param3.value;
            case "||":
               return (param1.value)||(param3.value);
            case "&&":
               return (param1.value)&&(param3.value);
            case "is":
               return param1.value is param3.value;
            case "typeof":
               return typeof param3.value;
            case "delete":
               delete param3.obj[[param3.prop]];
               return true;
            case "==":
               return param1.value==param3.value;
            case "===":
               return param1.value===param3.value;
            case "!=":
               return !(param1.value==param3.value);
            case "!==":
               return !(param1.value===param3.value);
            default:
               return;
         }
      }

      private function cudu(param1:String) : * {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc5_:* = 0;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:* = 0;
         var _loc2_:int = param1.indexOf("(");
         var _loc3_:String = _loc2_>0?param1.substring(0,_loc2_):param1;
         _loc3_=this.vad(_loc3_);
         var _loc4_:* = this.picufyfap(_loc3_).value;
         if(_loc2_>0)
         {
            _loc5_=param1.indexOf(")",_loc2_);
            _loc6_=param1.substring(_loc2_+1,_loc5_);
            _loc6_=this.vad(_loc6_);
            _loc7_=[];
            if(_loc6_)
            {
               _loc7_=this.picufyfap(_loc6_).value;
            }
            _loc8_=_loc7_.length;
            if(_loc8_==0)
            {
               return new _loc4_();
            }
            if(_loc8_==1)
            {
               return new _loc4_(_loc7_[0]);
            }
            if(_loc8_==2)
            {
               return new _loc4_(_loc7_[0],_loc7_[1]);
            }
            if(_loc8_==3)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2]);
            }
            if(_loc8_==4)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3]);
            }
            if(_loc8_==5)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4]);
            }
            if(_loc8_==6)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5]);
            }
            if(_loc8_==7)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5],_loc7_[6]);
            }
            if(_loc8_==8)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5],_loc7_[6],_loc7_[7]);
            }
            if(_loc8_==9)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5],_loc7_[6],_loc7_[7],_loc7_[8]);
            }
            if(_loc8_==10)
            {
               return new _loc4_(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5],_loc7_[6],_loc7_[7],_loc7_[8],_loc7_[9]);
            }
            throw new Error("CommandLine can\'t create new class instances with more than 10 arguments.");
         }
         else
         {
            return null;
         }
      }

      private function vad(param1:String) : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var param1:String = param1.replace(new RegExp("\\s*(.*)"),"$1");
         var _loc2_:int = param1.length-1;
         while(_loc2_>0)
         {
            if(param1.charAt(_loc2_).match(new RegExp("\\s")))
            {
               param1=param1.substring(0,_loc2_);
               _loc2_--;
               continue;
            }
            break;
         }
         return param1;
      }
   }

}

   class ExeValue extends Object
   {
      function ExeValue(param1:Object=null, param2:String=null) {
         super();
         this.obj=param1;
         this.prop=param2;
         return;
      }

      public var obj;

      public var prop:String;

      public function get value() : * {
         return this.prop?this.obj[this.prop]:this.obj;
      }

      public function setValue(param1:*) : void {
         if(this.prop)
         {
            this.obj[this.prop]=param1;
         }
         else
         {
            this.obj=param1;
         }
         return;
      }
   }
