package com.hurlant.math
{
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   import com.hurlant.util.Hex;


   public class Bupig extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Bupig(param1:*=null, param2:int=0, param3:Boolean=false) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:ByteArray = null;
         var _loc5_:* = 0;
         super();
         this.a=new Array();
         if(param1 is String)
         {
            if((param2)&&!(param2==16))
            {
               throw new Error("BigInteger construction with radix!=16 is not supported.");
            }
            else
            {
               param1=Hex.toArray(param1);
               param2=0;
            }
         }
         if(param1 is ByteArray)
         {
            _loc4_=param1 as ByteArray;
            _loc5_=(param2)||(_loc4_.length-_loc4_.position);
            this.fromArray(_loc4_,_loc5_,param3);
         }
         return;
      }

      public static const myhosijuz:int = 30;

      public static const cabaw:int = 1<<myhosijuz;

      public static const nemynuve:int = cabaw-1;

      public static const juhuro:int = 52;

      public static const webab:Number = Math.pow(2,juhuro);

      public static const F1:int = juhuro-myhosijuz;

      public static const F2:int = 2*myhosijuz-juhuro;

      public static const hyb:Bupig = wecuz(0);

      public static const woluditu:Bupig = wecuz(1);

      public static function wecuz(param1:int) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = new Bupig();
         _loc2_.tafez(param1);
         return _loc2_;
      }

      public static const gigo:Array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509];

      public static const gupy:int = (1<<26)/gigo[gigo.length-1];

      public var t:int;

      lyfepisy.hurlant.lymyj var s:int;

      lyfepisy.hurlant.lymyj var a:Array;

      public function dispose() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Random = new Random();
         var _loc2_:uint = 0;
         while(_loc2_<this.a.length)
         {
            this.a[_loc2_]=_loc1_.nextByte();
            delete this.a[[_loc2_]];
            _loc2_++;
         }
         this.a=null;
         this.t=0;
         this.s=0;
         Memory.gc();
         return;
      }

      public function toString(param1:Number=16) : String {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:* = 0;
         if(this.s<0)
         {
            return "-"+this.behuto().toString(param1);
         }
         switch(param1)
         {
            case 2:
               _loc2_=1;
               break;
            case 4:
               _loc2_=2;
               break;
            case 8:
               _loc2_=3;
               break;
            case 16:
               _loc2_=4;
               break;
            case 32:
               _loc2_=5;
               break;
         }
         var _loc3_:int = 1<<_loc2_-1;
         var _loc4_:* = 0;
         var _loc5_:* = false;
         var _loc6_:* = "";
         var _loc7_:int = this.t;
         var _loc8_:int = myhosijuz-_loc7_*myhosijuz%_loc2_;
         if(_loc7_-->0)
         {
            if(_loc8_<myhosijuz&&(_loc4_=this.a[_loc7_]>>_loc8_)>0)
            {
               _loc5_=true;
               _loc6_=_loc4_.toString(36);
            }
            while(_loc7_>=0)
            {
               if(_loc8_<_loc2_)
               {
                  _loc4_=(this.a[_loc7_]&1<<_loc8_-1)<<_loc2_-_loc8_;
                  _loc4_=_loc4_|this.a[--_loc7_]>>(_loc8_=_loc8_+(myhosijuz-_loc2_));
               }
               else
               {
                  _loc4_=this.a[_loc7_]>>(_loc8_=_loc8_-_loc2_)&_loc3_;
                  if(_loc8_<=0)
                  {
                     _loc8_=_loc8_+myhosijuz;
                     _loc7_--;
                  }
               }
               if(_loc4_>0)
               {
                  _loc5_=true;
               }
            }
         }
         return "0";
      }

      public function toArray(param1:ByteArray) : uint {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc2_:* = 8;
         var _loc3_:int = 1<<8-1;
         var _loc4_:* = 0;
         var _loc5_:int = this.t;
         var _loc6_:int = myhosijuz-_loc5_*myhosijuz%_loc2_;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         if(_loc5_-->0)
         {
            if(_loc6_<myhosijuz&&(_loc4_=this.a[_loc5_]>>_loc6_)>0)
            {
               _loc7_=true;
               param1.writeByte(_loc4_);
               _loc8_++;
            }
            while(_loc5_>=0)
            {
               if(_loc6_<_loc2_)
               {
                  _loc4_=(this.a[_loc5_]&1<<_loc6_-1)<<_loc2_-_loc6_;
                  _loc4_=_loc4_|this.a[--_loc5_]>>(_loc6_=_loc6_+(myhosijuz-_loc2_));
               }
               else
               {
                  _loc4_=this.a[_loc5_]>>(_loc6_=_loc6_-_loc2_)&_loc3_;
                  if(_loc6_<=0)
                  {
                     _loc6_=_loc6_+myhosijuz;
                     _loc5_--;
                  }
               }
               if(_loc4_>0)
               {
                  _loc7_=true;
               }
            }
         }
         return _loc8_;
      }

      public function valueOf() : Number {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.s==-1)
         {
            return -this.behuto().valueOf();
         }
         var _loc1_:Number = 1;
         var _loc2_:Number = 0;
         var _loc3_:uint = 0;
         while(_loc3_<this.t)
         {
            _loc2_=_loc2_+this.a[_loc3_]*_loc1_;
            _loc1_=_loc1_*cabaw;
            _loc3_++;
         }
         return _loc2_;
      }

      public function behuto() : Bupig {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bupig = this.fesylih();
         hyb.lemimeh(this,_loc1_);
         return _loc1_;
      }

      public function abs() : Bupig {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.s<0?this.behuto():this;
      }

      public function tir(param1:Bupig) : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:int = this.s-param1.s;
         if(_loc2_!=0)
         {
            return _loc2_;
         }
         var _loc3_:int = this.t;
         _loc2_=_loc3_-param1.t;
         if(_loc2_!=0)
         {
            return _loc2_;
         }
         while(--_loc3_>=0)
         {
            _loc2_=this.a[_loc3_]-param1.a[_loc3_];
            if(_loc2_!=0)
            {
               return _loc2_;
            }
         }
         return 0;
      }

      lyfepisy.hurlant.lymyj function hedacodu(param1:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc2_:* = 1;
         if((_loc3_=param1>>>16)!=0)
         {
            param1=_loc3_;
            _loc2_=_loc2_+16;
         }
         if((_loc3_=param1>>8)!=0)
         {
            param1=_loc3_;
            _loc2_=_loc2_+8;
         }
         if((_loc3_=param1>>4)!=0)
         {
            param1=_loc3_;
            _loc2_=_loc2_+4;
         }
         if((_loc3_=param1>>2)!=0)
         {
            param1=_loc3_;
            _loc2_=_loc2_+2;
         }
         if((_loc3_=param1>>1)!=0)
         {
            param1=_loc3_;
            _loc2_=_loc2_+1;
         }
         return _loc2_;
      }

      public function lepalutih() : int {
         var [OFS3]_loc1_:* = [/OFS]false;
         var [OFS4]_loc2_:* = [/OFS]true;
         if(this.[OFS8]t[/OFS][OFS12]<=[/OFS][OFS10]0[/OFS])
         {
            [OFS18]return [/OFS][OFS16]0[/OFS];
         }
         [OFS51]return [/OFS][OFS19]myhosijuz[/OFS][OFS26]*[/OFS](this.[OFS23]t[/OFS][OFS25]-1[/OFS])[OFS50]+[/OFS]this.[OFS46]hedacodu[/OFS][OFS46]([/OFS]this.[OFS29]a[/OFS][this.[OFS32]t[/OFS][OFS34]-1[/OFS]][OFS45]^[/OFS]this.[OFS38]s[/OFS][OFS44]&[/OFS][OFS41]nemynuve[/OFS][OFS46])[/OFS];
      }

      public function vafal(param1:Bupig) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = this.fesylih();
         this.abs().kotuhu(param1,null,_loc2_);
         if(this.s<0&&_loc2_.tir(hyb)>0)
         {
            param1.lemimeh(_loc2_,_loc2_);
         }
         return _loc2_;
      }

      public function dor(param1:int, param2:Bupig) : Bupig {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Wufeta = null;
         if(param1<256||(param2.riraqygaj()))
         {
            _loc3_=new Pibineku(param2);
         }
         else
         {
            _loc3_=new Konafoziv(param2);
         }
         return this.exp(param1,_loc3_);
      }

      lyfepisy.hurlant.lymyj function copyTo(param1:Bupig) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.t-1;
         while(_loc2_>=0)
         {
            param1.a[_loc2_]=this.a[_loc2_];
            _loc2_--;
         }
         param1.t=this.t;
         param1.s=this.s;
         return;
      }

      lyfepisy.hurlant.lymyj function tafez(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.t=1;
         this.s=param1<0?-1:0;
         if(param1>0)
         {
            this.a[0]=param1;
         }
         else
         {
            if(param1<-1)
            {
               this.a[0]=param1+cabaw;
            }
            else
            {
               this.t=0;
            }
         }
         return;
      }

      lyfepisy.hurlant.lymyj function fromArray(param1:ByteArray, param2:int, param3:Boolean=false) : void {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc8_:* = 0;
         var _loc4_:int = param1.position;
         var _loc5_:int = _loc4_+param2;
         var _loc6_:* = 0;
         var _loc7_:* = 8;
         this.t=0;
         this.s=0;
         while(--_loc5_>=_loc4_)
         {
            _loc8_=_loc5_<param1.length?param1[_loc5_]:0;
            this.a[this.t++]=_loc8_;
            _loc6_=_loc6_+_loc7_;
            if(_loc6_>=myhosijuz)
            {
               _loc6_=_loc6_-myhosijuz;
            }
         }
         if(!param3&&(param1[0]&128)==128)
         {
            this.s=-1;
            if(_loc6_>0)
            {
               this.a[this.t-1]=this.a[this.t-1]|1<<myhosijuz-_loc6_-1<<_loc6_;
            }
         }
         this.soki();
         param1.position=Math.min(_loc4_+param2,param1.length);
         return;
      }

      lyfepisy.hurlant.lymyj function soki() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = this.s&nemynuve;
         while(this.t>0&&this.a[this.t-1]==_loc1_)
         {
            this.t--;
         }
         return;
      }

      lyfepisy.hurlant.lymyj function zisakyry(param1:int, param2:Bupig) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc3_=this.t-1;
         while(_loc3_>=0)
         {
            param2.a[_loc3_+param1]=this.a[_loc3_];
            _loc3_--;
         }
         _loc3_=param1-1;
         while(_loc3_>=0)
         {
            param2.a[_loc3_]=0;
            _loc3_--;
         }
         param2.t=this.t+param1;
         param2.s=this.s;
         return;
      }

      lyfepisy.hurlant.lymyj function mywohucuj(param1:int, param2:Bupig) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc3_=param1;
         while(_loc3_<this.t)
         {
            param2.a[_loc3_-param1]=this.a[_loc3_];
            _loc3_++;
         }
         param2.t=Math.max(this.t-param1,0);
         param2.s=this.s;
         return;
      }

      lyfepisy.hurlant.lymyj function vij(param1:int, param2:Bupig) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:* = 0;
         var _loc3_:int = param1%myhosijuz;
         var _loc4_:int = myhosijuz-_loc3_;
         var _loc5_:int = 1<<_loc4_-1;
         var _loc6_:int = param1/myhosijuz;
         var _loc7_:* = this.s<<_loc3_&nemynuve;
         _loc8_=this.t-1;
         while(_loc8_>=0)
         {
            param2.a[_loc8_+_loc6_+1]=this.a[_loc8_]>>_loc4_|_loc7_;
            _loc7_=(this.a[_loc8_]&_loc5_)<<_loc3_;
            _loc8_--;
         }
         _loc8_=_loc6_-1;
         while(_loc8_>=0)
         {
            param2.a[_loc8_]=0;
            _loc8_--;
         }
         param2.a[_loc6_]=_loc7_;
         param2.t=this.t+_loc6_+1;
         param2.s=this.s;
         param2.soki();
         return;
      }

      lyfepisy.hurlant.lymyj function medojyqob(param1:int, param2:Bupig) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = 0;
         param2.s=this.s;
         var _loc3_:int = param1/myhosijuz;
         if(_loc3_>=this.t)
         {
            param2.t=0;
            return;
         }
         var _loc4_:int = param1%myhosijuz;
         var _loc5_:int = myhosijuz-_loc4_;
         var _loc6_:int = 1<<_loc4_-1;
         param2.a[0]=this.a[_loc3_]>>_loc4_;
         _loc7_=_loc3_+1;
         while(_loc7_<this.t)
         {
            param2.a[_loc7_-_loc3_-1]=param2.a[_loc7_-_loc3_-1]|(this.a[_loc7_]&_loc6_)<<_loc5_;
            param2.a[_loc7_-_loc3_]=this.a[_loc7_]>>_loc4_;
            _loc7_++;
         }
         if(_loc4_>0)
         {
            param2.a[this.t-_loc3_-1]=param2.a[this.t-_loc3_-1]|(this.s&_loc6_)<<_loc5_;
         }
         param2.t=this.t-_loc3_;
         param2.soki();
         return;
      }

      lyfepisy.hurlant.lymyj function lemimeh(param1:Bupig, param2:Bupig) : void {
         var [OFS3]_loc7_:* = [/OFS]false;
         var [OFS5]_loc8_:* = [/OFS]true;
         var [OFS11]_loc3_:* = [/OFS][OFS9]0[/OFS];
         var [OFS14]_loc4_:* = [/OFS][OFS12]0[/OFS];
         var [OFS29]_loc5_:int = [/OFS][OFS16]Math[/OFS].[OFS24]min[/OFS][OFS24]([/OFS][OFS18]param1[/OFS].[OFS19]t[/OFS][OFS24],[/OFS]this.[OFS22]t[/OFS][OFS24])[/OFS];
         while([OFS83]_loc3_[/OFS][OFS86]<[/OFS][OFS84]_loc5_[/OFS])
         {
            [OFS53]_loc4_=[/OFS][OFS36]_loc4_[/OFS][OFS51]+[/OFS](this.[OFS39]a[/OFS][[OFS41]_loc3_[/OFS]][OFS50]-[/OFS][OFS44]param1[/OFS].[OFS45]a[/OFS][[OFS47]_loc3_[/OFS]]);
            [OFS55]param2[/OFS].[OFS56]a[/OFS][[OFS58]_loc3_[/OFS][OFS61]++[/OFS]][OFS71]=[/OFS][OFS65]_loc4_[/OFS][OFS70]&[/OFS][OFS67]nemynuve[/OFS];
            [OFS79]_loc4_=[/OFS][OFS73]_loc4_[/OFS][OFS78]>>[/OFS][OFS75]myhosijuz[/OFS];
         }
         if([OFS90]param1[/OFS].[OFS91]t[/OFS][OFS96]<[/OFS]this.[OFS94]t[/OFS])
         {
            [OFS108]_loc4_=[/OFS][OFS100]_loc4_[/OFS][OFS106]-[/OFS][OFS102]param1[/OFS].[OFS103]s[/OFS];
            while([OFS155]_loc3_[/OFS][OFS159]<[/OFS]this.[OFS157]t[/OFS])
            {
               [OFS125]_loc4_=[/OFS][OFS115]_loc4_[/OFS][OFS123]+[/OFS]this.[OFS118]a[/OFS][[OFS120]_loc3_[/OFS]];
               [OFS127]param2[/OFS].[OFS128]a[/OFS][[OFS130]_loc3_[/OFS][OFS133]++[/OFS]][OFS143]=[/OFS][OFS137]_loc4_[/OFS][OFS142]&[/OFS][OFS139]nemynuve[/OFS];
               [OFS151]_loc4_=[/OFS][OFS145]_loc4_[/OFS][OFS150]>>[/OFS][OFS147]myhosijuz[/OFS];
            }
            [OFS171]_loc4_=[/OFS][OFS163]_loc4_[/OFS][OFS169]+[/OFS]this.[OFS166]s[/OFS];
            [OFS250]param2[/OFS].[OFS267]s[/OFS][OFS267]=[/OFS][OFS251]_loc4_[/OFS][OFS255]<[/OFS][OFS253]0[/OFS]?[OFS259]-1[/OFS]:[OFS265]0[/OFS];
            if([OFS270]_loc4_[/OFS][OFS274]<[/OFS][OFS272]-1[/OFS])
            {
               [OFS278]param2[/OFS].[OFS279]a[/OFS][[OFS281]_loc3_[/OFS][OFS284]++[/OFS]][OFS294]=[/OFS][OFS288]cabaw[/OFS][OFS293]+[/OFS][OFS291]_loc4_[/OFS];
            }
            else
            {
               if([OFS302]_loc4_[/OFS][OFS306]>[/OFS][OFS304]0[/OFS])
               {
                  [OFS310]param2[/OFS].[OFS311]a[/OFS][[OFS313]_loc3_[/OFS][OFS316]++[/OFS]][OFS322]=[/OFS][OFS320]_loc4_[/OFS];
               }
            }
            [OFS326]param2[/OFS].[OFS328]t[/OFS][OFS328]=[/OFS][OFS327]_loc3_[/OFS];
            [OFS330]param2[/OFS].[OFS331]soki[/OFS][OFS331]([/OFS][OFS331])[/OFS];
            [OFS335]return[/OFS];
         }
         [OFS185]_loc4_=[/OFS][OFS177]_loc4_[/OFS][OFS183]+[/OFS]this.[OFS180]s[/OFS];
         while([OFS232]_loc3_[/OFS][OFS236]<[/OFS][OFS233]param1[/OFS].[OFS234]t[/OFS])
         {
            [OFS202]_loc4_=[/OFS][OFS192]_loc4_[/OFS][OFS200]-[/OFS][OFS194]param1[/OFS].[OFS195]a[/OFS][[OFS197]_loc3_[/OFS]];
            [OFS204]param2[/OFS].[OFS205]a[/OFS][[OFS207]_loc3_[/OFS][OFS210]++[/OFS]][OFS220]=[/OFS][OFS214]_loc4_[/OFS][OFS219]&[/OFS][OFS216]nemynuve[/OFS];
            [OFS228]_loc4_=[/OFS][OFS222]_loc4_[/OFS][OFS227]>>[/OFS][OFS224]myhosijuz[/OFS];
         }
         [OFS248]_loc4_=[/OFS][OFS240]_loc4_[/OFS][OFS246]-[/OFS][OFS242]param1[/OFS].[OFS243]s[/OFS];
         [OFS250]param2[/OFS].[OFS267]s[/OFS][OFS267]=[/OFS][OFS251]_loc4_[/OFS][OFS255]<[/OFS][OFS253]0[/OFS]?[OFS259]-1[/OFS]:[OFS265]0[/OFS];
         if([OFS270]_loc4_[/OFS][OFS274]<[/OFS][OFS272]-1[/OFS])
         {
            [OFS278]param2[/OFS].[OFS279]a[/OFS][[OFS281]_loc3_[/OFS][OFS284]++[/OFS]][OFS294]=[/OFS][OFS288]cabaw[/OFS][OFS293]+[/OFS][OFS291]_loc4_[/OFS];
         }
         else
         {
            if([OFS302]_loc4_[/OFS][OFS306]>[/OFS][OFS304]0[/OFS])
            {
               [OFS310]param2[/OFS].[OFS311]a[/OFS][[OFS313]_loc3_[/OFS][OFS316]++[/OFS]][OFS322]=[/OFS][OFS320]_loc4_[/OFS];
            }
         }
         [OFS326]param2[/OFS].[OFS328]t[/OFS][OFS328]=[/OFS][OFS327]_loc3_[/OFS];
         [OFS330]param2[/OFS].[OFS331]soki[/OFS][OFS331]([/OFS][OFS331])[/OFS];
         [OFS335]return[/OFS];
      }

      lyfepisy.hurlant.lymyj function am(param1:int, param2:int, param3:Bupig, param4:int, param5:int, param6:int) : int {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         var _loc7_:* = param2&32767;
         var _loc8_:* = param2>>15;
         while(--param6>=0)
         {
            _loc9_=this.a[param1]&32767;
            _loc10_=this.a[param1++]>>15;
            _loc11_=_loc8_*_loc9_+_loc10_*_loc7_;
            _loc9_=_loc7_*_loc9_+((_loc11_&32767)<<15)+param3.a[param4]+(param5&1073741823);
            param5=(_loc9_>>>30)+(_loc11_>>>15)+_loc8_*_loc10_+(param5>>>30);
            param3.a[param4++]=_loc9_&1073741823;
         }
         return param5;
      }

      lyfepisy.hurlant.lymyj function teqecabes(param1:Bupig, param2:Bupig) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Bupig = this.abs();
         var _loc4_:Bupig = param1.abs();
         var _loc5_:int = _loc3_.t;
         param2.t=_loc5_+_loc4_.t;
         while(--_loc5_>=0)
         {
            param2.a[_loc5_]=0;
         }
         _loc5_=0;
         while(_loc5_<_loc4_.t)
         {
            param2.a[_loc5_+_loc3_.t]=_loc3_.am(0,_loc4_.a[_loc5_],param2,_loc5_,0,_loc3_.t);
            _loc5_++;
         }
         param2.s=0;
         param2.soki();
         if(this.s!=param1.s)
         {
            hyb.lemimeh(param2,param2);
         }
         return;
      }

      lyfepisy.hurlant.lymyj function mosu(param1:Bupig) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc2_:Bupig = this.abs();
         var _loc3_:int = param1.t=2*_loc2_.t;
         while(--_loc3_>=0)
         {
            param1.a[_loc3_]=0;
         }
         _loc3_=0;
         while(_loc3_<_loc2_.t-1)
         {
            _loc4_=_loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2*_loc3_,0,1);
            if((param1.a[_loc3_+_loc2_.t]=param1.a[_loc3_+_loc2_.t]+_loc2_.am(_loc3_+1,2*_loc2_.a[_loc3_],param1,2*_loc3_+1,_loc4_,_loc2_.t-_loc3_-1))>=cabaw)
            {
               param1.a[_loc3_+_loc2_.t]=param1.a[_loc3_+_loc2_.t]-cabaw;
               param1.a[_loc3_+_loc2_.t+1]=1;
            }
            _loc3_++;
         }
         if(param1.t>0)
         {
            param1.a[param1.t-1]=param1.a[param1.t-1]+_loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2*_loc3_,0,1);
         }
         param1.s=0;
         param1.soki();
         return;
      }

      lyfepisy.hurlant.lymyj function kotuhu(param1:Bupig, param2:Bupig=null, param3:Bupig=null) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var qd:int = 0;
         var m:Bupig = param1;
         var q:Bupig = param2;
         var r:Bupig = param3;
         var pm:Bupig = m.abs();
         if(pm.t<=0)
         {
            return;
         }
         var pt:Bupig = this.abs();
         if(pt.t<pm.t)
         {
            if(q!=null)
            {
               q.tafez(0);
            }
            if(r!=null)
            {
               this.copyTo(r);
            }
            return;
         }
         if(r==null)
         {
            r=this.fesylih();
         }
         var y:Bupig = this.fesylih();
         var ts:int = this.s;
         var ms:int = m.s;
         var nsh:int = myhosijuz-this.hedacodu(pm.a[pm.t-1]);
         if(nsh>0)
         {
            pm.vij(nsh,y);
            pt.vij(nsh,r);
         }
         else
         {
            pm.copyTo(y);
            pt.copyTo(r);
         }
         var ys:int = y.t;
         var y0:int = y.a[ys-1];
         if(y0==0)
         {
            return;
         }
         var yt:Number = y0*(1<<F1)+(ys>1?y.a[ys-2]>>F2:0);
         var d1:Number = webab/yt;
         var d2:Number = (1<<F1)/yt;
         var e:Number = 1<<F2;
         var i:int = r.t;
         var j:int = i-ys;
         var t:Bupig = q==null?this.fesylih():q;
         y.zisakyry(j,t);
         if(r.tir(t)>=0)
         {
            r.a[r.t++]=1;
            r.lemimeh(t,r);
         }
         woluditu.zisakyry(ys,t);
         t.lemimeh(y,y);
         while(y.t<ys)
         {
            for each (_loc8_ in y)
            {
               with(nextValue(_loc6_,_loc7_))
               {
                  
                  y.t++;
               }
            }
         }
         while(--j>=0)
         {
            qd=r.a[--i]==y0?nemynuve:Number(r.a[i])*d1+(Number(r.a[i-1])+e)*d2;
            if((r.a[i]=r.a[i]+y.am(0,qd,r,j,0,ys))<qd)
            {
               y.zisakyry(j,t);
               r.lemimeh(t,r);
               while(r.a[i]<--qd)
               {
                  r.lemimeh(t,r);
               }
            }
         }
         if(q!=null)
         {
            r.mywohucuj(ys,q);
            if(ts!=ms)
            {
               hyb.lemimeh(q,q);
            }
         }
         r.t=ys;
         r.soki();
         if(nsh>0)
         {
            r.medojyqob(nsh,r);
         }
         if(ts<0)
         {
            hyb.lemimeh(r,r);
         }
         return;
      }

      lyfepisy.hurlant.lymyj function hodaheraf() : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(this.t<1)
         {
            return 0;
         }
         var _loc1_:int = this.a[0];
         if((_loc1_&1)==0)
         {
            return 0;
         }
         var _loc2_:* = _loc1_&3;
         _loc2_=_loc2_*(2-(_loc1_&15)*_loc2_)&15;
         _loc2_=_loc2_*(2-(_loc1_&255)*_loc2_)&255;
         _loc2_=_loc2_*(2-((_loc1_&65535)*_loc2_&65535))&65535;
         _loc2_=_loc2_*(2-_loc1_*_loc2_%cabaw)%cabaw;
         return _loc2_>0?cabaw-_loc2_:-_loc2_;
      }

      lyfepisy.hurlant.lymyj function riraqygaj() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return (this.t>0?this.a[0]&1:this.s)==0;
      }

      lyfepisy.hurlant.lymyj function exp(param1:int, param2:Wufeta) : Bupig {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Bupig = null;
         if(param1>4.294967295E9||param1<1)
         {
            return woluditu;
         }
         var _loc3_:Bupig = this.fesylih();
         var _loc4_:Bupig = this.fesylih();
         var _loc5_:Bupig = param2.culehar(this);
         var _loc6_:int = this.hedacodu(param1)-1;
         _loc5_.copyTo(_loc3_);
         while(--_loc6_>=0)
         {
            param2.hen(_loc3_,_loc4_);
            if((param1&1<<_loc6_)>0)
            {
               param2.qorysali(_loc4_,_loc5_,_loc3_);
            }
            else
            {
               _loc7_=_loc3_;
               _loc3_=_loc4_;
               _loc4_=_loc7_;
            }
         }
         return param2.pifyrypo(_loc3_);
      }

      lyfepisy.hurlant.lymyj function ropo(param1:String, param2:int) : int {
         return parseInt(param1.charAt(param2),36);
      }

      protected function fesylih() : * {
         return new Bupig();
      }

      public function clone() : Bupig {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bupig = new Bupig();
         this.copyTo(_loc1_);
         return _loc1_;
      }

      public function revowec() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.s<0)
         {
            if(this.t==1)
            {
               return this.a[0]-cabaw;
            }
            if(this.t==0)
            {
               return -1;
            }
         }
         else
         {
            if(this.t==1)
            {
               return this.a[0];
            }
            if(this.t==0)
            {
               return 0;
            }
         }
         return (this.a[1]&1<<32-myhosijuz-1)<<myhosijuz|this.a[0];
      }

      public function ceraqy() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.t==0?this.s:this.a[0]<<24>>24;
      }

      public function piwunehu() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.t==0?this.s:this.a[0]<<16>>16;
      }

      protected function cedo(param1:Number) : int {
         return Math.floor(Math.LN2*myhosijuz/Math.log(param1));
      }

      public function sikimap() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.s<0)
         {
            return -1;
         }
         if(this.t<=0||this.t==1&&this.a[0]<=0)
         {
            return 0;
         }
         return 1;
      }

      protected function lonita(param1:uint=10) : String {
         var _loc8_:* = false;
         var _loc9_:* = true;
         if(this.sikimap()==0||param1<2||param1>32)
         {
            return "0";
         }
         var _loc2_:int = this.cedo(param1);
         var _loc3_:Number = Math.pow(param1,_loc2_);
         var _loc4_:Bupig = wecuz(_loc3_);
         var _loc5_:Bupig = this.fesylih();
         var _loc6_:Bupig = this.fesylih();
         var _loc7_:* = "";
         this.kotuhu(_loc4_,_loc5_,_loc6_);
         while(_loc5_.sikimap()>0)
         {
            _loc7_=(_loc3_+_loc6_.revowec()).toString(param1).substr(1)+_loc7_;
            _loc5_.kotuhu(_loc4_,_loc5_,_loc6_);
         }
         return _loc6_.revowec().toString(param1)+_loc7_;
      }

      protected function hel(param1:String, param2:int=10) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc9_:* = 0;
         this.tafez(0);
         var _loc3_:int = this.cedo(param2);
         var _loc4_:Number = Math.pow(param2,_loc3_);
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         while(_loc8_<param1.length)
         {
            _loc9_=this.ropo(param1,_loc8_);
            if(_loc9_<0)
            {
               if(param1.charAt(_loc8_)=="-"&&this.sikimap()==0)
               {
                  _loc5_=true;
               }
            }
            else
            {
               _loc7_=param2*_loc7_+_loc9_;
               if(++_loc6_>=_loc3_)
               {
                  this.faga(_loc4_);
                  this.fojaf(_loc7_,0);
                  _loc6_=0;
                  _loc7_=0;
               }
            }
            _loc8_++;
         }
         if(_loc6_>0)
         {
            this.faga(Math.pow(param2,_loc6_));
            this.fojaf(_loc7_,0);
         }
         return;
      }

      public function jycamy() : ByteArray {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = 0;
         var _loc1_:int = this.t;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_[0]=this.s;
         var _loc3_:int = myhosijuz-_loc1_*myhosijuz%8;
         var _loc5_:* = 0;
         if(_loc1_-->0)
         {
            if(_loc3_<myhosijuz&&!((_loc4_=this.a[_loc1_]>>_loc3_)==(this.s&nemynuve)>>_loc3_))
            {
               _loc2_[_loc5_++]=_loc4_|this.s<<myhosijuz-_loc3_;
            }
            while(_loc1_>=0)
            {
               if(_loc3_<8)
               {
                  _loc4_=(this.a[_loc1_]&1<<_loc3_-1)<<8-_loc3_;
                  _loc4_=_loc4_|this.a[--_loc1_]>>(_loc3_=_loc3_+(myhosijuz-8));
               }
               else
               {
                  _loc4_=this.a[_loc1_]>>(_loc3_=_loc3_-8)&255;
                  if(_loc3_<=0)
                  {
                     _loc3_=_loc3_+myhosijuz;
                     _loc1_--;
                  }
               }
               if((_loc4_&128)!=0)
               {
                  _loc4_=_loc4_|-256;
               }
               if(!((this.s&128)==(_loc4_&128)))
               {
                  _loc5_++;
               }
               if(!(_loc4_==this.s))
               {
                  _loc2_[_loc5_++]=_loc4_;
               }
            }
         }
         return _loc2_;
      }

      public function equals(param1:Bupig) : Boolean {
         return this.tir(param1)==0;
      }

      public function min(param1:Bupig) : Bupig {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.tir(param1)<0?this:param1;
      }

      public function max(param1:Bupig) : Bupig {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.tir(param1)>0?this:param1;
      }

      protected function lytobyqam(param1:Bupig, param2:Function, param3:Bupig) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:int = Math.min(param1.t,this.t);
         _loc4_=0;
         while(_loc4_<_loc6_)
         {
            param3.a[_loc4_]=param2(this.a[_loc4_],param1.a[_loc4_]);
            _loc4_++;
         }
         if(param1.t<this.t)
         {
            _loc5_=param1.s&nemynuve;
            _loc4_=_loc6_;
            while(_loc4_<this.t)
            {
               param3.a[_loc4_]=param2(this.a[_loc4_],_loc5_);
               _loc4_++;
            }
            param3.t=this.t;
            param3.s=param2(this.s,param1.s);
            param3.soki();
            return;
         }
         _loc5_=this.s&nemynuve;
         _loc4_=_loc6_;
         while(_loc4_<param1.t)
         {
            param3.a[_loc4_]=param2(_loc5_,param1.a[_loc4_]);
            _loc4_++;
         }
         param3.t=param1.t;
         param3.s=param2(this.s,param1.s);
         param3.soki();
         return;
      }

      private function wuku(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1&param2;
      }

      public function jozeqiza(param1:Bupig) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = new Bupig();
         this.lytobyqam(param1,this.wuku,_loc2_);
         return _loc2_;
      }

      private function zekim(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1|param2;
      }

      public function or(param1:Bupig) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = new Bupig();
         this.lytobyqam(param1,this.zekim,_loc2_);
         return _loc2_;
      }

      private function misosyri(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1^param2;
      }

      public function qyf(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         this.lytobyqam(param1,this.misosyri,_loc2_);
         return _loc2_;
      }

      private function sutuqyfo(param1:int, param2:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1&~param2;
      }

      public function vysuqef(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         this.lytobyqam(param1,this.sutuqyfo,_loc2_);
         return _loc2_;
      }

      public function not() : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Bupig = new Bupig();
         var _loc2_:* = 0;
         while(_loc2_<this.t)
         {
            _loc1_[_loc2_]=nemynuve&~this.a[_loc2_];
            _loc2_++;
         }
         _loc1_.t=this.t;
         _loc1_.s=~this.s;
         return _loc1_;
      }

      public function miteqo(param1:int) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         if(param1<0)
         {
            this.medojyqob(-param1,_loc2_);
         }
         else
         {
            this.vij(param1,_loc2_);
         }
         return _loc2_;
      }

      public function wowekuqan(param1:int) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         if(param1<0)
         {
            this.vij(-param1,_loc2_);
         }
         else
         {
            this.medojyqob(param1,_loc2_);
         }
         return _loc2_;
      }

      private function zapekecuf(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1==0)
         {
            return -1;
         }
         var _loc2_:* = 0;
         if((param1&65535)==0)
         {
            param1=param1>>16;
            _loc2_=_loc2_+16;
         }
         if((param1&255)==0)
         {
            param1=param1>>8;
            _loc2_=_loc2_+8;
         }
         if((param1&15)==0)
         {
            param1=param1>>4;
            _loc2_=_loc2_+4;
         }
         if((param1&3)==0)
         {
            param1=param1>>2;
            _loc2_=_loc2_+2;
         }
         if((param1&1)==0)
         {
            _loc2_++;
         }
         return _loc2_;
      }

      public function pivibyfo() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.t)
         {
            if(this.a[_loc1_]!=0)
            {
               return _loc1_*myhosijuz+this.zapekecuf(this.a[_loc1_]);
            }
            _loc1_++;
         }
         if(this.s<0)
         {
            return this.t*myhosijuz;
         }
         return -1;
      }

      private function mogoqy(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:uint = 0;
         while(param1!=0)
         {
            param1=param1&param1-1;
            _loc2_++;
         }
         return _loc2_;
      }

      public function kaze() : int {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = this.s&nemynuve;
         var _loc3_:* = 0;
         while(_loc3_<this.t)
         {
            _loc1_=_loc1_+this.mogoqy(this.a[_loc3_]^_loc2_);
            _loc3_++;
         }
         return _loc1_;
      }

      public function zagiz(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = Math.floor(param1/myhosijuz);
         if(_loc2_>=this.t)
         {
            return !(this.s==0);
         }
         return !((this.a[_loc2_]&1<<param1%myhosijuz)==0);
      }

      protected function rahe(param1:int, param2:Function) : Bupig {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Bupig = Bupig.woluditu.miteqo(param1);
         this.lytobyqam(_loc3_,param2,_loc3_);
         return _loc3_;
      }

      public function mace(param1:int) : Bupig {
         return this.rahe(param1,this.zekim);
      }

      public function riwu(param1:int) : Bupig {
         return this.rahe(param1,this.sutuqyfo);
      }

      public function maz(param1:int) : Bupig {
         return this.rahe(param1,this.misosyri);
      }

      protected function addTo(param1:Bupig, param2:Bupig) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,this.t);
         while(_loc3_<_loc5_)
         {
            _loc4_=_loc4_+(this.a[_loc3_]+param1.a[_loc3_]);
            param2.a[_loc3_++]=_loc4_&nemynuve;
            _loc4_=_loc4_>>myhosijuz;
         }
         if(param1.t<this.t)
         {
            _loc4_=_loc4_+param1.s;
            while(_loc3_<this.t)
            {
               _loc4_=_loc4_+this.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&nemynuve;
               _loc4_=_loc4_>>myhosijuz;
            }
            _loc4_=_loc4_+this.s;
            param2.s=_loc4_<0?-1:0;
            if(_loc4_>0)
            {
               param2.a[_loc3_++]=_loc4_;
            }
            else
            {
               if(_loc4_<-1)
               {
                  param2.a[_loc3_++]=cabaw+_loc4_;
               }
            }
            param2.t=_loc3_;
            param2.soki();
            return;
         }
         _loc4_=_loc4_+this.s;
         while(_loc3_<param1.t)
         {
            _loc4_=_loc4_+param1.a[_loc3_];
            param2.a[_loc3_++]=_loc4_&nemynuve;
            _loc4_=_loc4_>>myhosijuz;
         }
         _loc4_=_loc4_+param1.s;
         param2.s=_loc4_<0?-1:0;
         if(_loc4_>0)
         {
            param2.a[_loc3_++]=_loc4_;
         }
         else
         {
            if(_loc4_<-1)
            {
               param2.a[_loc3_++]=cabaw+_loc4_;
            }
         }
         param2.t=_loc3_;
         param2.soki();
         return;
      }

      public function add(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         this.addTo(param1,_loc2_);
         return _loc2_;
      }

      public function nyzujy(param1:Bupig) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = new Bupig();
         this.lemimeh(param1,_loc2_);
         return _loc2_;
      }

      public function zysipyho(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         this.teqecabes(param1,_loc2_);
         return _loc2_;
      }

      public function jypihu(param1:Bupig) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = new Bupig();
         this.kotuhu(param1,_loc2_,null);
         return _loc2_;
      }

      public function bogi(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         this.kotuhu(param1,null,_loc2_);
         return _loc2_;
      }

      public function zobe(param1:Bupig) : Array {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Bupig = new Bupig();
         var _loc3_:Bupig = new Bupig();
         this.kotuhu(param1,_loc2_,_loc3_);
         return [_loc2_,_loc3_];
      }

      lyfepisy.hurlant.lymyj function faga(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.a[this.t]=this.am(0,param1-1,this,0,0,this.t);
         this.t++;
         this.soki();
         return;
      }

      lyfepisy.hurlant.lymyj function fojaf(param1:int, param2:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         while(this.t<=param2)
         {
            this.a[this.t++]=0;
         }
         this.a[param2]=this.a[param2]+param1;
         while(this.a[param2]>=cabaw)
         {
            this.a[param2]=this.a[param2]-cabaw;
            if(++param2>=this.t)
            {
               this.a[this.t++]=0;
            }
            this.a[param2]++;
         }
         return;
      }

      public function pow(param1:int) : Bupig {
         return this.exp(param1,new Jejajinow());
      }

      lyfepisy.hurlant.lymyj function lyze(param1:Bupig, param2:int, param3:Bupig) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = 0;
         var _loc4_:int = Math.min(this.t+param1.t,param2);
         param3.s=0;
         param3.t=_loc4_;
         while(_loc4_>0)
         {
            param3.a[--_loc4_]=0;
         }
         _loc5_=param3.t-this.t;
         while(_loc4_<_loc5_)
         {
            param3.a[_loc4_+this.t]=this.am(0,param1.a[_loc4_],param3,_loc4_,0,this.t);
            _loc4_++;
         }
         _loc5_=Math.min(param1.t,param2);
         while(_loc4_<_loc5_)
         {
            this.am(0,param1.a[_loc4_],param3,_loc4_,0,param2-_loc4_);
            _loc4_++;
         }
         param3.soki();
         return;
      }

      lyfepisy.hurlant.lymyj function nufajiwo(param1:Bupig, param2:int, param3:Bupig) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         param2--;
         var _loc4_:int = param3.t=this.t+param1.t-param2;
         param3.s=0;
         while(--_loc4_>=0)
         {
            param3.a[_loc4_]=0;
         }
         _loc4_=Math.max(param2-this.t,0);
         while(_loc4_<param1.t)
         {
            param3.a[this.t+_loc4_-param2]=this.am(param2-_loc4_,param1.a[_loc4_],param3,0,0,this.t+_loc4_-param2);
            _loc4_++;
         }
         param3.soki();
         param3.mywohucuj(1,param3);
         return;
      }

      public function puvy(param1:Bupig, param2:Bupig) : Bupig {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc4_:* = 0;
         var _loc6_:Wufeta = null;
         var _loc12_:* = 0;
         var _loc15_:Bupig = null;
         var _loc16_:Bupig = null;
         var _loc3_:int = param1.lepalutih();
         var _loc5_:Bupig = wecuz(1);
         if(_loc3_<=0)
         {
            return _loc5_;
         }
         if(_loc3_<18)
         {
            _loc4_=1;
         }
         else
         {
            if(_loc3_<48)
            {
               _loc4_=3;
            }
            else
            {
               if(_loc3_<144)
               {
                  _loc4_=4;
               }
               else
               {
                  if(_loc3_<768)
                  {
                     _loc4_=5;
                  }
                  else
                  {
                     _loc4_=6;
                  }
               }
            }
         }
         if(_loc3_<8)
         {
            _loc6_=new Pibineku(param2);
         }
         else
         {
            if(param2.riraqygaj())
            {
               _loc6_=new Fyd(param2);
            }
            else
            {
               _loc6_=new Konafoziv(param2);
            }
         }
         var _loc7_:Array = [];
         var _loc8_:* = 3;
         var _loc9_:int = _loc4_-1;
         var _loc10_:int = 1<<_loc4_-1;
         _loc7_[1]=_loc6_.culehar(this);
         if(_loc4_>1)
         {
            _loc16_=new Bupig();
            _loc6_.hen(_loc7_[1],_loc16_);
            while(_loc8_<=_loc10_)
            {
               _loc7_[_loc8_]=new Bupig();
               _loc6_.qorysali(_loc16_,_loc7_[_loc8_-2],_loc7_[_loc8_]);
               _loc8_=_loc8_+2;
            }
         }
         var _loc11_:int = param1.t-1;
         var _loc13_:* = true;
         var _loc14_:Bupig = new Bupig();
         _loc3_=this.hedacodu(param1.a[_loc11_])-1;
         while(_loc11_>=0)
         {
            if(_loc3_>=_loc9_)
            {
               _loc12_=param1.a[_loc11_]>>_loc3_-_loc9_&_loc10_;
            }
            else
            {
               _loc12_=(param1.a[_loc11_]&1<<_loc3_+1-1)<<_loc9_-_loc3_;
               if(_loc11_>0)
               {
                  _loc12_=_loc12_|param1.a[_loc11_-1]>>myhosijuz+_loc3_-_loc9_;
               }
            }
            _loc8_=_loc4_;
            while((_loc12_&1)==0)
            {
               _loc12_=_loc12_>>1;
               _loc8_--;
            }
            if((_loc3_=_loc3_-_loc8_)<0)
            {
               _loc3_=_loc3_+myhosijuz;
               _loc11_--;
            }
            _loc7_[_loc12_].copyTo(_loc5_);
            _loc13_=false;
            while(_loc11_>=0&&(param1.a[_loc11_]&1<<_loc3_)==0)
            {
               _loc6_.hen(_loc5_,_loc14_);
               _loc15_=_loc5_;
               _loc5_=_loc14_;
               _loc14_=_loc15_;
               if(--_loc3_<0)
               {
                  _loc3_=myhosijuz-1;
                  _loc11_--;
               }
            }
         }
         return _loc6_.pifyrypo(_loc5_);
      }

      public function werufoc(param1:Bupig) : Bupig {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:Bupig = null;
         var _loc2_:Bupig = this.s<0?this.behuto():this.clone();
         var _loc3_:Bupig = param1.s<0?param1.behuto():param1.clone();
         if(_loc2_.tir(_loc3_)<0)
         {
            _loc6_=_loc2_;
            _loc2_=_loc3_;
            _loc3_=_loc6_;
         }
         var _loc4_:int = _loc2_.pivibyfo();
         var _loc5_:int = _loc3_.pivibyfo();
         if(_loc5_<0)
         {
            return _loc2_;
         }
         if(_loc4_<_loc5_)
         {
            _loc5_=_loc4_;
         }
         if(_loc5_>0)
         {
            _loc2_.medojyqob(_loc5_,_loc2_);
            _loc3_.medojyqob(_loc5_,_loc3_);
         }
         while(_loc2_.sikimap()>0)
         {
            if((_loc4_=_loc2_.pivibyfo())>0)
            {
               _loc2_.medojyqob(_loc4_,_loc2_);
            }
            if((_loc4_=_loc3_.pivibyfo())>0)
            {
               _loc3_.medojyqob(_loc4_,_loc3_);
            }
            if(_loc2_.tir(_loc3_)>=0)
            {
               _loc2_.lemimeh(_loc3_,_loc2_);
               _loc2_.medojyqob(1,_loc2_);
            }
            else
            {
               _loc3_.lemimeh(_loc2_,_loc3_);
               _loc3_.medojyqob(1,_loc3_);
            }
         }
         if(_loc5_>0)
         {
            _loc3_.vij(_loc5_,_loc3_);
         }
         return _loc3_;
      }

      protected function lih(param1:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         if(param1<=0)
         {
            return 0;
         }
         var _loc2_:int = cabaw%param1;
         var _loc3_:int = this.s<0?param1-1:0;
         if(this.t>0)
         {
            if(_loc2_==0)
            {
               _loc3_=this.a[0]%param1;
            }
            else
            {
               _loc4_=this.t-1;
               while(_loc4_>=0)
               {
                  _loc3_=(_loc2_*_loc3_+this.a[_loc4_])%param1;
                  _loc4_--;
               }
            }
         }
         return _loc3_;
      }

      public function tubar(param1:Bupig) : Bupig {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:Boolean = param1.riraqygaj();
         if((this.riraqygaj())&&(_loc2_)||param1.sikimap()==0)
         {
            return Bupig.hyb;
         }
         var _loc3_:Bupig = param1.clone();
         var _loc4_:Bupig = this.clone();
         var _loc5_:Bupig = wecuz(1);
         var _loc6_:Bupig = wecuz(0);
         var _loc7_:Bupig = wecuz(0);
         var _loc8_:Bupig = wecuz(1);
         while(_loc3_.sikimap()!=0)
         {
            while(_loc3_.riraqygaj())
            {
               _loc3_.medojyqob(1,_loc3_);
               if(_loc2_)
               {
                  if(!_loc5_.riraqygaj()||!_loc6_.riraqygaj())
                  {
                     _loc5_.addTo(this,_loc5_);
                     _loc6_.lemimeh(param1,_loc6_);
                  }
                  _loc5_.medojyqob(1,_loc5_);
               }
               else
               {
                  if(!_loc6_.riraqygaj())
                  {
                     _loc6_.lemimeh(param1,_loc6_);
                  }
               }
               _loc6_.medojyqob(1,_loc6_);
            }
            while(_loc4_.riraqygaj())
            {
               _loc4_.medojyqob(1,_loc4_);
               if(_loc2_)
               {
                  if(!_loc7_.riraqygaj()||!_loc8_.riraqygaj())
                  {
                     _loc7_.addTo(this,_loc7_);
                     _loc8_.lemimeh(param1,_loc8_);
                  }
                  _loc7_.medojyqob(1,_loc7_);
               }
               else
               {
                  if(!_loc8_.riraqygaj())
                  {
                     _loc8_.lemimeh(param1,_loc8_);
                  }
               }
               _loc8_.medojyqob(1,_loc8_);
            }
            if(_loc3_.tir(_loc4_)>=0)
            {
               _loc3_.lemimeh(_loc4_,_loc3_);
               if(_loc2_)
               {
                  _loc5_.lemimeh(_loc7_,_loc5_);
               }
               _loc6_.lemimeh(_loc8_,_loc6_);
            }
            else
            {
               _loc4_.lemimeh(_loc3_,_loc4_);
               if(_loc2_)
               {
                  _loc7_.lemimeh(_loc5_,_loc7_);
               }
               _loc8_.lemimeh(_loc6_,_loc8_);
            }
         }
         if(_loc4_.tir(Bupig.woluditu)!=0)
         {
            return Bupig.hyb;
         }
         if(_loc8_.tir(param1)>=0)
         {
            return _loc8_.nyzujy(param1);
         }
         if(_loc8_.sikimap()<0)
         {
            _loc8_.addTo(param1,_loc8_);
            if(_loc8_.sikimap()<0)
            {
               return _loc8_.add(param1);
            }
            return _loc8_;
         }
         return _loc8_;
      }

      public function molahife(param1:int) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:Bupig = this.abs();
         if(_loc3_.t==1&&_loc3_.a[0]<=gigo[gigo.length-1])
         {
            _loc2_=0;
            while(_loc2_<gigo.length)
            {
               if(_loc3_[0]==gigo[_loc2_])
               {
                  return true;
               }
               _loc2_++;
            }
            return false;
         }
         if(_loc3_.riraqygaj())
         {
            return false;
         }
         _loc2_=1;
         while(_loc2_<gigo.length)
         {
            _loc4_=gigo[_loc2_];
            _loc5_=_loc2_+1;
            while(_loc5_<gigo.length&&_loc4_<gupy)
            {
               _loc4_=_loc4_*gigo[_loc5_++];
            }
            _loc4_=_loc3_.lih(_loc4_);
            while(_loc2_<_loc5_)
            {
               if(_loc4_%gigo[_loc2_++]==0)
               {
                  return false;
               }
            }
         }
         return _loc3_.guhoryf(param1);
      }

      protected function guhoryf(param1:int) : Boolean {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc7_:Bupig = null;
         var _loc8_:* = 0;
         var _loc2_:Bupig = this.nyzujy(Bupig.woluditu);
         var _loc3_:int = _loc2_.pivibyfo();
         if(_loc3_<=0)
         {
            return false;
         }
         var _loc4_:Bupig = _loc2_.wowekuqan(_loc3_);
         var param1:* = param1+1>>1;
         if(param1>gigo.length)
         {
            param1=gigo.length;
         }
         var _loc5_:Bupig = new Bupig();
         var _loc6_:* = 0;
         while(_loc6_<param1)
         {
            _loc5_.tafez(gigo[_loc6_]);
            _loc7_=_loc5_.puvy(_loc4_,this);
            if(!(_loc7_.tir(Bupig.woluditu)==0)&&!(_loc7_.tir(_loc2_)==0))
            {
               _loc8_=1;
               while(_loc8_++<_loc3_&&!(_loc7_.tir(_loc2_)==0))
               {
                  _loc7_=_loc7_.dor(2,this);
                  if(_loc7_.tir(Bupig.woluditu)==0)
                  {
                     return false;
                  }
               }
               if(_loc7_.tir(_loc2_)!=0)
               {
                  return false;
               }
            }
            _loc6_++;
         }
         return true;
      }

      public function byles(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.zagiz(param1-1))
         {
            this.lytobyqam(Bupig.woluditu.miteqo(param1-1),this.zekim,this);
         }
         if(this.riraqygaj())
         {
            this.fojaf(1,0);
         }
         while(!this.molahife(param2))
         {
            this.fojaf(2,0);
            while(this.lepalutih()>param1)
            {
               this.lemimeh(Bupig.woluditu.miteqo(param1-1),this);
            }
         }
         return;
      }
   }

}