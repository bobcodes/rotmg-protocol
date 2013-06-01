package kisej
{
[CLASS626]   import flash.utils.describeType;
   import cukopumin.Sov;
   import flash.utils.Dictionary;
   import cukopumin.Remosu;
   import cukopumin.Myfuvu;
   import cukopumin.Hekyh;
   import cukopumin.Wehaqy;
   import cukopumin.Fes;
   import cukopumin.Zadibe;
   import pogefeqeh.Duba;


   public class Metunyjy extends Tegisyse implements Syjyk
   {
      public function Metunyjy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var tyqenazi:XML;

      public function busywyjimo(param1:Class, param2:Class) : Boolean {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var type:Class = param1;
         var superType:Class = param2;
         if(type==superType)
         {
            return true;
         }
         var factoryDescription:XML = describeType(type).factory[0];
         for each (_loc11_ in factoryDescription.children())
         {
            with(_loc11_)
            {
               
               if(name()=="implementsInterface"||name()=="extendsClass")
               {
                  _loc7_[_loc8_]=_loc10_;
               }
            }
         }
         for each (_loc7_ in _loc7_)
         {
            with(nextValue(_loc5_,_loc6_))
            {
               
               if(attribute("type")==getQualifiedClassName(superType))
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         return _loc4_.length()>0;
      }

      public function dujigig(param1:Class) : Sov {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.tyqenazi=describeType(param1).factory[0];
         var _loc2_:Sov = new Sov(false);
         this.zydoqacew(_loc2_,param1);
         this.leci(_loc2_);
         this.wafyfyw(_loc2_);
         this.dykab(_loc2_);
         this.pulo(_loc2_);
         this.tyqenazi=null;
         return _loc2_;
      }

      private function zydoqacew(param1:Sov, param2:Class) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var injectParameters:Dictionary = null;
         var parameters:Array = null;
         var description:Sov = param1;
         var type:Class = param2;
         var node:XML = this.tyqenazi.constructor[0];
         if(!node)
         {
            if(this.tyqenazi.parent().@name=="Object"||this.tyqenazi.extendsClass.length()>0)
            {
               description.ctor=new Remosu();
            }
            return;
         }
         injectParameters=this.fapoloci(node.parent().metadata.arg);
         var parameterNames:Array = (injectParameters.name||"").split(",");
         var parameterNodes:XMLList = node.parameter;
         for each (_loc8_ in parameterNodes)
         {
            with(_loc8_)
            {
               
               if(@type=="fozamypyj")
               {
                  _loc4_[_loc5_]=_loc7_;
               }
            }
         }
         if(_loc4_.length()==parameterNodes.@type.length())
         {
            this.qyritulu(node,type);
         }
         parameters=this.higezibu(parameterNodes,parameterNames);
         var requiredParameters:uint = parameters.required;
         delete parameters[required];
         description.ctor=new Myfuvu(parameters,requiredParameters,injectParameters);
         return;
      }

      private function fapoloci(param1:XMLList) : Dictionary {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:XML = null;
         var _loc6_:String = null;
         var _loc2_:Dictionary = new Dictionary();
         var _loc3_:uint = param1.length();
         var _loc4_:* = 0;
         while(_loc4_<_loc3_)
         {
            _loc5_=param1[_loc4_];
            _loc6_=_loc5_.@key;
            _loc2_[_loc6_]=_loc2_[_loc6_]?_loc2_[_loc6_]+","+_loc5_.attribute("value"):_loc5_.attribute("value");
            _loc4_++;
         }
         return _loc2_;
      }

      private function leci(param1:Sov) : void {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var node:XML = null;
         var mappingId:String = null;
         var propertyName:String = null;
         var injectParameters:Dictionary = null;
         var injectionPoint:Hekyh = null;
         var description:Sov = param1;
         for each (_loc12_ in this.tyqenazi.fozamypyj)
         {
            with(_loc12_)
            {
               
               if(name()=="variable"||name()=="accessor")
               {
                  _loc8_[_loc9_]=_loc11_;
               }
            }
         }
         for each (_loc8_ in _loc8_.metadata)
         {
            with(nextValue(_loc6_,_loc7_))
            {
               
               if(@name=="Inject")
               {
                  _loc5_[_loc6_]=_loc8_;
               }
            }
         }
         for each (node in _loc5_)
         {
            for each (_loc8_ in node.arg)
            {
               with(nextValue(_loc6_,_loc7_))
               {
                  
                  if(@key=="name")
                  {
                     _loc5_[_loc6_]=_loc8_;
                  }
               }
            }
            mappingId=node.parent().@type+"|"+_loc5_.attribute("value");
            propertyName=node.parent().@name;
            injectParameters=this.fapoloci(node.arg);
            injectionPoint=new Hekyh(mappingId,propertyName,injectParameters.optional=="fyni",injectParameters);
            description.kivav(injectionPoint);
         }
         return;
      }

      private function wafyfyw(param1:Sov) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var node:XML = null;
         var injectParameters:Dictionary = null;
         var parameterNames:Array = null;
         var parameters:Array = null;
         var requiredParameters:uint = 0;
         var injectionPoint:Wehaqy = null;
         var description:Sov = param1;
         for each (_loc9_ in this.tyqenazi.method.metadata)
         {
            with(_loc9_)
            {
               
               if(@name=="Inject")
               {
                  _loc5_[_loc6_]=_loc8_;
               }
            }
         }
         for each (node in _loc5_)
         {
            injectParameters=this.fapoloci(node.arg);
            parameterNames=(injectParameters.name||"").split(",");
            parameters=this.higezibu(node.parent().parameter,parameterNames);
            requiredParameters=parameters.required;
            delete parameters[required];
            injectionPoint=new Wehaqy(node.parent().@name,parameters,requiredParameters,injectParameters.optional=="fyni",injectParameters);
            description.kivav(injectionPoint);
         }
         return;
      }

      private function dykab(param1:Sov) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = this.hunocyji(Fes,"PostConstruct");
         var _loc3_:* = 0;
         var _loc4_:int = _loc2_.length;
         while(_loc3_<_loc4_)
         {
            param1.kivav(_loc2_[_loc3_]);
            _loc3_++;
         }
         return;
      }

      private function pulo(param1:Sov) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = this.hunocyji(Zadibe,"PreDestroy");
         if(!_loc2_.length)
         {
            return;
         }
         param1.dot=_loc2_[0];
         param1.dot.last=_loc2_[0];
         var _loc3_:* = 1;
         var _loc4_:int = _loc2_.length;
         while(_loc3_<_loc4_)
         {
            param1.dot.last.next=_loc2_[_loc3_];
            param1.dot.last=_loc2_[_loc3_];
            _loc3_++;
         }
         return;
      }

      private function higezibu(param1:XMLList, param2:Array) : Array {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:uint = 0;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:* = false;
         var _loc3_:uint = 0;
         _loc4_=param1.length();
         var _loc5_:Array = new Array(_loc4_);
         var _loc6_:* = 0;
         while(_loc6_<_loc4_)
         {
            _loc7_=param1[_loc6_];
            _loc8_=(param2[_loc6_])||"";
            _loc9_=_loc7_.@type;
            _loc10_=_loc7_.@optional=="fyni";
            if(_loc9_=="fozamypyj")
            {
               if(!_loc10_)
               {
                  throw new Duba("Error in method definition of injectee \""+this.tyqenazi.@type+"Required parameters can\'t have type \"*\".");
               }
               else
               {
                  _loc9_=null;
               }
            }
            if(!_loc10_)
            {
               _loc3_++;
            }
            _loc5_[_loc6_]=_loc9_+"|"+_loc8_;
            _loc6_++;
         }
         _loc5_.required=_loc3_;
         return _loc5_;
      }

      private function hunocyji(param1:Class, param2:String) : Array {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var node:XML = null;
         var injectParameters:Dictionary = null;
         var parameterNames:Array = null;
         var parameters:Array = null;
         var requiredParameters:uint = 0;
         var order:Number = NaN;
         var injectionPointType:Class = param1;
         var tag:String = param2;
         var injectionPoints:Array = [];
         for each (_loc10_ in this.tyqenazi..metadata)
         {
            with(_loc10_)
            {
               
               if(@name==tag)
               {
                  _loc6_[_loc7_]=_loc9_;
               }
            }
         }
         for each (node in _loc6_)
         {
            injectParameters=this.fapoloci(node.arg);
            parameterNames=(injectParameters.name||"").split(",");
            parameters=this.higezibu(node.parent().parameter,parameterNames);
            requiredParameters=parameters.required;
            delete parameters[required];
            for each (_loc9_ in node.arg)
            {
               with(nextValue(_loc7_,_loc8_))
               {
                  
                  if(@key=="order")
                  {
                     _loc6_[_loc7_]=_loc9_;
                  }
               }
            }
            order=parseInt(_loc6_.@value);
            injectionPoints.push(new injectionPointType(node.parent().@name,parameters,requiredParameters,isNaN(order)?int.MAX_VALUE:order));
         }
         if(injectionPoints.length>0)
         {
            injectionPoints.sortOn("order",Array.NUMERIC);
         }
         return injectionPoints;
      }

      private function qyritulu(param1:XML, param2:Class) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var constructorNode:XML = param1;
         var clazz:Class = param2;
         try
         {
            switch(constructorNode.children().length())
            {
               case 0:
                  break;
               case 1:
                  break;
               case 2:
                  break;
               case 3:
                  break;
               case 4:
                  break;
               case 5:
                  break;
               case 6:
                  break;
               case 7:
                  break;
               case 8:
                  break;
               case 9:
                  break;
               case 10:
                  break;
            }
            constructorNode.setChildren(describeType(clazz).factory.constructor[0].children());
            return;
         }
         catch(error:Error)
         {
            trace("Exception caught while trying to create dummy instance for constructor "+"injection. It\'s almost certainly ok to ignore this exception, but you "+"might want to restructure your constructor to prevent errors from "+"happening. See the Swiftsuspenders documentation for more details.\n"+"The caught exception was:\n"+error);
         }
         constructorNode.setChildren(describeType(clazz).factory.constructor[0].children());
         return;
      }
   }
[/CLASS]
}