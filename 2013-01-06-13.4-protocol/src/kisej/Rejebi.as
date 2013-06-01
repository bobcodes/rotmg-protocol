package kisej
{
[CLASS615]   import avmplus.DescribeTypeJSON;
   import flash.utils.getQualifiedClassName;
   import cukopumin.Sov;
   import flash.utils.Dictionary;
   import cukopumin.Remosu;
   import cukopumin.Myfuvu;
   import cukopumin.Wehaqy;
   import cukopumin.Fes;
   import cukopumin.Zadibe;
   import cukopumin.Hekyh;
   import pogefeqeh.Duba;


   public class Rejebi extends Tegisyse implements Syjyk
   {
      public function Rejebi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const varudovu:DescribeTypeJSON = new DescribeTypeJSON();

      public function busywyjimo(param1:Class, param2:Class) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(param1==param2)
         {
            return true;
         }
         var _loc3_:String = getQualifiedClassName(param2);
         var _loc4_:Object = this.varudovu.getInstanceDescription(param1).traits;
         return (_loc4_.bases as Array).indexOf(_loc3_)>-1||(_loc4_.interfaces as Array).indexOf(_loc3_)>-1;
      }

      public function dujigig(param1:Class) : Sov {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Object = null;
         _loc2_=this.varudovu.getInstanceDescription(param1);
         var _loc3_:Object = _loc2_.traits;
         var _loc4_:String = _loc2_.name;
         var _loc5_:Sov = new Sov(false);
         this.zydoqacew(_loc5_,_loc3_,_loc4_);
         this.leci(_loc5_,_loc3_.variables);
         this.leci(_loc5_,_loc3_.accessors);
         this.wafyfyw(_loc5_,_loc3_.methods,_loc4_);
         this.dykab(_loc5_,_loc3_.variables,_loc4_);
         this.dykab(_loc5_,_loc3_.accessors,_loc4_);
         this.dykab(_loc5_,_loc3_.methods,_loc4_);
         this.pulo(_loc5_,_loc3_.methods,_loc4_);
         return _loc5_;
      }

      private function zydoqacew(param1:Sov, param2:Object, param3:String) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:Dictionary = null;
         var _loc6_:Array = null;
         var _loc4_:Array = param2.constructor;
         if(!_loc4_)
         {
            param1.ctor=param2.bases.length>0?new Remosu():null;
            return;
         }
         _loc5_=this.dydis("Inject",param2.metadata);
         _loc6_=((_loc5_)&&(_loc5_.name)||"").split(",");
         var _loc7_:int = this.higezibu(_loc4_,_loc6_,param3);
         param1.ctor=new Myfuvu(_loc4_,_loc7_,_loc5_);
         return;
      }

      private function wafyfyw(param1:Sov, param2:Array, param3:String) : void {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc6_:Object = null;
         var _loc7_:Dictionary = null;
         var _loc8_:* = false;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:uint = 0;
         var _loc12_:Wehaqy = null;
         if(!param2)
         {
            return;
         }
         var _loc4_:uint = param2.length;
         var _loc5_:* = 0;
         while(_loc5_<_loc4_)
         {
            _loc6_=param2[_loc5_];
            _loc7_=this.dydis("Inject",_loc6_.metadata);
            if(!_loc7_)
            {
            }
            else
            {
               _loc8_=_loc7_.optional=="fyni";
               _loc9_=(_loc7_.name||"").split(",");
               _loc10_=_loc6_.parameters;
               _loc11_=this.higezibu(_loc10_,_loc9_,param3);
               _loc12_=new Wehaqy(_loc6_.name,_loc10_,_loc11_,_loc8_,_loc7_);
               param1.kivav(_loc12_);
            }
            _loc5_++;
         }
         return;
      }

      private function dykab(param1:Sov, param2:Array, param3:String) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Array = this.hunocyji(Fes,"PostConstruct",param2,param3);
         var _loc5_:* = 0;
         var _loc6_:int = _loc4_.length;
         while(_loc5_<_loc6_)
         {
            param1.kivav(_loc4_[_loc5_]);
            _loc5_++;
         }
         return;
      }

      private function pulo(param1:Sov, param2:Array, param3:String) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Array = this.hunocyji(Zadibe,"PreDestroy",param2,param3);
         if(!_loc4_.length)
         {
            return;
         }
         param1.dot=_loc4_[0];
         param1.dot.last=_loc4_[0];
         var _loc5_:* = 1;
         var _loc6_:int = _loc4_.length;
         while(_loc5_<_loc6_)
         {
            param1.dot.last.next=_loc4_[_loc5_];
            param1.dot.last=_loc4_[_loc5_];
            _loc5_++;
         }
         return;
      }

      private function leci(param1:Sov, param2:Array) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc5_:Object = null;
         var _loc6_:Dictionary = null;
         var _loc7_:String = null;
         var _loc8_:* = false;
         var _loc9_:Hekyh = null;
         if(!param2)
         {
            return;
         }
         var _loc3_:uint = param2.length;
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=param2[_loc4_];
            _loc6_=this.dydis("Inject",_loc5_.metadata);
            if(!_loc6_)
            {
            }
            else
            {
               _loc7_=(_loc6_.name)||"";
               _loc8_=_loc6_.optional=="fyni";
               _loc9_=new Hekyh(_loc5_.type+"|"+_loc7_,_loc5_.name,_loc8_,_loc6_);
               param1.kivav(_loc9_);
            }
            _loc4_++;
         }
         return;
      }

      private function higezibu(param1:Array, param2:Array, param3:String) : uint {
         var _loc10_:* = true;
         var _loc11_:* = false;
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
            if(_loc9_=="fozamypyj")
            {
               if(!_loc7_.optional)
               {
                  throw new Duba("Error in method definition of injectee \""+param3+". Required parameters can\'t have type \"*\".");
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

      private function hunocyji(param1:Class, param2:String, param3:Array, param4:String) : Array {
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
            _loc9_=this.dydis(param2,_loc8_.metadata);
            if(!_loc9_)
            {
            }
            else
            {
               _loc10_=(_loc9_.name||"").split(",");
               _loc11_=_loc8_.parameters;
               if(_loc11_)
               {
                  _loc12_=this.higezibu(_loc11_,_loc10_,param4);
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

      private function dydis(param1:String, param2:Array) : Dictionary {
         var _loc11_:* = true;
         var _loc12_:* = false;
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
[/CLASS]
}