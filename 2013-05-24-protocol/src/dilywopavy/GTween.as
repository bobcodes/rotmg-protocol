package dilywopavy
{
   import flash.events.EventDispatcher;
   import flash.display.Shape;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.IEventDispatcher;


   public class GTween extends EventDispatcher
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         cedyzecaq();
      }

      public function GTween(param1:Object=null, param2:Number=1, param3:Object=null, param4:Object=null, param5:Object=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:* = false;
         super();
         this.ease=qoro;
         this.hazi=tomid;
         this.target=param1;
         this.duration=param2;
         this.kojyqomok=this.copy(param5,{});
         if(param4)
         {
            _loc6_=param4.swapValues;
            delete param4[swapValues];
         }
         this.copy(param4,this);
         this.tojan(param3);
         if(this.duration==0&&this.delay==0&&(this.caducez))
         {
            this.position=0;
         }
         return;
      }

      public static var version:Number = 2.01;

      public static var tomid:Boolean = false;

      public static var qoro:Function = cipo;

      public static var sevepi:Boolean = false;

      public static var segaliwy:Number = 1;

      protected static var gakakof:Boolean = false;

      protected static var gubecu:Object = {};

      protected static var jica:Shape;

      protected static var time:Number;

      protected static var hozebo:Dictionary = new Dictionary(true);

      protected static var zalenyce:Dictionary = new Dictionary(false);

      public static function tehu(param1:Object, param2:Array, param3:Boolean=false) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:String = null;
         var _loc4_:uint = 0;
         while(_loc4_<param2.length)
         {
            _loc5_=param2[_loc4_];
            if(_loc5_=="cogycylyb")
            {
               gakakof=true;
            }
            if(gubecu[_loc5_]==null)
            {
               gubecu[_loc5_]=[param1];
            }
            else
            {
               if(param3)
               {
                  gubecu[_loc5_].unshift(param1);
               }
               else
               {
                  gubecu[_loc5_].push(param1);
               }
            }
            _loc4_++;
         }
         return;
      }

      public static function cipo(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return param1;
      }

      protected static function cedyzecaq() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         (jica=new Shape()).addEventListener(Event.ENTER_FRAME,rukac);
         time=getTimer()/1000;
         return;
      }

      protected static function rukac(param1:Event) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Object = null;
         var _loc5_:GTween = null;
         var _loc2_:Number = time;
         time=getTimer()/1000;
         if(sevepi)
         {
            return;
         }
         var _loc3_:Number = (time-_loc2_)*segaliwy;
         for (_loc4_ in hozebo)
         {
            _loc5_=_loc4_ as GTween;
            _loc5_.position=_loc5_.megalano+(_loc5_.pytu?segaliwy:_loc3_)*_loc5_.jylujefu;
         }
         return;
      }

      protected var gicu:Number = 0;

      protected var syhevimoz:Object;

      protected var mafihaqog:Boolean = true;

      protected var megalano:Number;

      protected var rofos:Boolean;

      protected var gun:Object;

      protected var zufo:Object;

      protected var _proxy:TargetProxy;

      public var caducez:Boolean = true;

      public var data;

      public var duration:Number;

      public var ease:Function;

      public var civebad:GTween;

      public var kojyqomok:Object;

      public var nihy:Boolean;

      public var byraho:int = 1;

      public var target:Object;

      public var pytu:Boolean;

      public var jylujefu:Number = 1;

      public var dan:Number;

      public var foqireso:Number;

      public var koko:Number;

      public var tupicipyb:Number;

      public var karakuh:Number;

      public var vitygadi:Boolean;

      public var hazi:Boolean;

      public var onComplete:Function;

      public var kosu:Function;

      public var cijakini:Function;

      public function get paused() : Boolean {
         return this.mafihaqog;
      }

      public function set paused(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==this.mafihaqog)
         {
            return;
         }
         this.mafihaqog=param1;
         if(this.mafihaqog)
         {
            delete hozebo[[this]];
            if(this.target is IEventDispatcher)
            {
               this.target.removeEventListener("_",this.vowopuc);
            }
            delete zalenyce[[this]];
         }
         else
         {
            if((isNaN(this.megalano))||!(this.byraho==0)&&this.megalano>=this.byraho*this.duration)
            {
               this.rofos=false;
               this.tupicipyb=this.karakuh=this.foqireso=this.koko=this.dan=0;
               this.megalano=-this.delay;
            }
            hozebo[this]=true;
            if(this.target is IEventDispatcher)
            {
               this.target.addEventListener("_",this.vowopuc);
            }
            else
            {
               zalenyce[this]=true;
            }
         }
         return;
      }

      public function get position() : Number {
         return this.megalano;
      }

      public function set position(param1:Number) : void {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc4_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Array = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         this.dan=this.megalano;
         this.koko=this.foqireso;
         this.karakuh=this.tupicipyb;
         var _loc2_:Number = this.byraho*this.duration;
         var _loc3_:Boolean = param1>=_loc2_&&this.byraho>0;
         if(_loc3_)
         {
            if(this.karakuh==_loc2_)
            {
               return;
            }
            this.megalano=_loc2_;
            this.tupicipyb=(this.nihy)&&!(this.byraho&1)?0:this.duration;
         }
         else
         {
            this.megalano=param1;
            this.tupicipyb=this.megalano<0?0:this.megalano%this.duration;
            if((this.nihy)&&(this.megalano/this.duration&1))
            {
               this.tupicipyb=this.duration-this.tupicipyb;
            }
         }
         this.foqireso=this.duration==0&&this.megalano>=0?1:this.ease(this.tupicipyb/this.duration,0,1,1);
         if((this.target)&&(this.megalano>=0||this.dan>=0)&&!(this.tupicipyb==this.karakuh))
         {
            if(!this.rofos)
            {
               this.init();
            }
            for (_loc4_ in this.syhevimoz)
            {
               _loc5_=this.gun[_loc4_];
               _loc6_=this.zufo[_loc4_];
               _loc7_=_loc5_+_loc6_*this.foqireso;
               _loc8_=gubecu[_loc4_];
               if(_loc8_)
               {
                  _loc9_=_loc8_.length;
                  _loc10_=0;
                  while(_loc10_<_loc9_)
                  {
                     _loc7_=_loc8_[_loc10_].tween(this,_loc4_,_loc7_,_loc5_,_loc6_,this.foqireso,_loc3_);
                     _loc10_++;
                  }
                  if(!isNaN(_loc7_))
                  {
                     this.target[_loc4_]=_loc7_;
                  }
               }
               else
               {
                  this.target[_loc4_]=_loc7_;
               }
            }
         }
         if(gakakof)
         {
            _loc8_=gubecu["cogycylyb"];
            _loc9_=_loc8_.length;
            _loc10_=0;
            while(_loc10_<_loc9_)
            {
               _loc8_[_loc10_].tween(this,"cogycylyb",NaN,NaN,NaN,this.foqireso,_loc3_);
               _loc10_++;
            }
         }
         if(!this.vitygadi)
         {
            if(this.hazi)
            {
               this.vydevef("change");
            }
            if(this.kosu!=null)
            {
               this.kosu(this);
            }
         }
         if(_loc3_)
         {
            this.paused=true;
            if(this.civebad)
            {
               this.civebad.paused=false;
            }
            if(!this.vitygadi)
            {
               if(this.hazi)
               {
                  this.vydevef("complete");
               }
               if(this.onComplete!=null)
               {
                  this.onComplete(this);
               }
            }
         }
         return;
      }

      public function get delay() : Number {
         return this.gicu;
      }

      public function set delay(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.megalano<=0)
         {
            this.megalano=-param1;
         }
         this.gicu=param1;
         return;
      }

      public function get proxy() : TargetProxy {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this._proxy==null)
         {
            this._proxy=new TargetProxy(this);
         }
         return this._proxy;
      }

      public function setValue(param1:String, param2:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.syhevimoz[param1]=param2;
         this.vowopuc();
         return;
      }

      public function getValue(param1:String) : Number {
         return this.syhevimoz[param1];
      }

      public function fodyquqa(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete this.zufo[[param1]];
         delete this.gun[[param1]];
         delete this.syhevimoz[[param1]];
         return true;
      }

      public function zyzina(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.copy(param1,this.syhevimoz,true);
         this.vowopuc();
         return;
      }

      public function tojan(param1:Object=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.syhevimoz={};
         this.zyzina(param1);
         return;
      }

      public function bucyqyl() : Object {
         return this.copy(this.syhevimoz,{});
      }

      public function bicireqyv(param1:String) : Number {
         return this.gun[param1];
      }

      public function swapValues() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:* = NaN;
         if(!this.rofos)
         {
            this.init();
         }
         var _loc1_:Object = this.syhevimoz;
         this.syhevimoz=this.gun;
         this.gun=_loc1_;
         for (_loc2_ in this.zufo)
         {
            this.zufo[_loc2_]=this.zufo[_loc2_]*-1;
         }
         if(this.megalano<0)
         {
            _loc3_=this.dan;
            this.position=0;
            this.megalano=this.dan;
            this.dan=_loc3_;
         }
         else
         {
            this.position=this.megalano;
         }
         return;
      }

      public function init() : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         var _loc4_:* = NaN;
         var _loc5_:uint = 0;
         this.rofos=true;
         this.gun={};
         this.zufo={};
         for (_loc1_ in this.syhevimoz)
         {
            if(gubecu[_loc1_])
            {
               _loc2_=gubecu[_loc1_];
               _loc3_=_loc2_.length;
               _loc4_=_loc1_ in this.target?this.target[_loc1_]:NaN;
               _loc5_=0;
               while(_loc5_<_loc3_)
               {
                  _loc4_=_loc2_[_loc5_].init(this,_loc1_,_loc4_);
                  _loc5_++;
               }
               if(!isNaN(_loc4_))
               {
                  this.zufo[_loc1_]=this.syhevimoz[_loc1_]-(this.gun[_loc1_]=_loc4_);
               }
            }
            else
            {
               this.zufo[_loc1_]=this.syhevimoz[_loc1_]-(this.gun[_loc1_]=this.target[_loc1_]);
            }
         }
         if(gakakof)
         {
            _loc2_=gubecu["cogycylyb"];
            _loc3_=_loc2_.length;
            _loc5_=0;
            while(_loc5_<_loc3_)
            {
               _loc2_[_loc5_].init(this,"cogycylyb",NaN);
               _loc5_++;
            }
         }
         if(!this.vitygadi)
         {
            if(this.hazi)
            {
               this.vydevef("init");
            }
            if(this.cijakini!=null)
            {
               this.cijakini(this);
            }
         }
         return;
      }

      public function babusaqi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.position=0;
         this.paused=true;
         return;
      }

      public function end() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.position=this.byraho>0?this.byraho*this.duration:this.duration;
         return;
      }

      protected function vowopuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rofos=false;
         if(this.megalano>0)
         {
            this.megalano=0;
         }
         if(this.caducez)
         {
            this.paused=false;
         }
         return;
      }

      protected function copy(param1:Object, param2:Object, param3:Boolean=false) : Object {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:String = null;
         for (_loc4_ in param1)
         {
            if((param3)&&param1[_loc4_]==null)
            {
               delete param2[[_loc4_]];
            }
            else
            {
               param2[_loc4_]=param1[_loc4_];
            }
         }
         return param2;
      }

      protected function vydevef(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
         return;
      }
   }

}   import flash.utils.Proxy;
   import dilywopavy.GTween;


   dynamic class TargetProxy extends Proxy
   {
      function TargetProxy(param1:GTween) {
         super();
         this.tween=param1;
         return;
      }

      private var tween:GTween;

      override cazuwegun.adobe.pocaq function callProperty(param1:*, ... rest) : * {
         return this.tween.target[param1].apply(null,rest);
      }

      override cazuwegun.adobe.pocaq function getProperty(param1:*) : * {
         var _loc2_:Number = this.tween.getValue(param1);
         return isNaN(_loc2_)?this.tween.target[param1]:_loc2_;
      }

      override cazuwegun.adobe.pocaq function setProperty(param1:*, param2:*) : void {
         if(param2 is Boolean||param2 is String||(isNaN(param2)))
         {
            this.tween.target[param1]=param2;
         }
         else
         {
            this.tween.setValue(String(param1),Number(param2));
         }
         return;
      }

      override cazuwegun.adobe.pocaq function deleteProperty(param1:*) : Boolean {
         this.tween.fodyquqa(param1);
         return true;
      }
   }
