package nizyfu
{
   import flash.utils.describeType;
   import bud.Rekify;
   import flash.utils.Dictionary;
   import bud.Ryrumoq;
   import bud.Pote;
   import bud.Qivysi;
   import bud.Nud;
   import bud.Cys;
   import bud.Wil;
   import dyca.Sybe;


   public class Pobil extends Hamufavu implements Musaj
   {
      public function Pobil() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var fab:XML;

      public function wedeju(param1:Class, param2:Class) : Boolean {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var type:Class = param1;
         var superType:Class = param2;
         if(type==superType)
         {
            return true;
         }
         var factoryDescription:XML = describeType(type).factory[0];
         return factoryDescription.children().(name()=="implementsInterface"||name()=="extendsClass").(attribute("type")==getQualifiedClassName(superType)).length()>0;
      }

      public function wifanymor(param1:Class) : Rekify {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.fab=describeType(param1).factory[0];
         var _loc2_:Rekify = new Rekify(false);
         this.mawebej(_loc2_,param1);
         this.harejyla(_loc2_);
         this.syjityzoc(_loc2_);
         this.kuvocy(_loc2_);
         this.kuvyriky(_loc2_);
         this.fab=null;
         return _loc2_;
      }

      private function mawebej(param1:Rekify, param2:Class) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var injectRotmgParameters:Dictionary = null;
         var RotmgParameters:Array = null;
         var description:Rekify = param1;
         var type:Class = param2;
         var node:XML = this.fab.constructor[0];
         if(!node)
         {
            if(this.fab.parent().@name=="Object"||this.fab.extendsClass.length()>0)
            {
               description.ctor=new Ryrumoq();
            }
            return;
         }
         injectRotmgParameters=this.cebugeta(node.parent().metadata.arg);
         var parameterNames:Array = (injectRotmgParameters.name||"").split(",");
         var parameterNodes:XMLList = node.parameter;
         if(parameterNodes.(@type=="wepynyji").length()==parameterNodes.@type.length())
         {
            this.zusyju(node,type);
         }
         RotmgParameters=this.luqalunej(parameterNodes,parameterNames);
         var requiredRotmgParameters:uint = RotmgParameters.required;
         delete RotmgParameters[required];
         description.ctor=new Pote(RotmgParameters,requiredRotmgParameters,injectRotmgParameters);
         return;
      }

      private function cebugeta(param1:XMLList) : Dictionary {
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

      private function harejyla(param1:Rekify) : void {
         var [OFS3]_loc13_:* = [/OFS]false;
         var [OFS5]_loc14_:* = [/OFS]true;
         var [OFS18]node[/OFS]:XML[OFS18] = [/OFS][OFS15]null[/OFS];
         var [OFS24]mappingId[/OFS]:String[OFS24] = [/OFS][OFS22]null[/OFS];
         var [OFS30]propertyName[/OFS]:String[OFS30] = [/OFS][OFS28]null[/OFS];
         var [OFS37]injectRotmgParameters[/OFS]:Dictionary[OFS37] = [/OFS][OFS34]null[/OFS];
         var [OFS45]injectionPoint[/OFS]:Qivysi[OFS45] = [/OFS][OFS41]null[/OFS];
         var [OFS50]description[/OFS]:Rekify[OFS50] = [/OFS][OFS49]param1[/OFS];
         for each (node in this.[OFS64]fab[/OFS].[OFS67]wepynyji[/OFS].([OFS103]name[/OFS][OFS103]([/OFS][OFS103])[/OFS][OFS110]==[/OFS][OFS107]"variable"[/OFS]||[OFS120]name[/OFS][OFS120]([/OFS][OFS120])[/OFS][OFS127]==[/OFS][OFS124]"accessor"[/OFS]).[OFS161]metadata[/OFS].([OFS193]@name[/OFS][OFS199]==[/OFS][OFS196]"Inject"[/OFS]))
         {
            for each (_loc8_ in [OFS274]node[/OFS].[OFS276]arg[/OFS])
            {
               [OFS307]with([/OFS]nextValue([OFS298]_loc6_[/OFS],[OFS296]_loc7_[/OFS])[OFS307])
               {
                  [/OFS]
                  if([OFS308]@key[/OFS][OFS313]==[/OFS][OFS311]"name"[/OFS])
                  {
                     [OFS318]_loc5_[/OFS][[OFS320]_loc6_[/OFS]][OFS324]=[/OFS][OFS322]_loc8_[/OFS];
                  }
                  [OFS327]}[/OFS]
               }
               [OFS356]mappingId[/OFS][OFS356]=[/OFS][OFS255]node[/OFS].[OFS257]parent[/OFS][OFS257]([/OFS][OFS257])[/OFS].[OFS261]@type[/OFS][OFS267]+[/OFS][OFS264]"|"[/OFS][OFS354]+[/OFS][OFS343]_loc5_[/OFS].[OFS350]attribute[/OFS][OFS350]([/OFS][OFS347]"value"[/OFS][OFS350])[/OFS];
               [OFS372]propertyName[/OFS][OFS372]=[/OFS][OFS362]node[/OFS].[OFS364]parent[/OFS][OFS364]([/OFS][OFS364])[/OFS].[OFS368]@name[/OFS];
               [OFS390]injectRotmgParameters[/OFS][OFS390]=[/OFS]this.[OFS384]cebugeta[/OFS][OFS384]([/OFS][OFS379]node[/OFS].[OFS381]arg[/OFS][OFS384])[/OFS];
               [OFS427]injectionPoint[/OFS][OFS427]=[/OFS][OFS420]new [/OFS][OFS420]Qivysi[/OFS][OFS420]([/OFS][OFS399]mappingId[/OFS],[OFS403]propertyName[/OFS],[OFS407]injectRotmgParameters[/OFS].[OFS409]optional[/OFS][OFS415]==[/OFS][OFS412]"zefifi"[/OFS],[OFS418]injectRotmgParameters[/OFS][OFS420])[/OFS];
               [OFS431]description[/OFS].[OFS437]silanito[/OFS][OFS437]([/OFS][OFS435]injectionPoint[/OFS][OFS437])[/OFS];
            }
            [OFS452]return[/OFS];
      }

      private function syjityzoc(param1:Rekify) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var node:XML = null;
         var injectRotmgParameters:Dictionary = null;
         var parameterNames:Array = null;
         var RotmgParameters:Array = null;
         var requiredRotmgParameters:uint = 0;
         var injectionPoint:Nud = null;
         var description:Rekify = param1;
         for each (node in this.fab.method.metadata.(@name=="Inject"))
         {
            injectRotmgParameters=this.cebugeta(node.arg);
            parameterNames=(injectRotmgParameters.name||"").split(",");
            RotmgParameters=this.luqalunej(node.parent().parameter,parameterNames);
            requiredRotmgParameters=RotmgParameters.required;
            delete RotmgParameters[required];
            injectionPoint=new Nud(node.parent().@name,RotmgParameters,requiredRotmgParameters,injectRotmgParameters.optional=="zefifi",injectRotmgParameters);
            description.silanito(injectionPoint);
         }
         return;
      }

      private function kuvocy(param1:Rekify) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = this.sadaqoci(Cys,"PostConstruct");
         var _loc3_:* = 0;
         var _loc4_:int = _loc2_.length;
         while(_loc3_<_loc4_)
         {
            param1.silanito(_loc2_[_loc3_]);
            _loc3_++;
         }
         return;
      }

      private function kuvyriky(param1:Rekify) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Array = this.sadaqoci(Wil,"PreDestroy");
         if(!_loc2_.length)
         {
            return;
         }
         param1.doti=_loc2_[0];
         param1.doti.last=_loc2_[0];
         var _loc3_:* = 1;
         var _loc4_:int = _loc2_.length;
         while(_loc3_<_loc4_)
         {
            param1.doti.last.next=_loc2_[_loc3_];
            param1.doti.last=_loc2_[_loc3_];
            _loc3_++;
         }
         return;
      }

      private function luqalunej(param1:XMLList, param2:Array) : Array {
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
            _loc10_=_loc7_.@optional=="zefifi";
            if(_loc9_=="wepynyji")
            {
               if(!_loc10_)
               {
                  throw new Sybe("Error in method definition of injectee \""+this.fab.@type+"Required RotmgParameters can\'t have type \"*\".");
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

      private function sadaqoci(param1:Class, param2:String) : Array {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var node:XML = null;
         var injectRotmgParameters:Dictionary = null;
         var parameterNames:Array = null;
         var RotmgParameters:Array = null;
         var requiredRotmgParameters:uint = 0;
         var order:Number = NaN;
         var injectionPointType:Class = param1;
         var tag:String = param2;
         var injectionPoints:Array = [];
         for each (node in this.fab..metadata.(@name==tag))
         {
            injectRotmgParameters=this.cebugeta(node.arg);
            parameterNames=(injectRotmgParameters.name||"").split(",");
            RotmgParameters=this.luqalunej(node.parent().parameter,parameterNames);
            requiredRotmgParameters=RotmgParameters.required;
            delete RotmgParameters[required];
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
            injectionPoints.push(new injectionPointType(node.parent().@name,RotmgParameters,requiredRotmgParameters,isNaN(order)?int.MAX_VALUE:order));
         }
         if(injectionPoints.length>0)
         {
            injectionPoints.sortOn("order",Array.NUMERIC);
         }
         return injectionPoints;
      }

      private function zusyju(param1:XML, param2:Class) : void {
         var [OFS2]_loc5_:* = [/OFS]true;
         var [OFS4]_loc6_:* = [/OFS]false;
         var [OFS15]constructorNode[/OFS]:XML[OFS15] = [/OFS][OFS14]param1[/OFS];
         var [OFS20]clazz[/OFS]:Class[OFS20] = [/OFS][OFS19]param2[/OFS];
         try
         {
            switch([OFS24]constructorNode[/OFS].[OFS26]children[/OFS][OFS26]([/OFS][OFS26])[/OFS].[OFS30]length[/OFS][OFS30]([/OFS][OFS30])[/OFS])
            {
               case [OFS36]0[/OFS]:
                  break;
               case [OFS246]1[/OFS]:
                  break;
               case [OFS260]2[/OFS]:
                  break;
               case [OFS274]3[/OFS]:
                  break;
               case [OFS288]4[/OFS]:
                  break;
               case [OFS302]5[/OFS]:
                  break;
               case [OFS316]6[/OFS]:
                  break;
               case [OFS330]7[/OFS]:
                  break;
               case [OFS344]8[/OFS]:
                  break;
               case [OFS358]9[/OFS]:
                  break;
               case [OFS372]10[/OFS]:
                  break;
            }
            [OFS488]constructorNode[/OFS].[OFS516]setChildren[/OFS][OFS516]([/OFS][OFS497]describeType[/OFS][OFS497]([/OFS][OFS495]clazz[/OFS][OFS497])[/OFS].[OFS501]factory[/OFS].[OFS504]constructor[/OFS][[OFS507]0[/OFS]].[OFS512]children[/OFS][OFS512]([/OFS][OFS512])[/OFS][OFS516])[/OFS];
            [OFS520]return[/OFS];
         }
         catch(error:Error)
         {
            [OFS479]trace[/OFS][OFS479]([/OFS][OFS452]"Exception caught while trying to create dummy instance for constructor "[/OFS][OFS460]+[/OFS][OFS456]"injection. It\'s almost certainly ok to ignore this exception, but you "[/OFS][OFS464]+[/OFS][OFS461]"might want to restructure your constructor to prevent errors from "[/OFS][OFS468]+[/OFS][OFS465]"happening. See the Swiftsuspenders documentation for more details.\n"[/OFS][OFS473]+[/OFS][OFS469]"The caught exception was:\n"[/OFS][OFS478]+[/OFS][OFS476]error[/OFS][OFS479])[/OFS];
         }
         [OFS488]constructorNode[/OFS].[OFS516]setChildren[/OFS][OFS516]([/OFS][OFS497]describeType[/OFS][OFS497]([/OFS][OFS495]clazz[/OFS][OFS497])[/OFS].[OFS501]factory[/OFS].[OFS504]constructor[/OFS][[OFS507]0[/OFS]].[OFS512]children[/OFS][OFS512]([/OFS][OFS512])[/OFS][OFS516])[/OFS];
         [OFS520]return[/OFS];
      }
   }

}