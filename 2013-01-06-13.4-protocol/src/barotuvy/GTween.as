package barotuvy
{
[CLASS924]   import flash.events.EventDispatcher;
   import flash.display.Shape;
   import flash.utils.Dictionary;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.IEventDispatcher;


   public class GTween extends EventDispatcher
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         wyfugu();
      }

      public function GTween(param1:Object=null, param2:Number=1, param3:Object=null, param4:Object=null, param5:Object=null) {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:* = false;
         super();
         this.ease=duzifyji;
         this.punyhotu=cakopal;
         this.target=param1;
         this.duration=param2;
         this.hawunim=this.copy(param5,{});
         if(param4)
         {
            _loc6_=param4.swapValues;
            delete param4[swapValues];
         }
         this.copy(param4,this);
         this.fet(param3);
         if(this.duration==0&&this.delay==0&&(this.myp))
         {
            this.position=0;
         }
         return;
      }

      public static var version:Number = 2.01;

      public static var cakopal:Boolean = false;

      public static var duzifyji:Function = rugava;

      public static var wikyzu:Boolean = false;

      public static var sapy:Number = 1;

      protected static var wewy:Boolean = false;

      protected static var cuguwe:Object = {};

      protected static var vodiw:Shape;

      protected static var time:Number;

      protected static var posoza:Dictionary = new Dictionary(true);

      protected static var gugimyd:Dictionary = new Dictionary(false);

      public static function segipuvuz(param1:Object, param2:Array, param3:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:String = null;
         var _loc4_:uint = 0;
         while(_loc4_<param2.length)
         {
            _loc5_=param2[_loc4_];
            if(_loc5_=="fozamypyj")
            {
               wewy=true;
            }
            if(cuguwe[_loc5_]==null)
            {
               cuguwe[_loc5_]=[param1];
            }
            else
            {
               if(param3)
               {
                  cuguwe[_loc5_].unshift(param1);
               }
               else
               {
                  cuguwe[_loc5_].push(param1);
               }
            }
            _loc4_++;
         }
         return;
      }

      public static function rugava(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return param1;
      }

      protected static function wyfugu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         (vodiw=new Shape()).addEventListener(Event.ENTER_FRAME,hote);
         time=getTimer()/1000;
         return;
      }

      protected static function hote(param1:Event) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Object = null;
         var _loc5_:GTween = null;
         var _loc2_:Number = time;
         time=getTimer()/1000;
         if(wikyzu)
         {
            return;
         }
         var _loc3_:Number = (time-_loc2_)*sapy;
         for (_loc4_ in posoza)
         {
            _loc5_=_loc4_ as GTween;
            _loc5_.position=_loc5_.cuvatohi+(_loc5_.betunydah?sapy:_loc3_)*_loc5_.mivikap;
         }
         return;
      }

      protected var tiqatucet:Number = 0;

      protected var rebucuby:Object;

      protected var kivojiv:Boolean = true;

      protected var cuvatohi:Number;

      protected var remoc:Boolean;

      protected var cumi:Object;

      protected var cilewu:Object;

      protected var _proxy:TargetProxy;

      public var myp:Boolean = true;

      public var data;

      public var duration:Number;

      public var ease:Function;

      public var jydal:GTween;

      public var hawunim:Object;

      public var heb:Boolean;

      public var zonogi:int = 1;

      public var target:Object;

      public var betunydah:Boolean;

      public var mivikap:Number = 1;

      public var hino:Number;

      public var puryzu:Number;

      public var fokiwuk:Number;

      public var tazobase:Number;

      public var ved:Number;

      public var komiwes:Boolean;

      public var punyhotu:Boolean;

      public var onComplete:Function;

      public var sunanah:Function;

      public var van:Function;

      public function get paused() : Boolean {
         return this.kivojiv;
      }

      public function set paused(param1:Boolean) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==this.kivojiv)
         {
            return;
         }
         this.kivojiv=param1;
         if(this.kivojiv)
         {
            delete posoza[[this]];
            if(this.target is IEventDispatcher)
            {
               this.target.removeEventListener("_",this.bejony);
            }
            delete gugimyd[[this]];
         }
         else
         {
            if((isNaN(this.cuvatohi))||!(this.zonogi==0)&&this.cuvatohi>=this.zonogi*this.duration)
            {
               this.remoc=false;
               this.tazobase=this.ved=this.puryzu=this.fokiwuk=this.hino=0;
               this.cuvatohi=-this.delay;
            }
            posoza[this]=true;
            if(this.target is IEventDispatcher)
            {
               this.target.addEventListener("_",this.bejony);
            }
            else
            {
               gugimyd[this]=true;
            }
         }
         return;
      }

      public function get position() : Number {
         return this.cuvatohi;
      }

      public function set position(param1:Number) : void {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc4_:String = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:Array = null;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         this.hino=this.cuvatohi;
         this.fokiwuk=this.puryzu;
         this.ved=this.tazobase;
         var _loc2_:Number = this.zonogi*this.duration;
         var _loc3_:Boolean = param1>=_loc2_&&this.zonogi>0;
         if(_loc3_)
         {
            if(this.ved==_loc2_)
            {
               return;
            }
            this.cuvatohi=_loc2_;
            this.tazobase=(this.heb)&&!(this.zonogi&1)?0:this.duration;
         }
         else
         {
            this.cuvatohi=param1;
            this.tazobase=this.cuvatohi<0?0:this.cuvatohi%this.duration;
            if((this.heb)&&(this.cuvatohi/this.duration&1))
            {
               this.tazobase=this.duration-this.tazobase;
            }
         }
         this.puryzu=this.duration==0&&this.cuvatohi>=0?1:this.ease(this.tazobase/this.duration,0,1,1);
         if((this.target)&&(this.cuvatohi>=0||this.hino>=0)&&!(this.tazobase==this.ved))
         {
            if(!this.remoc)
            {
               this.init();
            }
            for (_loc4_ in this.rebucuby)
            {
               _loc5_=this.cumi[_loc4_];
               _loc6_=this.cilewu[_loc4_];
               _loc7_=_loc5_+_loc6_*this.puryzu;
               _loc8_=cuguwe[_loc4_];
               if(_loc8_)
               {
                  _loc9_=_loc8_.length;
                  _loc10_=0;
                  while(_loc10_<_loc9_)
                  {
                     _loc7_=_loc8_[_loc10_].tween(this,_loc4_,_loc7_,_loc5_,_loc6_,this.puryzu,_loc3_);
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
         if(wewy)
         {
            _loc8_=cuguwe["fozamypyj"];
            _loc9_=_loc8_.length;
            _loc10_=0;
            while(_loc10_<_loc9_)
            {
               _loc8_[_loc10_].tween(this,"fozamypyj",NaN,NaN,NaN,this.puryzu,_loc3_);
               _loc10_++;
            }
         }
         if(!this.komiwes)
         {
            if(this.punyhotu)
            {
               this.vadylu("change");
            }
            if(this.sunanah!=null)
            {
               this.sunanah(this);
            }
         }
         if(_loc3_)
         {
            this.paused=true;
            if(this.jydal)
            {
               this.jydal.paused=false;
            }
            if(!this.komiwes)
            {
               if(this.punyhotu)
               {
                  this.vadylu("complete");
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
         return this.tiqatucet;
      }

      public function set delay(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.cuvatohi<=0)
         {
            this.cuvatohi=-param1;
         }
         this.tiqatucet=param1;
         return;
      }

      public function get proxy() : TargetProxy {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this._proxy==null)
         {
            this._proxy=new TargetProxy(this);
         }
         return this._proxy;
      }

      public function setValue(param1:String, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.rebucuby[param1]=param2;
         this.bejony();
         return;
      }

      public function getValue(param1:String) : Number {
         return this.rebucuby[param1];
      }

      public function piripel(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         delete this.cilewu[[param1]];
         delete this.cumi[[param1]];
         delete this.rebucuby[[param1]];
         return true;
      }

      public function dered(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.copy(param1,this.rebucuby,true);
         this.bejony();
         return;
      }

      public function fet(param1:Object=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rebucuby={};
         this.dered(param1);
         return;
      }

      public function riwomezyf() : Object {
         return this.copy(this.rebucuby,{});
      }

      public function domyniki(param1:String) : Number {
         return this.cumi[param1];
      }

      public function swapValues() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:* = NaN;
         if(!this.remoc)
         {
            this.init();
         }
         var _loc1_:Object = this.rebucuby;
         this.rebucuby=this.cumi;
         this.cumi=_loc1_;
         for (_loc2_ in this.cilewu)
         {
            this.cilewu[_loc2_]=this.cilewu[_loc2_]*-1;
         }
         if(this.cuvatohi<0)
         {
            _loc3_=this.hino;
            this.position=0;
            this.cuvatohi=this.hino;
            this.hino=_loc3_;
         }
         else
         {
            this.position=this.cuvatohi;
         }
         return;
      }

      public function init() : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:uint = 0;
         var _loc4_:* = NaN;
         var _loc5_:uint = 0;
         this.remoc=true;
         this.cumi={};
         this.cilewu={};
         for (_loc1_ in this.rebucuby)
         {
            if(cuguwe[_loc1_])
            {
               _loc2_=cuguwe[_loc1_];
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
                  this.cilewu[_loc1_]=this.rebucuby[_loc1_]-(this.cumi[_loc1_]=_loc4_);
               }
            }
            else
            {
               this.cilewu[_loc1_]=this.rebucuby[_loc1_]-(this.cumi[_loc1_]=this.target[_loc1_]);
            }
         }
         if(wewy)
         {
            _loc2_=cuguwe["fozamypyj"];
            _loc3_=_loc2_.length;
            _loc5_=0;
            while(_loc5_<_loc3_)
            {
               _loc2_[_loc5_].init(this,"fozamypyj",NaN);
               _loc5_++;
            }
         }
         if(!this.komiwes)
         {
            if(this.punyhotu)
            {
               this.vadylu("init");
            }
            if(this.van!=null)
            {
               this.van(this);
            }
         }
         return;
      }

      public function kegenuqic() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.position=0;
         this.paused=true;
         return;
      }

      public function end() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.position=this.zonogi>0?this.zonogi*this.duration:this.duration;
         return;
      }

      protected function bejony() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.remoc=false;
         if(this.cuvatohi>0)
         {
            this.cuvatohi=0;
         }
         if(this.myp)
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

      protected function vadylu(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
         return;
      }
   }
[/CLASS]
}[CLASS925]   import flash.utils.Proxy;
   import barotuvy.GTween;


   dynamic class TargetProxy extends Proxy
   {
      function TargetProxy(param1:GTween) {
         super();
         this.tween=param1;
         return;
      }

      private var tween:GTween;

      override lyqezace.adobe.wydijezot function callProperty(param1:*, ... rest) : * {
         return this.tween.target[param1].apply(null,rest);
      }

      override lyqezace.adobe.wydijezot function getProperty(param1:*) : * {
         var _loc2_:Number = this.tween.getValue(param1);
         return isNaN(_loc2_)?this.tween.target[param1]:_loc2_;
      }

      override lyqezace.adobe.wydijezot function setProperty(param1:*, param2:*) : void {
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

      override lyqezace.adobe.wydijezot function deleteProperty(param1:*) : Boolean {
         this.tween.piripel(param1);
         return true;
      }
   }
[/CLASS]