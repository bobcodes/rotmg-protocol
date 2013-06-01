package cyqef
{
   import avmplus.DescribeTypeJSON;
   import flash.utils.getQualifiedClassName;
   import jyqiqagog.Wubelet;
   import flash.utils.Dictionary;
   import jyqiqagog.Mokicira;
   import jyqiqagog.Cyrad;
   import jyqiqagog.Tezeg;
   import jyqiqagog.Nys;
   import jyqiqagog.Nytiq;
   import jyqiqagog.Qahazonyb;
   import kyco.Jugiwuly;


   public class Danono extends Ruzucinu implements Naseqigos
   {
      public function Danono() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const guduh:DescribeTypeJSON = new DescribeTypeJSON();

      public function hukug(param1:Class, param2:Class) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param1==param2)
         {
            return true;
         }
         var _loc3_:String = getQualifiedClassName(param2);
         var _loc4_:Object = this.guduh.getInstanceDescription(param1).traits;
         return (_loc4_.bases as Array).indexOf(_loc3_)>-1||(_loc4_.interfaces as Array).indexOf(_loc3_)>-1;
      }

      public function timefuh(param1:Class) : Wubelet {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Object = null;
         _loc2_=this.guduh.getInstanceDescription(param1);
         var _loc3_:Object = _loc2_.traits;
         var _loc4_:String = _loc2_.name;
         var _loc5_:Wubelet = new Wubelet(false);
         this.cofew(_loc5_,_loc3_,_loc4_);
         this.joz(_loc5_,_loc3_.variables);
         this.joz(_loc5_,_loc3_.accessors);
         this.nijafydoc(_loc5_,_loc3_.methods,_loc4_);
         this.mozy(_loc5_,_loc3_.variables,_loc4_);
         this.mozy(_loc5_,_loc3_.accessors,_loc4_);
         this.mozy(_loc5_,_loc3_.methods,_loc4_);
         this.nowyzu(_loc5_,_loc3_.methods,_loc4_);
         return _loc5_;
      }

      private function cofew(param1:Wubelet, param2:Object, param3:String) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:Dictionary = null;
         var _loc6_:Array = null;
         var _loc4_:Array = param2.constructor;
         if(!_loc4_)
         {
            param1.ctor=param2.bases.length>0?new Mokicira():null;
            return;
         }
         _loc5_=this.dyvizoderu("Inject",param2.metadata);
         _loc6_=((_loc5_)&&(_loc5_.name)||"").split(",");
         var _loc7_:int = this.fyrowyqo(_loc4_,_loc6_,param3);
         param1.ctor=new Cyrad(_loc4_,_loc7_,_loc5_);
         return;
      }

      private function nijafydoc(param1:Wubelet, param2:Array, param3:String) : void {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc6_:Object = null;
         var _loc7_:Dictionary = null;
         var _loc8_:* = false;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:uint = 0;
         var _loc12_:Tezeg = null;
         if(!param2)
         {
            return;
         }
         var _loc4_:uint = param2.length;
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc6_=param2[_loc5_];
            _loc7_=this.dyvizoderu("Inject",_loc6_.metadata);
            if(!_loc7_)
            {
            }
            else
            {
               _loc8_=_loc7_.optional=="hynyb";
               _loc9_=(_loc7_.name||"").split(",");
               _loc10_=_loc6_.parameters;
               _loc11_=this.fyrowyqo(_loc10_,_loc9_,param3);
               _loc12_=new Tezeg(_loc6_.name,_loc10_,_loc11_,_loc8_,_loc7_);
               param1.zoqy(_loc12_);
            }
            _loc5_++;
         }
         return;
      }

      private function mozy(param1:Wubelet, param2:Array, param3:String) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Array = this.cezyl(Nys,"PostConstruct",param2,param3);
         var _loc5_:* = 0;
         var _loc6_:int = _loc4_.length;
         while(_loc5_<_loc6_)
         {
            param1.zoqy(_loc4_[_loc5_]);
            _loc5_++;
         }
         return;
      }

      private function nowyzu(param1:Wubelet, param2:Array, param3:String) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Array = this.cezyl(Nytiq,"PreDestroy",param2,param3);
         if(!_loc4_.length)
         {
            return;
         }
         param1.lymatudo=_loc4_[0];
         param1.lymatudo.last=_loc4_[0];
         var _loc5_:* = 1;
         var _loc6_:int = _loc4_.length;
         while(_loc5_<_loc6_)
         {
            param1.lymatudo.last.next=_loc4_[_loc5_];
            param1.lymatudo.last=_loc4_[_loc5_];
            _loc5_++;
         }
         return;
      }

      private function joz(param1:Wubelet, param2:Array) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:Object = null;
         var _loc6_:Dictionary = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:Qahazonyb = null;
         if(!param2)
         {
            return;
         }
         var _loc3_:uint = param2.length;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=param2[_loc4_];
            _loc6_=this.dyvizoderu("Inject",_loc5_.metadata);
            if(!_loc6_)
            {
            }
            else
            {
               _loc7_=(_loc6_.name)||"";
               _loc8_=_loc6_.optional=="hynyb";
               _loc9_=new Qahazonyb(_loc5_.type+"|"+_loc7_,_loc5_.name,_loc8_,_loc6_);
               param1.zoqy(_loc9_);
            }
            _loc4_++;
         }
         return;
      }

      private function fyrowyqo(param1:Array, param2:Array, param3:String) : uint {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = param1.length;
         var _loc6_:* = 0;
         while(_loc6_<_loc5_)
         {
            _loc7_=param1[_loc6_];
            _loc8_=(param2[_loc6_])||"";
            _loc9_=_loc7_.type;
            if(_loc9_=="cogycylyb")
            {
               if(!_loc7_.optional)
               {
                  throw new Jugiwuly("Error in method definition of injectee \""+param3+". Required parameters can\'t have type \"*\".");
               }
               else
               {
                  _loc9_=null;
               }
            }
            if(!_loc7_.optional)
            {
               _loc4_++;
            }
            param1[_loc6_]=_loc9_+"|"+_loc8_;
            _loc6_++;
         }
         return _loc4_;
      }

      private function cezyl(param1:Class, param2:String, param3:Array, param4:String) : Array {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:uint = 0;
         var _loc13_:* = 0;
         var _loc5_:Array = [];
         if(!param3)
         {
            return _loc5_;
         }
         var _loc6_:uint = param3.length;
         var _loc7_:* = 0;
         while(_loc7_<_loc6_)
         {
            _loc8_=param3[_loc7_];
            _loc9_=this.dyvizoderu(param2,_loc8_.metadata);
            if(!_loc9_)
            {
            }
            else
            {
               _loc10_=(_loc9_.name||"").split(",");
               _loc11_=_loc8_.parameters;
               if(_loc11_)
               {
                  _loc12_=this.fyrowyqo(_loc11_,_loc10_,param4);
               }
               else
               {
                  _loc11_=[];
                  _loc12_=0;
               }
               _loc13_=parseInt(_loc9_.order,10);
               if(_loc13_.toString(10)!=_loc9_.order)
               {
                  _loc13_=int.MAX_VALUE;
               }
               _loc5_.push(new param1(_loc8_.name,_loc11_,_loc12_,_loc13_));
            }
            _loc7_++;
         }
         if(_loc5_.length>0)
         {
            _loc5_.sortOn("order",Array.NUMERIC);
         }
         return _loc5_;
      }

      private function dyvizoderu(param1:String, param2:Array) : Dictionary {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Dictionary = null;
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc10_:Object = null;
         var _loc3_:uint = param2?param2.length:0;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=param2[_loc4_];
            if(_loc5_.name==param1)
            {
               _loc6_=_loc5_.value;
               _loc7_=new Dictionary();
               _loc8_=_loc6_.length;
               _loc9_=0;
               while(_loc9_<_loc8_)
               {
                  _loc10_=_loc6_[_loc9_];
                  _loc7_[_loc10_.key]=_loc7_[_loc10_.key]?_loc7_[_loc10_.key]+","+_loc10_.value:_loc10_.value;
                  _loc9_++;
               }
               return _loc7_;
            }
            _loc4_++;
         }
         return null;
      }
   }

}