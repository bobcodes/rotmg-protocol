package buryq
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
         goqe();
      }

      public function GTween(param1:Object=null, param2:Number=1, param3:Object=null, param4:Object=null, param5:Object=null) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:* = false;
         super();
         this.ease=meli;
         this.kop=nuk;
         this.target=param1;
         this.duration=param2;
         this.bohovedez=this.copy(param5,{});
         if(param4)
         {
            _loc6_=param4.swapValues;
            GlobalNotificationActionte param4[swapValues];
         }
         this.copy(param4,this);
         this.vaf(param3);
         if(this.duration==0&&this.delay==0&&(this.ler))
         {
            this.position=0;
         }
         return;
      }

      public static var version:Number = 2.01;

      public static var nuk:Boolean = false;

      public static var meli:Function = guzeg;

      public static var tobekyp:Boolean = false;

      public static var tamoje:Number = 1;

      protected static var zotupybyw:Boolean = false;

      protected static var bipivy:Object = {};

      protected static var fuwyhugi:Shape;

      protected static var time:Number;

      protected static var soge:Dictionary = new Dictionary(true);

      protected static var fod:Dictionary = new Dictionary(false);

      public static function tyseqi(param1:Object, param2:Array, param3:Boolean=false) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:String = null;
         var _loc4_:uint = 0;
         while(_loc4_<param2.length)
         {
            _loc5_=param2[_loc4_];
            if(_loc5_=="wepynyji")
            {
               zotupybyw=true;
            }
            if(bipivy[_loc5_]==null)
            {
               bipivy[_loc5_]=[param1];
            }
            else
            {
               if(param3)
               {
                  bipivy[_loc5_].unshift(param1);
               }
               else
               {
                  bipivy[_loc5_].push(param1);
               }
            }
            _loc4_++;
         }
         return;
      }

      public static function guzeg(param1:Number, param2:Number, param3:Number, param4:Number) : Number {
         return param1;
      }

      protected static function goqe() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         (fuwyhugi=new Shape()).addEventListener(Event.ENTER_FRAME,hovubykec);
         time=getTimer()/1000;
         return;
      }

      protected static function hovubykec(param1:Event) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Object = null;
         var _loc5_:GTween = null;
         var _loc2_:Number = time;
         time=getTimer()/1000;
         if(tobekyp)
         {
            return;
         }
         var _loc3_:Number = (time-_loc2_)*tamoje;
         for (_loc4_ in soge)
         {
            _loc5_=_loc4_ as GTween;
            _loc5_.position=_loc5_.wupityc+(_loc5_.wotiwah?tamoje:_loc3_)*_loc5_.namodof;
         }
         return;
      }

      protected var jalujogi:Number = 0;

      protected var ravinasin:Object;

      protected var cusor:Boolean = true;

      protected var wupityc:Number;

      protected var tagujureg:Boolean;

      protected var bedaqa:Object;

      protected var jun:Object;

      protected var _proxy:TargetProxy;

      public var ler:Boolean = true;

      public var data;

      public var duration:Number;

      public var ease:Function;

      public var libudowab:GTween;

      public var bohovedez:Object;

      public var gas:Boolean;

      public var zyhe:int = 1;

      public var target:Object;

      public var wotiwah:Boolean;

      public var namodof:Number = 1;

      public var byhulunig:Number;

      public var guqed:Number;

      public var nica:Number;

      public var porasami:Number;

      public var kum:Number;

      public var dekidum:Boolean;

      public var kop:Boolean;

      public var onComplete:Function;

      public var fuvare:Function;

      public var zofil:Function;

      public function get paused() : Boolean {
         return this.cusor;
      }

      public function set paused(param1:Boolean) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(param1==this.cusor)
         {
            return;
         }
         this.cusor=param1;
         if(this.cusor)
         {
            GlobalNotificationActionte soge[[this]];
            if(this.target is IEventDispatcher)
            {
               this.target.removeEventListener("_",this.luzej);
            }
            GlobalNotificationActionte fod[[this]];
         }
         else
         {
            if((isNaN(this.wupityc))||!(this.zyhe==0)&&this.wupityc>=this.zyhe*this.duration)
            {
               this.tagujureg=false;
               this.porasami=this.kum=this.guqed=this.nica=this.byhulunig=0;
               this.wupityc=-this.delay;
            }
            soge[this]=true;
            if(this.target is IEventDispatcher)
            {
               this.target.addEventListener("_",this.luzej);
            }
            else
            {
               fod[this]=true;
            }
         }
         return;
      }

      public function get position() : Number {
         return this.wupityc;
      }

      public function set position(param1:Number) : void {
         var [OFS2]_loc13_:* = [/OFS]true;
         var [OFS4]_loc14_:* = [/OFS]false;
         var [OFS10]_loc4_:String = [/OFS][OFS8]null[/OFS];
         var [OFS13]_loc5_:* = [/OFS][OFS12]NaN[/OFS];
         var [OFS16]_loc6_:* = [/OFS][OFS15]NaN[/OFS];
         var [OFS19]_loc7_:* = [/OFS][OFS18]NaN[/OFS];
         var [OFS24]_loc8_:Array = [/OFS][OFS21]null[/OFS];
         var [OFS29]_loc9_:uint = [/OFS][OFS26]0[/OFS];
         var [OFS34]_loc10_:uint = [/OFS][OFS31]0[/OFS];
         this.[OFS41]byhulunig[/OFS][OFS41]=[/OFS]this.[OFS38]wupityc[/OFS];
         this.[OFS49]nica[/OFS][OFS49]=[/OFS]this.[OFS46]guqed[/OFS];
         this.[OFS57]kum[/OFS][OFS57]=[/OFS]this.[OFS54]porasami[/OFS];
         var [OFS70]_loc2_:Number = [/OFS]this.[OFS61]zyhe[/OFS][OFS68]*[/OFS]this.[OFS65]duration[/OFS];
         var [OFS88]_loc3_:Boolean = [/OFS][OFS71]param1[/OFS][OFS73]>=[/OFS][OFS72]_loc2_[/OFS]&&this.[OFS81]zyhe[/OFS][OFS86]>[/OFS][OFS84]0[/OFS];
         if([OFS89]_loc3_[/OFS])
         {
            if(this.[OFS95]kum[/OFS][OFS99]==[/OFS][OFS98]_loc2_[/OFS])
            {
               [OFS103]return[/OFS];
            }
            this.[OFS106]wupityc[/OFS][OFS106]=[/OFS][OFS105]_loc2_[/OFS];
            this.[OFS145]porasami[/OFS][OFS145]=[/OFS](this.[OFS111]gas[/OFS])&&[OFS128]![/OFS](this.[OFS122]zyhe[/OFS][OFS127]&[/OFS][OFS125]1[/OFS])?[OFS133]0[/OFS]:this.[OFS141]duration[/OFS];
         }
         else
         {
            this.[OFS154]wupityc[/OFS][OFS154]=[/OFS][OFS153]param1[/OFS];
            this.[OFS186]porasami[/OFS][OFS186]=[/OFS]this.[OFS159]wupityc[/OFS][OFS164]<[/OFS][OFS162]0[/OFS]?[OFS169]0[/OFS]:this.[OFS177]wupityc[/OFS][OFS184]%[/OFS]this.[OFS181]duration[/OFS];
            if((this.[OFS190]gas[/OFS])&&(this.[OFS201]wupityc[/OFS][OFS208]/[/OFS]this.[OFS205]duration[/OFS][OFS211]&[/OFS][OFS209]1[/OFS]))
            {
               this.[OFS227]porasami[/OFS][OFS227]=[/OFS]this.[OFS219]duration[/OFS][OFS226]-[/OFS]this.[OFS223]porasami[/OFS];
            }
         }
         this.[OFS282]guqed[/OFS][OFS282]=[/OFS]this.[OFS232]duration[/OFS][OFS237]==[/OFS][OFS235]0[/OFS]&&this.[OFS245]wupityc[/OFS][OFS250]>=[/OFS][OFS248]0[/OFS]?[OFS255]1[/OFS]:this.[OFS277]ease[/OFS][OFS277]([/OFS]this.[OFS264]porasami[/OFS][OFS271]/[/OFS]this.[OFS268]duration[/OFS][OFS277],[/OFS][OFS272]0[/OFS][OFS277],[/OFS][OFS274]1[/OFS][OFS277],[/OFS][OFS274]1[/OFS][OFS277])[/OFS];
         if((this.[OFS286]target[/OFS])&&(this.[OFS298]wupityc[/OFS][OFS303]>=[/OFS][OFS301]0[/OFS]||this.[OFS311]byhulunig[/OFS][OFS316]>=[/OFS][OFS314]0[/OFS])&&[OFS334]![/OFS](this.[OFS326]porasami[/OFS][OFS333]==[/OFS]this.[OFS330]kum[/OFS]))
         {
            if(!this.[OFS340]tagujureg[/OFS])
            {
               this.[OFS348]init[/OFS][OFS348]([/OFS][OFS348])[/OFS];
            }
            for (_loc4_ in this.[OFS357]ravinasin[/OFS])
            {
               [OFS386]_loc5_=[/OFS]this.[OFS377]bedaqa[/OFS][[OFS380]_loc4_[/OFS]];
               [OFS398]_loc6_=[/OFS]this.[OFS389]jun[/OFS][[OFS392]_loc4_[/OFS]];
               [OFS411]_loc7_=[/OFS][OFS400]_loc5_[/OFS][OFS409]+[/OFS][OFS402]_loc6_[/OFS][OFS408]*[/OFS]this.[OFS405]guqed[/OFS];
               [OFS424]_loc8_=[/OFS][OFS413]bipivy[/OFS][[OFS416]_loc4_[/OFS]];
               if([OFS423]_loc8_[/OFS])
               {
                  [OFS435]_loc9_=[/OFS][OFS430]_loc8_[/OFS].[OFS432]length[/OFS];
                  [OFS440]_loc10_=[/OFS][OFS437]0[/OFS];
                  while([OFS481]_loc10_[/OFS][OFS485]<[/OFS][OFS483]_loc9_[/OFS])
                  {
                     [OFS473]_loc7_=[/OFS][OFS447]_loc8_[/OFS][[OFS449]_loc10_[/OFS]].[OFS468]tween[/OFS][OFS468]([/OFS]this[OFS468],[/OFS][OFS455]_loc4_[/OFS][OFS468],[/OFS][OFS457]_loc7_[/OFS][OFS468],[/OFS][OFS459]_loc5_[/OFS][OFS468],[/OFS][OFS461]_loc6_[/OFS][OFS468],[/OFS]this.[OFS464]guqed[/OFS][OFS468],[/OFS][OFS467]_loc3_[/OFS][OFS468])[/OFS];
                     [OFS475]_loc10_[/OFS][OFS479]++[/OFS];
                  }
                  if(![OFS494]isNaN[/OFS][OFS494]([/OFS][OFS492]_loc7_[/OFS][OFS494])[/OFS])
                  {
                     this.[OFS503]target[/OFS][[OFS506]_loc4_[/OFS]][OFS510]=[/OFS][OFS508]_loc7_[/OFS];
                  }
               }
               else
               {
                  this.[OFS518]target[/OFS][[OFS521]_loc4_[/OFS]][OFS525]=[/OFS][OFS523]_loc7_[/OFS];
               }
            }
         }
         if([OFS539]zotupybyw[/OFS])
         {
            [OFS557]_loc8_=[/OFS][OFS546]bipivy[/OFS][[OFS549]"wepynyji"[/OFS]];
            [OFS562]_loc9_=[/OFS][OFS556]_loc8_[/OFS].[OFS559]length[/OFS];
            [OFS567]_loc10_=[/OFS][OFS564]0[/OFS];
            while([OFS608]_loc10_[/OFS][OFS612]<[/OFS][OFS610]_loc9_[/OFS])
            {
               [OFS574]_loc8_[/OFS][[OFS576]_loc10_[/OFS]].[OFS598]tween[/OFS][OFS598]([/OFS]this[OFS598],[/OFS][OFS582]"wepynyji"[/OFS][OFS598],[/OFS][OFS584]NaN[/OFS][OFS598],[/OFS][OFS587]NaN[/OFS][OFS598],[/OFS][OFS590]NaN[/OFS][OFS598],[/OFS]this.[OFS594]guqed[/OFS][OFS598],[/OFS][OFS597]_loc3_[/OFS][OFS598])[/OFS];
               [OFS602]_loc10_[/OFS][OFS606]++[/OFS];
            }
         }
         if(!this.[OFS617]dekidum[/OFS])
         {
            if(this.[OFS625]kop[/OFS])
            {
               this.[OFS636]lyhybes[/OFS][OFS636]([/OFS][OFS633]"change"[/OFS][OFS636])[/OFS];
            }
            if(this.[OFS641]fuvare[/OFS][OFS645]!=[/OFS][OFS644]null[/OFS])
            {
               this.[OFS651]fuvare[/OFS][OFS651]([/OFS]this[OFS651])[/OFS];
            }
         }
         if([OFS655]_loc3_[/OFS])
         {
            this.[OFS662]paused[/OFS][OFS662]=[/OFS]true;
            if(this.[OFS666]libudowab[/OFS])
            {
               this.[OFS674]libudowab[/OFS].[OFS678]paused[/OFS][OFS678]=[/OFS]false;
            }
            if(!this.[OFS682]dekidum[/OFS])
            {
               if(this.[OFS690]kop[/OFS])
               {
                  this.[OFS701]lyhybes[/OFS][OFS701]([/OFS][OFS698]"complete"[/OFS][OFS701])[/OFS];
               }
               if(this.[OFS706]onComplete[/OFS][OFS710]!=[/OFS][OFS709]null[/OFS])
               {
                  this.[OFS716]onComplete[/OFS][OFS716]([/OFS]this[OFS716])[/OFS];
               }
            }
         }
         [OFS720]return[/OFS];
      }

      public function get delay() : Number {
         return this.jalujogi;
      }

      public function set delay(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.wupityc<=0)
         {
            this.wupityc=-param1;
         }
         this.jalujogi=param1;
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
         this.ravinasin[param1]=param2;
         this.luzej();
         return;
      }

      public function getValue(param1:String) : Number {
         return this.ravinasin[param1];
      }

      public function qavaq(param1:String) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         GlobalNotificationActionte this.jun[[param1]];
         GlobalNotificationActionte this.bedaqa[[param1]];
         GlobalNotificationActionte this.ravinasin[[param1]];
         return true;
      }

      public function riri(param1:Object) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.copy(param1,this.ravinasin,true);
         this.luzej();
         return;
      }

      public function vaf(param1:Object=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ravinasin={};
         this.riri(param1);
         return;
      }

      public function kyp() : Object {
         return this.copy(this.ravinasin,{});
      }

      public function lemokylede(param1:String) : Number {
         return this.bedaqa[param1];
      }

      public function swapValues() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:String = null;
         var _loc3_:* = NaN;
         if(!this.tagujureg)
         {
            this.init();
         }
         var _loc1_:Object = this.ravinasin;
         this.ravinasin=this.bedaqa;
         this.bedaqa=_loc1_;
         for (_loc2_ in this.jun)
         {
            this.jun[_loc2_]=this.jun[_loc2_]*-1;
         }
         if(this.wupityc<0)
         {
            _loc3_=this.byhulunig;
            this.position=0;
            this.wupityc=this.byhulunig;
            this.byhulunig=_loc3_;
         }
         else
         {
            this.position=this.wupityc;
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
         this.tagujureg=true;
         this.bedaqa={};
         this.jun={};
         for (_loc1_ in this.ravinasin)
         {
            if(bipivy[_loc1_])
            {
               _loc2_=bipivy[_loc1_];
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
                  this.jun[_loc1_]=this.ravinasin[_loc1_]-(this.bedaqa[_loc1_]=_loc4_);
               }
            }
            else
            {
               this.jun[_loc1_]=this.ravinasin[_loc1_]-(this.bedaqa[_loc1_]=this.target[_loc1_]);
            }
         }
         if(zotupybyw)
         {
            _loc2_=bipivy["wepynyji"];
            _loc3_=_loc2_.length;
            _loc5_=0;
            while(_loc5_<_loc3_)
            {
               _loc2_[_loc5_].init(this,"wepynyji",NaN);
               _loc5_++;
            }
         }
         if(!this.dekidum)
         {
            if(this.kop)
            {
               this.lyhybes("init");
            }
            if(this.zofil!=null)
            {
               this.zofil(this);
            }
         }
         return;
      }

      public function fij() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.position=0;
         this.paused=true;
         return;
      }

      public function end() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.position=this.zyhe>0?this.zyhe*this.duration:this.duration;
         return;
      }

      protected function luzej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tagujureg=false;
         if(this.wupityc>0)
         {
            this.wupityc=0;
         }
         if(this.ler)
         {
            this.paused=false;
         }
         return;
      }

      protected function copy(param1:Object, param2:Object, param3:Boolean=false) : Object {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         for (_loc4_ in param1)
         {
            if((param3)&&param1[_loc4_]==null)
            {
               GlobalNotificationActionte param2[[_loc4_]];
            }
            else
            {
               param2[_loc4_]=param1[_loc4_];
            }
         }
         return param2;
      }

      protected function lyhybes(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(hasEventListener(param1))
         {
            dispatchEvent(new Event(param1));
         }
         return;
      }
   }

}   import flash.utils.Proxy;
   import buryq.GTween;


   dynamic class TargetProxy extends Proxy
   {
      function TargetProxy(param1:GTween) {
         super();
         this.tween=param1;
         return;
      }

      private var tween:GTween;

      override luhefuvi.adobe.qih function callProperty(param1:*, ... rest) : * {
         return this.tween.target[param1].apply(null,rest);
      }

      override luhefuvi.adobe.qih function getProperty(param1:*) : * {
         var _loc2_:Number = this.tween.getValue(param1);
         return isNaN(_loc2_)?this.tween.target[param1]:_loc2_;
      }

      override luhefuvi.adobe.qih function setProperty(param1:*, param2:*) : void {
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

      override luhefuvi.adobe.qih function GlobalNotificationActionteProperty(param1:*) : Boolean {
         this.tween.qavaq(param1);
         return true;
      }
   }
