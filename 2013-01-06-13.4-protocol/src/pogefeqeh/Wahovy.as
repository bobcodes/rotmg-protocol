package pogefeqeh
{
[CLASS50]   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import _-xW.SsInternal;
   import flash.system.ApplicationDomain;
   import tapago.Kunozip;
   import kisej.Syjyk;
   import nynydubuf.Wazuqud;
   import flash.utils.getQualifiedClassName;
   import nynydubuf.Gysy;
   import keved.Nenehodo;
   import cukopumin.Myfuvu;
   import bus.Nygeles;
   import cukopumin.Sov;
   import cukopumin.Zadibe;
   import keved.Hohilagy;
   import bus.Komy;
   import bus.Depus;
   import flash.utils.getDefinitionByName;
   import bus.Vamypytum;
   import cukopumin.Gak;
   import avmplus.DescribeTypeJSON;
   import kisej.Rejebi;
   import kisej.Metunyjy;

   use namespace SsInternal;

   public class Wahovy extends EventDispatcher
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wahovy() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.geqas=new Dictionary();
         this.zufobopy=new Dictionary();
         this.bejanek=new Dictionary();
         this.fuduf=new Dictionary();
         try
         {
            this.javo=DescribeTypeJSON.available?new Rejebi():new Metunyjy();
         }
         catch(e:Error)
         {
            if(_loc3_||(_loc1_))
            {
               javo=new Metunyjy();
            }
         }
         this.gazabigy=new Kunozip(this.javo,bonid);
         this.taf=ApplicationDomain.currentDomain;
         return;
      }

      private static var bonid:Dictionary = new Dictionary(true);

      SsInternal  static function sufenava() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         bonid=new Dictionary(true);
         return;
      }

      private var wosekod:Wahovy;

      private var taf:ApplicationDomain;

      private var gazabigy:Kunozip;

      private var geqas:Dictionary;

      private var zufobopy:Dictionary;

      private var bejanek:Dictionary;

      private var fuduf:Dictionary;

      private var javo:Syjyk;

      SsInternal const favaqo:Dictionary = new Dictionary();

      public function map(param1:Class, param2:String="") : Wazuqud {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         return (this.geqas[_loc3_])||(this.lole(param1,param2,_loc3_));
      }

      public function gihacas(param1:Class, param2:String="") : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         var _loc4_:Wazuqud = this.geqas[_loc3_];
         if((_loc4_)&&(_loc4_.kenemicon))
         {
            throw new Duba("Can\'t unmap a sealed mapping");
         }
         else
         {
            if(!_loc4_)
            {
               throw new Duba("Error while removing an injector mapping: "+"No mapping defined for dependency "+_loc3_);
            }
            else
            {
               _loc4_.hukos().destroy();
               delete this.geqas[[_loc3_]];
               delete this.favaqo[[_loc3_]];
               return;
            }
         }
      }

      public function qyq(param1:Class, param2:String="") : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return !(this.hukos(getQualifiedClassName(param1)+"|"+param2)==null);
      }

      public function kelovohiv(param1:Class, param2:String="") : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return !(this.favaqo[getQualifiedClassName(param1)+"|"+param2]==null);
      }

      public function tum(param1:Class, param2:String="") : Wazuqud {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         var _loc4_:Wazuqud = this.geqas[_loc3_];
         if(!_loc4_)
         {
            throw new Nenehodo("Error while retrieving an injector mapping: "+"No mapping defined for dependency "+_loc3_);
         }
         else
         {
            return _loc4_;
         }
      }

      public function banubeq(param1:Object) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Class = this.javo.gemydejoc(param1);
         this.nanisoh(param1,_loc2_,this.gazabigy.diqakycy(_loc2_));
         return;
      }

      public function getInstance(param1:Class, param2:String="", param3:Class=null) : * {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         var _loc6_:Myfuvu = null;
         _loc4_=getQualifiedClassName(param1)+"|"+param2;
         var _loc5_:Nygeles = this.hukos(_loc4_,false);
         if(_loc5_)
         {
            _loc6_=this.gazabigy.diqakycy(param1).ctor;
            return _loc5_.apply(param3,this,_loc6_?_loc6_.injectParameters:null);
         }
         if(param2)
         {
            throw new Nenehodo("No mapping found for request "+_loc4_+". getInstance only creates an unmapped instance if no name is given.");
         }
         else
         {
            return this.gin(param1);
         }
      }

      public function qyzawyhy(param1:Object) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Class = null;
         if(!param1)
         {
            return;
         }
         _loc2_=this.javo.gemydejoc(param1);
         var _loc3_:Sov = this.niqakaq(_loc2_);
         var _loc4_:Zadibe = _loc3_.dot;
         while(_loc4_)
         {
            _loc4_.applyInjection(param1,_loc2_,this);
            _loc4_=Zadibe(_loc4_.next);
         }
         return;
      }

      public function sapolo() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Wazuqud = null;
         var _loc2_:Object = null;
         for each (_loc1_ in this.geqas)
         {
            _loc1_.hukos().destroy();
         }
         for each (_loc2_ in this.fuduf)
         {
            this.qyzawyhy(_loc2_);
         }
         this.geqas=new Dictionary();
         this.zufobopy=new Dictionary();
         this.bejanek=new Dictionary();
         this.fuduf=new Dictionary();
         return;
      }

      public function zawan(param1:ApplicationDomain=null) : Wahovy {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Wahovy = new Wahovy();
         _loc2_.gucohah=(param1)||(this.gucohah);
         _loc2_.waboka=this;
         return _loc2_;
      }

      public function set waboka(param1:Wahovy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wosekod=param1;
         return;
      }

      public function get waboka() : Wahovy {
         return this.wosekod;
      }

      public function set gucohah(param1:ApplicationDomain) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.taf=(param1)||(ApplicationDomain.currentDomain);
         return;
      }

      public function get gucohah() : ApplicationDomain {
         return this.taf;
      }

      public function rumupuni(param1:Class, param2:Sov) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.gazabigy.rijykaci(param1,param2);
         return;
      }

      public function niqakaq(param1:Class) : Sov {
         return this.javo.dujigig(param1);
      }

      SsInternal function gin(param1:Class) : Object {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sov = this.gazabigy.diqakycy(param1);
         if(!_loc2_.ctor)
         {
            throw new Hohilagy("Can\'t instantiate interface "+getQualifiedClassName(param1));
         }
         else
         {
            _loc3_=_loc2_.ctor.createInstance(param1,this);
            this.nanisoh(_loc3_,param1,_loc2_);
            return _loc3_;
         }
      }

      SsInternal function hukos(param1:String, param2:Boolean=true) : Nygeles {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Nygeles = null;
         var _loc5_:Nygeles = null;
         var _loc4_:Wahovy = this;
         while(_loc4_)
         {
            _loc5_=_loc4_.favaqo[param1];
            if(_loc5_)
            {
               if(_loc5_ is Komy)
               {
                  _loc3_=_loc5_;
                  _loc4_=_loc4_.waboka;
                  continue;
               }
               if(_loc5_ is Depus&&!(_loc4_===this))
               {
                  _loc4_=_loc4_.waboka;
                  continue;
               }
               return _loc5_;
            }
            _loc4_=_loc4_.waboka;
         }
         if(_loc3_)
         {
            return _loc3_;
         }
         return param2?this.nena(param1):null;
      }

      SsInternal function nena(param1:String) : Nygeles {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var parts:Array = null;
         var definition:Object = null;
         var mappingId:String = param1;
         if(mappingId==="String|")
         {
            return null;
         }
         parts=mappingId.split("|");
         var name:String = parts.pop();
         if(name.length!==0)
         {
            return null;
         }
         var typeName:String = parts.pop();
         definition=this.taf.hasDefinition(typeName)?this.taf.getDefinition(typeName):getDefinitionByName(typeName);
         if(!definition||!(definition is Class))
         {
            return null;
         }
         var type:Class = Class(definition);
         var description:Sov = this.gazabigy.diqakycy(type);
         if(!description.ctor)
         {
            return null;
         }
         return this.bejanek[type]=(this.bejanek[type])||(new Vamypytum(type));
      }

      private function lole(param1:Class, param2:String, param3:String) : Wazuqud {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Wazuqud = null;
         if(this.zufobopy[param3])
         {
            throw new Duba("Can\'t change a mapping from inside a listener to it\'s creation event");
         }
         else
         {
            this.zufobopy[param3]=true;
            _loc4_=new Wazuqud(this,param1,param2,param3);
            this.geqas[param3]=_loc4_;
            _loc5_=_loc4_.cusykaqem();
            delete this.zufobopy[[param3]];
            _loc4_.wucere(_loc5_);
            return _loc4_;
         }
      }

      private function nanisoh(param1:Object, param2:Class, param3:Sov) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Gak = param3.injectionPoints;
         while(_loc4_)
         {
            _loc4_.applyInjection(param1,param2,this);
            _loc4_=_loc4_.next;
         }
         if(param3.dot)
         {
            this.fuduf[param1]=param1;
         }
         return;
      }
   }
[/CLASS]
}