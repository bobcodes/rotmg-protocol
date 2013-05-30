package kyco
{
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   //import _-1Wk.SsInternal;
   import flash.system.ApplicationDomain;
   import veb.Qiroru;
   import cyqef.Naseqigos;
   import bokojavidu.Rimot;
   import flash.utils.getQualifiedClassName;
   import bokojavidu.Cejuh;
   import niquhuwuj.Qiduqez;
   import jyqiqagog.Cyrad;
   import bolihe.Cuwively;
   import jyqiqagog.Wubelet;
   import jyqiqagog.Nytiq;
   import niquhuwuj.Rizom;
   import bolihe.Mokajak;
   import bolihe.Pomyw;
   import flash.utils.getDefinitionByName;
   import bolihe.Quqi;
   import jyqiqagog.Cotaras;
   import avmplus.DescribeTypeJSON;
   import cyqef.Danono;
   import cyqef.Nocebazy;

   use namespace SsInternal;

   public class Nun extends EventDispatcher
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Nun() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.qydyd=new Dictionary();
         this.sepefili=new Dictionary();
         this.vyduvog=new Dictionary();
         this.nyme=new Dictionary();
         try
         {
            this.wila=DescribeTypeJSON.available?new Danono():new Nocebazy();
         }
         catch(e:Error)
         {
            if(_loc3_)
            {
               wila=new Nocebazy();
            }
         }
         this.kejehapi=new Qiroru(this.wila,jynijum);
         this.pohofydi=ApplicationDomain.currentDomain;
         return;
      }

      private static var jynijum:Dictionary = new Dictionary(true);

      SsInternal  static function sac() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         jynijum=new Dictionary(true);
         return;
      }

      private var dumadoke:Nun;

      private var pohofydi:ApplicationDomain;

      private var kejehapi:Qiroru;

      private var qydyd:Dictionary;

      private var sepefili:Dictionary;

      private var vyduvog:Dictionary;

      private var nyme:Dictionary;

      private var wila:Naseqigos;

      SsInternal const votu:Dictionary = new Dictionary();

      public function map(param1:Class, param2:String="") : Rimot {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         return (this.qydyd[_loc3_])||(this.zeponohat(param1,param2,_loc3_));
      }

      public function gukin(param1:Class, param2:String="") : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         var _loc4_:Rimot = this.qydyd[_loc3_];
         if((_loc4_)&&(_loc4_.vakazu))
         {
            throw new Jugiwuly("Can\'t unmap a sealed mapping");
         }
         else
         {
            if(!_loc4_)
            {
               throw new Jugiwuly("Error while removing an injector mapping: "+"No mapping defined for dependency "+_loc3_);
            }
            else
            {
               _loc4_.bazesujeq().destroy();
               delete this.qydyd[[_loc3_]];
               delete this.votu[[_loc3_]];
               return;
            }
         }
      }

      public function rahizygy(param1:Class, param2:String="") : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return !(this.bazesujeq(getQualifiedClassName(param1)+"|"+param2)==null);
      }

      public function lob(param1:Class, param2:String="") : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return !(this.votu[getQualifiedClassName(param1)+"|"+param2]==null);
      }

      public function wit(param1:Class, param2:String="") : Rimot {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = getQualifiedClassName(param1)+"|"+param2;
         var _loc4_:Rimot = this.qydyd[_loc3_];
         if(!_loc4_)
         {
            throw new Qiduqez("Error while retrieving an injector mapping: "+"No mapping defined for dependency "+_loc3_);
         }
         else
         {
            return _loc4_;
         }
      }

      public function zudihap(param1:Object) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = this.wila.dofumab(param1);
         this.wakofosak(param1,_loc2_,this.kejehapi.wugodof(_loc2_));
         return;
      }

      public function getInstance(param1:Class, param2:String="", param3:Class=null) : * {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         var _loc6_:Cyrad = null;
         _loc4_=getQualifiedClassName(param1)+"|"+param2;
         var _loc5_:Cuwively = this.bazesujeq(_loc4_,false);
         if(_loc5_)
         {
            _loc6_=this.kejehapi.wugodof(param1).ctor;
            return _loc5_.apply(param3,this,_loc6_?_loc6_.injectUserConfig:null);
         }
         if(param2)
         {
            throw new Qiduqez("No mapping found for request "+_loc4_+". getInstance only creates an unmapped instance if no name is given.");
         }
         else
         {
            return this.runak(param1);
         }
      }

      public function segepe(param1:Object) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Class = null;
         if(!param1)
         {
            return;
         }
         _loc2_=this.wila.dofumab(param1);
         var _loc3_:Wubelet = this.vohosop(_loc2_);
         var _loc4_:Nytiq = _loc3_.lymatudo;
         while(_loc4_)
         {
            _loc4_.applyInjection(param1,_loc2_,this);
            _loc4_=Nytiq(_loc4_.next);
         }
         return;
      }

      public function kezitijan() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Rimot = null;
         var _loc2_:Object = null;
         for each (_loc1_ in this.qydyd)
         {
            _loc1_.bazesujeq().destroy();
         }
         for each (_loc2_ in this.nyme)
         {
            this.segepe(_loc2_);
         }
         this.qydyd=new Dictionary();
         this.sepefili=new Dictionary();
         this.vyduvog=new Dictionary();
         this.nyme=new Dictionary();
         return;
      }

      public function kuqez(param1:ApplicationDomain=null) : Nun {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nun = new Nun();
         _loc2_.givyjacyd=(param1)||(this.givyjacyd);
         _loc2_.wucovasol=this;
         return _loc2_;
      }

      public function set wucovasol(param1:Nun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dumadoke=param1;
         return;
      }

      public function get wucovasol() : Nun {
         return this.dumadoke;
      }

      public function set givyjacyd(param1:ApplicationDomain) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pohofydi=(param1)||(ApplicationDomain.currentDomain);
         return;
      }

      public function get givyjacyd() : ApplicationDomain {
         return this.pohofydi;
      }

      public function quluc(param1:Class, param2:Wubelet) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.kejehapi.jifaqy(param1,param2);
         return;
      }

      public function vohosop(param1:Class) : Wubelet {
         return this.wila.timefuh(param1);
      }

      SsInternal function runak(param1:Class) : Object {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Wubelet = this.kejehapi.wugodof(param1);
         if(!_loc2_.ctor)
         {
            throw new Rizom("Can\'t instantiate interface "+getQualifiedClassName(param1));
         }
         else
         {
            _loc3_=_loc2_.ctor.createInstance(param1,this);
            this.wakofosak(_loc3_,param1,_loc2_);
            return _loc3_;
         }
      }

      SsInternal function bazesujeq(param1:String, param2:Boolean=true) : Cuwively {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Cuwively = null;
         var _loc5_:Cuwively = null;
         var _loc4_:Nun = this;
         while(_loc4_)
         {
            _loc5_=_loc4_.votu[param1];
            if(_loc5_)
            {
               if(_loc5_ is Mokajak)
               {
                  _loc3_=_loc5_;
                  _loc4_=_loc4_.wucovasol;
                  continue;
               }
               if(_loc5_ is Pomyw&&!(_loc4_===this))
               {
                  _loc4_=_loc4_.wucovasol;
                  continue;
               }
               return _loc5_;
            }
            _loc4_=_loc4_.wucovasol;
         }
         if(_loc3_)
         {
            return _loc3_;
         }
         return param2?this.cizim(param1):null;
      }

      SsInternal function cizim(param1:String) : Cuwively {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
         try
         {
            definition=this.pohofydi.hasDefinition(typeName)?this.pohofydi.getDefinition(typeName):getDefinitionByName(typeName);
         }
         catch(e:Error)
         {
            return null;
         }
         if(!definition||!(definition is Class))
         {
            return null;
         }
         var type:Class = Class(definition);
         var description:Wubelet = this.kejehapi.wugodof(type);
         if(!description.ctor)
         {
            return null;
         }
         return this.vyduvog[type]=(this.vyduvog[type])||(new Quqi(type));
      }

      private function zeponohat(param1:Class, param2:String, param3:String) : Rimot {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Rimot = null;
         if(this.sepefili[param3])
         {
            throw new Jugiwuly("Can\'t change a mapping from inside a listener to it\'s creation event");
         }
         else
         {
            this.sepefili[param3]=true;
            _loc4_=new Rimot(this,param1,param2,param3);
            this.qydyd[param3]=_loc4_;
            _loc5_=_loc4_.gab();
            delete this.sepefili[[param3]];
            _loc4_.qiz(_loc5_);
            return _loc4_;
         }
      }

      private function wakofosak(param1:Object, param2:Class, param3:Wubelet) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Cotaras = param3.injectionPoints;
         while(_loc4_)
         {
            _loc4_.applyInjection(param1,param2,this);
            _loc4_=_loc4_.next;
         }
         if(param3.lymatudo)
         {
            this.nyme[param1]=param1;
         }
         return;
      }
   }

}