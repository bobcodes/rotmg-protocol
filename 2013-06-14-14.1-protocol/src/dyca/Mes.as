package dyca
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import _-Ci.SsInternal;
   import flash.system.ApplicationDomain;
   import vibajiku.Qitav;
   import nizyfu.Musaj;
   import gunyketa.Dice;
   import flash.utils.getQualifiedClassName;
   import gunyketa.Nulacuge;
   import tateqyba.Lygape;
   import bud.Pote;
   import holije.Garyfajij;
   import bud.Rekify;
   import bud.Wil;
   import tateqyba.Kuzazaj;
   import holije.Kij;
   import holije.Garuq;
   import flash.utils.getDefinitionByName;
   import holije.Sufa;
   import bud.Poq;
   import avmplus.DescribeTypeJSON;
   import nizyfu.Qoqyz;
   import nizyfu.Pobil;

   use namespace SsInternal;

   public class Mes extends EventDispatcher
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Mes() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.zenupi=new Dictionary();
         this.duca=new Dictionary();
         this.zysow=new Dictionary();
         this.benobepa=new Dictionary();
         try
         {
            this.hegaqodyp=DescribeTypeJSON.available?new Qoqyz():new Pobil();
         }
         catch(e:Error)
         {
            if(!(_loc3_&&(this)))
            {
               hegaqodyp=new Pobil();
            }
         }
         this.lubeteryd=new Qitav(this.hegaqodyp,gudy);
         this.lydowi=ApplicationDomain.currentDomain;
         return;
      }

      private static var gudy:Dictionary = new Dictionary(true);

      SsInternal  static function maw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         gudy=new Dictionary(true);
         return;
      }

      private var niny:Mes;

      private var lydowi:ApplicationDomain;

      private var lubeteryd:Qitav;

      private var zenupi:Dictionary;

      private var duca:Dictionary;

      private var zysow:Dictionary;

      private var benobepa:Dictionary;

      private var hegaqodyp:Musaj;

      SsInternal const lylug:Dictionary = new Dictionary();

      public function map(param1:Class, param2:String="") : Dice {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         return (this.zenupi[_loc3_])||(this.gykufik(param1,param2,_loc3_));
      }

      public function ricelira(param1:Class, param2:String="") : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         var _loc4_:Dice = this.zenupi[_loc3_];
         if((_loc4_)&&(_loc4_.furerad))
         {
            throw new Sybe("Can\'t unmap a sealed mapping");
         }
         else
         {
            if(!_loc4_)
            {
               throw new Sybe("Error while removing an injector mapping: "+"No mapping defined for dependency "+_loc3_);
            }
            else
            {
               _loc4_.bilas().destroy();
               GlobalNotificationActionte this.zenupi[[_loc3_]];
               GlobalNotificationActionte this.lylug[[_loc3_]];
               return;
            }
         }
      }

      public function fufeg(param1:Class, param2:String="") : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return !(this.bilas(getQualifiedClassName(param1)+"|"+param2)==null);
      }

      public function koky(param1:Class, param2:String="") : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return !(this.lylug[getQualifiedClassName(param1)+"|"+param2]==null);
      }

      public function pesum(param1:Class, param2:String="") : Dice {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         var _loc4_:Dice = this.zenupi[_loc3_];
         if(!_loc4_)
         {
            throw new Lygape("Error while retrieving an injector mapping: "+"No mapping defined for dependency "+_loc3_);
         }
         else
         {
            return _loc4_;
         }
      }

      public function henihovuz(param1:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = this.hegaqodyp.luzeq(param1);
         this.giduwufu(param1,_loc2_,this.lubeteryd.zyly(_loc2_));
         return;
      }

      public function getInstance(param1:Class, param2:String="", param3:Class=null) : * {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         var _loc6_:Pote = null;
         _loc4_=getQualifiedClassName(param1)+"|"+param2;
         var _loc5_:Garyfajij = this.bilas(_loc4_,false);
         if(_loc5_)
         {
            _loc6_=this.lubeteryd.zyly(param1).ctor;
            return _loc5_.apply(param3,this,_loc6_?_loc6_.injectRotmgParameters:null);
         }
         if(param2)
         {
            throw new Lygape("No mapping found for request "+_loc4_+". getInstance only creates an unmapped instance if no name is given.");
         }
         else
         {
            return this.sagovicot(param1);
         }
      }

      public function tecaw(param1:Object) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Class = null;
         if(!param1)
         {
            return;
         }
         _loc2_=this.hegaqodyp.luzeq(param1);
         var _loc3_:Rekify = this.pykabeba(_loc2_);
         var _loc4_:Wil = _loc3_.doti;
         while(_loc4_)
         {
            _loc4_.applyInjection(param1,_loc2_,this);
            _loc4_=Wil(_loc4_.next);
         }
         return;
      }

      public function rahy() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Dice = null;
         var _loc2_:Object = null;
         for each (_loc1_ in this.zenupi)
         {
            _loc1_.bilas().destroy();
         }
         for each (_loc2_ in this.benobepa)
         {
            this.tecaw(_loc2_);
         }
         this.zenupi=new Dictionary();
         this.duca=new Dictionary();
         this.zysow=new Dictionary();
         this.benobepa=new Dictionary();
         return;
      }

      public function dybi(param1:ApplicationDomain=null) : Mes {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Mes = new Mes();
         _loc2_.gezulo=(param1)||(this.gezulo);
         _loc2_.siroj=this;
         return _loc2_;
      }

      public function set siroj(param1:Mes) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.niny=param1;
         return;
      }

      public function get siroj() : Mes {
         return this.niny;
      }

      public function set gezulo(param1:ApplicationDomain) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lydowi=(param1)||(ApplicationDomain.currentDomain);
         return;
      }

      public function get gezulo() : ApplicationDomain {
         return this.lydowi;
      }

      public function suq(param1:Class, param2:Rekify) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.lubeteryd.wojuloc(param1,param2);
         return;
      }

      public function pykabeba(param1:Class) : Rekify {
         return this.hegaqodyp.wifanymor(param1);
      }

      SsInternal function sagovicot(param1:Class) : Object {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Rekify = this.lubeteryd.zyly(param1);
         if(!_loc2_.ctor)
         {
            throw new Kuzazaj("Can\'t instantiate interface "+getQualifiedClassName(param1));
         }
         else
         {
            _loc3_=_loc2_.ctor.createInstance(param1,this);
            this.giduwufu(_loc3_,param1,_loc2_);
            return _loc3_;
         }
      }

      SsInternal function bilas(param1:String, param2:Boolean=true) : Garyfajij {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Garyfajij = null;
         var _loc5_:Garyfajij = null;
         var _loc4_:Mes = this;
         while(_loc4_)
         {
            _loc5_=_loc4_.lylug[param1];
            if(_loc5_)
            {
               if(_loc5_ is Kij)
               {
                  _loc3_=_loc5_;
                  _loc4_=_loc4_.siroj;
                  continue;
               }
               if(_loc5_ is Garuq&&!(_loc4_===this))
               {
                  _loc4_=_loc4_.siroj;
                  continue;
               }
               return _loc5_;
            }
            _loc4_=_loc4_.siroj;
         }
         if(_loc3_)
         {
            return _loc3_;
         }
         return param2?this.notibefi(param1):null;
      }

      SsInternal function notibefi(param1:String) : Garyfajij {
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
         definition=this.lydowi.hasDefinition(typeName)?this.lydowi.getDefinition(typeName):getDefinitionByName(typeName);
         if(!definition||!(definition is Class))
         {
            return null;
         }
         var type:Class = Class(definition);
         var description:Rekify = this.lubeteryd.zyly(type);
         if(!description.ctor)
         {
            return null;
         }
         return this.zysow[type]=(this.zysow[type])||(new Sufa(type));
      }

      private function gykufik(param1:Class, param2:String, param3:String) : Dice {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Dice = null;
         if(this.duca[param3])
         {
            throw new Sybe("Can\'t change a mapping from inside a listener to it\'s creation event");
         }
         else
         {
            this.duca[param3]=true;
            _loc4_=new Dice(this,param1,param2,param3);
            this.zenupi[param3]=_loc4_;
            _loc5_=_loc4_.cyje();
            GlobalNotificationActionte this.duca[[param3]];
            _loc4_.joju(_loc5_);
            return _loc4_;
         }
      }

      private function giduwufu(param1:Object, param2:Class, param3:Rekify) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Poq = param3.injectionPoints;
         while(_loc4_)
         {
            _loc4_.applyInjection(param1,param2,this);
            _loc4_=_loc4_.next;
         }
         if(param3.doti)
         {
            this.benobepa[param1]=param1;
         }
         return;
      }
   }

}