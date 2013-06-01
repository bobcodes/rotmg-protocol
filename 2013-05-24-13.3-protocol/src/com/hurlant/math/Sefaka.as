package com.hurlant.math
{
   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   import com.hurlant.util.Hex;


   public class Sefaka extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sefaka(param1:*=null, param2:int=0, param3:Boolean=false) {
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

      public static const talefod:int = 30;

      public static const dyho:int = 1<<talefod;

      public static const pysazuj:int = dyho-1;

      public static const negacaz:int = 52;

      public static const mil:Number = Math.pow(2,negacaz);

      public static const F1:int = negacaz-talefod;

      public static const F2:int = 2*talefod-negacaz;

      public static const buhy:Sefaka = fosojodyn(0);

      public static const riho:Sefaka = fosojodyn(1);

      public static function fosojodyn(param1:int) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         _loc2_.qagyru(param1);
         return _loc2_;
      }

      public static const najowucyq:Array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509];

      public static const jewiseqa:int = (1<<26)/najowucyq[najowucyq.length-1];

      public var t:int;

      wizyk.hurlant.nyqafiqab var s:int;

      wizyk.hurlant.nyqafiqab var a:Array;

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
            return "-"+this.wavodume().toString(param1);
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
         var _loc8_:int = talefod-_loc7_*talefod%_loc2_;
         if(_loc7_-->0)
         {
            if(_loc8_<talefod&&(_loc4_=this.a[_loc7_]>>_loc8_)>0)
            {
               _loc5_=true;
               _loc6_=_loc4_.toString(36);
            }
            while(_loc7_>=0)
            {
               if(_loc8_<_loc2_)
               {
                  _loc4_=(this.a[_loc7_]&1<<_loc8_-1)<<_loc2_-_loc8_;
                  _loc4_=_loc4_|this.a[--_loc7_]>>(_loc8_=_loc8_+(talefod-_loc2_));
               }
               else
               {
                  _loc4_=this.a[_loc7_]>>(_loc8_=_loc8_-_loc2_)&_loc3_;
                  if(_loc8_<=0)
                  {
                     _loc8_=_loc8_+talefod;
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
         var _loc6_:int = talefod-_loc5_*talefod%_loc2_;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         if(_loc5_-->0)
         {
            if(_loc6_<talefod&&(_loc4_=this.a[_loc5_]>>_loc6_)>0)
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
                  _loc4_=_loc4_|this.a[--_loc5_]>>(_loc6_=_loc6_+(talefod-_loc2_));
               }
               else
               {
                  _loc4_=this.a[_loc5_]>>(_loc6_=_loc6_-_loc2_)&_loc3_;
                  if(_loc6_<=0)
                  {
                     _loc6_=_loc6_+talefod;
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
            return -this.wavodume().valueOf();
         }
         var _loc1_:Number = 1;
         var _loc2_:Number = 0;
         var _loc3_:uint = 0;
         while(_loc3_<this.t)
         {
            _loc2_=_loc2_+this.a[_loc3_]*_loc1_;
            _loc1_=_loc1_*dyho;
            _loc3_++;
         }
         return _loc2_;
      }

      public function wavodume() : Sefaka {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sefaka = this.wady();
         buhy.raj(this,_loc1_);
         return _loc1_;
      }

      public function abs() : Sefaka {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.s<0?this.wavodume():this;
      }

      public function vazozul(param1:Sefaka) : int {
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

      wizyk.hurlant.nyqafiqab function bilas(param1:int) : int {
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

      public function hoz() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.t<=0)
         {
            return 0;
         }
         return talefod*(this.t-1)+this.bilas(this.a[this.t-1]^this.s&pysazuj);
      }

      public function fawihomel(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = this.wady();
         this.abs().dudybetad(param1,null,_loc2_);
         if(this.s<0&&_loc2_.vazozul(buhy)>0)
         {
            param1.raj(_loc2_,_loc2_);
         }
         return _loc2_;
      }

      public function ninumakym(param1:int, param2:Sefaka) : Sefaka {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Wemigiz = null;
         if(param1<256||(param2.sewizac()))
         {
            _loc3_=new Tuloq(param2);
         }
         else
         {
            _loc3_=new Hasusi(param2);
         }
         return this.exp(param1,_loc3_);
      }

      wizyk.hurlant.nyqafiqab function copyTo(param1:Sefaka) : void {
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

      wizyk.hurlant.nyqafiqab function qagyru(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
               this.a[0]=param1+dyho;
            }
            else
            {
               this.t=0;
            }
         }
         return;
      }

      wizyk.hurlant.nyqafiqab function fromArray(param1:ByteArray, param2:int, param3:Boolean=false) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
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
            if(_loc6_>=talefod)
            {
               _loc6_=_loc6_-talefod;
            }
         }
         if(!param3&&(param1[0]&128)==128)
         {
            this.s=-1;
            if(_loc6_>0)
            {
               this.a[this.t-1]=this.a[this.t-1]|1<<talefod-_loc6_-1<<_loc6_;
            }
         }
         this.qaqanub();
         param1.position=Math.min(_loc4_+param2,param1.length);
         return;
      }

      wizyk.hurlant.nyqafiqab function qaqanub() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = this.s&pysazuj;
         while(this.t>0&&this.a[this.t-1]==_loc1_)
         {
            this.t--;
         }
         return;
      }

      wizyk.hurlant.nyqafiqab function zytig(param1:int, param2:Sefaka) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
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

      wizyk.hurlant.nyqafiqab function hocu(param1:int, param2:Sefaka) : void {
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

      wizyk.hurlant.nyqafiqab function pyfadu(param1:int, param2:Sefaka) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:* = 0;
         var _loc3_:int = param1%talefod;
         var _loc4_:int = talefod-_loc3_;
         var _loc5_:int = 1<<_loc4_-1;
         var _loc6_:int = param1/talefod;
         var _loc7_:* = this.s<<_loc3_&pysazuj;
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
         param2.qaqanub();
         return;
      }

      wizyk.hurlant.nyqafiqab function zybecywad(param1:int, param2:Sefaka) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = 0;
         param2.s=this.s;
         var _loc3_:int = param1/talefod;
         if(_loc3_>=this.t)
         {
            param2.t=0;
            return;
         }
         var _loc4_:int = param1%talefod;
         var _loc5_:int = talefod-_loc4_;
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
         param2.qaqanub();
         return;
      }

      wizyk.hurlant.nyqafiqab function raj(param1:Sefaka, param2:Sefaka) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,this.t);
         while(_loc3_<_loc5_)
         {
            _loc4_=_loc4_+(this.a[_loc3_]-param1.a[_loc3_]);
            param2.a[_loc3_++]=_loc4_&pysazuj;
            _loc4_=_loc4_>>talefod;
         }
         if(param1.t<this.t)
         {
            _loc4_=_loc4_-param1.s;
            while(_loc3_<this.t)
            {
               _loc4_=_loc4_+this.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&pysazuj;
               _loc4_=_loc4_>>talefod;
            }
            _loc4_=_loc4_+this.s;
         }
         else
         {
            _loc4_=_loc4_+this.s;
            while(_loc3_<param1.t)
            {
               _loc4_=_loc4_-param1.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&pysazuj;
               _loc4_=_loc4_>>talefod;
            }
            _loc4_=_loc4_-param1.s;
         }
         param2.s=_loc4_<0?-1:0;
         if(_loc4_<-1)
         {
            param2.a[_loc3_++]=dyho+_loc4_;
         }
         else
         {
            if(_loc4_>0)
            {
               param2.a[_loc3_++]=_loc4_;
            }
         }
         param2.t=_loc3_;
         param2.qaqanub();
         return;
      }

      wizyk.hurlant.nyqafiqab function am(param1:int, param2:int, param3:Sefaka, param4:int, param5:int, param6:int) : int {
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

      wizyk.hurlant.nyqafiqab function janyfu(param1:Sefaka, param2:Sefaka) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Sefaka = this.abs();
         var _loc4_:Sefaka = param1.abs();
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
         param2.qaqanub();
         if(this.s!=param1.s)
         {
            buhy.raj(param2,param2);
         }
         return;
      }

      wizyk.hurlant.nyqafiqab function vibegodyg(param1:Sefaka) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc2_:Sefaka = this.abs();
         var _loc3_:int = param1.t=2*_loc2_.t;
         while(--_loc3_>=0)
         {
            param1.a[_loc3_]=0;
         }
         _loc3_=0;
         while(_loc3_<_loc2_.t-1)
         {
            _loc4_=_loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2*_loc3_,0,1);
            if((param1.a[_loc3_+_loc2_.t]=param1.a[_loc3_+_loc2_.t]+_loc2_.am(_loc3_+1,2*_loc2_.a[_loc3_],param1,2*_loc3_+1,_loc4_,_loc2_.t-_loc3_-1))>=dyho)
            {
               param1.a[_loc3_+_loc2_.t]=param1.a[_loc3_+_loc2_.t]-dyho;
               param1.a[_loc3_+_loc2_.t+1]=1;
            }
            _loc3_++;
         }
         if(param1.t>0)
         {
            param1.a[param1.t-1]=param1.a[param1.t-1]+_loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2*_loc3_,0,1);
         }
         param1.s=0;
         param1.qaqanub();
         return;
      }

      wizyk.hurlant.nyqafiqab function dudybetad(param1:Sefaka, param2:Sefaka=null, param3:Sefaka=null) : void {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var qd:int = 0;
         var m:Sefaka = param1;
         var q:Sefaka = param2;
         var r:Sefaka = param3;
         var pm:Sefaka = m.abs();
         if(pm.t<=0)
         {
            return;
         }
         var pt:Sefaka = this.abs();
         if(pt.t<pm.t)
         {
            if(q!=null)
            {
               q.qagyru(0);
            }
            if(r!=null)
            {
               this.copyTo(r);
            }
            return;
         }
         if(r==null)
         {
            r=this.wady();
         }
         var y:Sefaka = this.wady();
         var ts:int = this.s;
         var ms:int = m.s;
         var nsh:int = talefod-this.bilas(pm.a[pm.t-1]);
         if(nsh>0)
         {
            pm.pyfadu(nsh,y);
            pt.pyfadu(nsh,r);
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
         var d1:Number = mil/yt;
         var d2:Number = (1<<F1)/yt;
         var e:Number = 1<<F2;
         var i:int = r.t;
         var j:int = i-ys;
         var t:Sefaka = q==null?this.wady():q;
         y.zytig(j,t);
         if(r.vazozul(t)>=0)
         {
            r.a[r.t++]=1;
            r.raj(t,r);
         }
         riho.zytig(ys,t);
         t.raj(y,y);
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
            qd=r.a[--i]==y0?pysazuj:Number(r.a[i])*d1+(Number(r.a[i-1])+e)*d2;
            if((r.a[i]=r.a[i]+y.am(0,qd,r,j,0,ys))<qd)
            {
               y.zytig(j,t);
               r.raj(t,r);
               while(r.a[i]<--qd)
               {
                  r.raj(t,r);
               }
            }
         }
         if(q!=null)
         {
            r.hocu(ys,q);
            if(ts!=ms)
            {
               buhy.raj(q,q);
            }
         }
         r.t=ys;
         r.qaqanub();
         if(nsh>0)
         {
            r.zybecywad(nsh,r);
         }
         if(ts<0)
         {
            buhy.raj(r,r);
         }
         return;
      }

      wizyk.hurlant.nyqafiqab function mohaby() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
         _loc2_=_loc2_*(2-_loc1_*_loc2_%dyho)%dyho;
         return _loc2_>0?dyho-_loc2_:-_loc2_;
      }

      wizyk.hurlant.nyqafiqab function sewizac() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.t>0?this.a[0]&1:this.s)==0;
      }

      wizyk.hurlant.nyqafiqab function exp(param1:int, param2:Wemigiz) : Sefaka {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Sefaka = null;
         if(param1>4.294967295E9||param1<1)
         {
            return riho;
         }
         var _loc3_:Sefaka = this.wady();
         var _loc4_:Sefaka = this.wady();
         var _loc5_:Sefaka = param2.noriwereg(this);
         var _loc6_:int = this.bilas(param1)-1;
         _loc5_.copyTo(_loc3_);
         while(--_loc6_>=0)
         {
            param2.gisodeci(_loc3_,_loc4_);
            if((param1&1<<_loc6_)>0)
            {
               param2.syfykeses(_loc4_,_loc5_,_loc3_);
            }
            else
            {
               _loc7_=_loc3_;
               _loc3_=_loc4_;
               _loc4_=_loc7_;
            }
         }
         return param2.palyzi(_loc3_);
      }

      wizyk.hurlant.nyqafiqab function bokobyk(param1:String, param2:int) : int {
         return parseInt(param1.charAt(param2),36);
      }

      protected function wady() : * {
         return new Sefaka();
      }

      public function clone() : Sefaka {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Sefaka = new Sefaka();
         this.copyTo(_loc1_);
         return _loc1_;
      }

      public function cowa() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.s<0)
         {
            if(this.t==1)
            {
               return this.a[0]-dyho;
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
         return (this.a[1]&1<<32-talefod-1)<<talefod|this.a[0];
      }

      public function bopimuw() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.t==0?this.s:this.a[0]<<24>>24;
      }

      public function morub() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.t==0?this.s:this.a[0]<<16>>16;
      }

      protected function lize(param1:Number) : int {
         return Math.floor(Math.LN2*talefod/Math.log(param1));
      }

      public function qedowar() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
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

      protected function heh(param1:uint=10) : String {
         var _loc8_:* = true;
         var _loc9_:* = false;
         if(this.qedowar()==0||param1<2||param1>32)
         {
            return "0";
         }
         var _loc2_:int = this.lize(param1);
         var _loc3_:Number = Math.pow(param1,_loc2_);
         var _loc4_:Sefaka = fosojodyn(_loc3_);
         var _loc5_:Sefaka = this.wady();
         var _loc6_:Sefaka = this.wady();
         var _loc7_:* = "";
         this.dudybetad(_loc4_,_loc5_,_loc6_);
         while(_loc5_.qedowar()>0)
         {
            _loc7_=(_loc3_+_loc6_.cowa()).toString(param1).substr(1)+_loc7_;
            _loc5_.dudybetad(_loc4_,_loc5_,_loc6_);
         }
         return _loc6_.cowa().toString(param1)+_loc7_;
      }

      protected function cowyf(param1:String, param2:int=10) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc9_:* = 0;
         this.qagyru(0);
         var _loc3_:int = this.lize(param2);
         var _loc4_:Number = Math.pow(param2,_loc3_);
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         while(_loc8_<param1.length)
         {
            _loc9_=this.bokobyk(param1,_loc8_);
            if(_loc9_<0)
            {
               if(param1.charAt(_loc8_)=="-"&&this.qedowar()==0)
               {
                  _loc5_=true;
               }
            }
            else
            {
               _loc7_=param2*_loc7_+_loc9_;
               if(++_loc6_>=_loc3_)
               {
                  this.gogol(_loc4_);
                  this.dyfi(_loc7_,0);
                  _loc6_=0;
                  _loc7_=0;
               }
            }
            _loc8_++;
         }
         if(_loc6_>0)
         {
            this.gogol(Math.pow(param2,_loc6_));
            this.dyfi(_loc7_,0);
         }
         return;
      }

      public function fyb() : ByteArray {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = 0;
         var _loc1_:int = this.t;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_[0]=this.s;
         var _loc3_:int = talefod-_loc1_*talefod%8;
         var _loc5_:* = 0;
         if(_loc1_-->0)
         {
            if(_loc3_<talefod&&!((_loc4_=this.a[_loc1_]>>_loc3_)==(this.s&pysazuj)>>_loc3_))
            {
               _loc2_[_loc5_++]=_loc4_|this.s<<talefod-_loc3_;
            }
            while(_loc1_>=0)
            {
               if(_loc3_<8)
               {
                  _loc4_=(this.a[_loc1_]&1<<_loc3_-1)<<8-_loc3_;
                  _loc4_=_loc4_|this.a[--_loc1_]>>(_loc3_=_loc3_+(talefod-8));
               }
               else
               {
                  _loc4_=this.a[_loc1_]>>(_loc3_=_loc3_-8)&255;
                  if(_loc3_<=0)
                  {
                     _loc3_=_loc3_+talefod;
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

      public function equals(param1:Sefaka) : Boolean {
         return this.vazozul(param1)==0;
      }

      public function min(param1:Sefaka) : Sefaka {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.vazozul(param1)<0?this:param1;
      }

      public function max(param1:Sefaka) : Sefaka {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.vazozul(param1)>0?this:param1;
      }

      protected function vusidy(param1:Sefaka, param2:Function, param3:Sefaka) : void {
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
            _loc5_=param1.s&pysazuj;
            _loc4_=_loc6_;
            while(_loc4_<this.t)
            {
               param3.a[_loc4_]=param2(this.a[_loc4_],_loc5_);
               _loc4_++;
            }
            param3.t=this.t;
         }
         else
         {
            _loc5_=this.s&pysazuj;
            _loc4_=_loc6_;
            while(_loc4_<param1.t)
            {
               param3.a[_loc4_]=param2(_loc5_,param1.a[_loc4_]);
               _loc4_++;
            }
            param3.t=param1.t;
         }
         param3.s=param2(this.s,param1.s);
         param3.qaqanub();
         return;
      }

      private function robofabac(param1:int, param2:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1&param2;
      }

      public function nyj(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         this.vusidy(param1,this.robofabac,_loc2_);
         return _loc2_;
      }

      private function mujyz(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1|param2;
      }

      public function or(param1:Sefaka) : Sefaka {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sefaka = new Sefaka();
         this.vusidy(param1,this.mujyz,_loc2_);
         return _loc2_;
      }

      private function najas(param1:int, param2:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1^param2;
      }

      public function pyfofam(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         this.vusidy(param1,this.najas,_loc2_);
         return _loc2_;
      }

      private function bepeku(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1&~param2;
      }

      public function hobypadi(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         this.vusidy(param1,this.bepeku,_loc2_);
         return _loc2_;
      }

      public function not() : Sefaka {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Sefaka = new Sefaka();
         var _loc2_:* = 0;
         while(_loc2_<this.t)
         {
            _loc1_[_loc2_]=pysazuj&~this.a[_loc2_];
            _loc2_++;
         }
         _loc1_.t=this.t;
         _loc1_.s=~this.s;
         return _loc1_;
      }

      public function lywus(param1:int) : Sefaka {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sefaka = new Sefaka();
         if(param1<0)
         {
            this.zybecywad(-param1,_loc2_);
         }
         else
         {
            this.pyfadu(param1,_loc2_);
         }
         return _loc2_;
      }

      public function focas(param1:int) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         if(param1<0)
         {
            this.pyfadu(-param1,_loc2_);
         }
         else
         {
            this.zybecywad(param1,_loc2_);
         }
         return _loc2_;
      }

      private function juruqa(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
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

      public function nufa() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.t)
         {
            if(this.a[_loc1_]!=0)
            {
               return _loc1_*talefod+this.juruqa(this.a[_loc1_]);
            }
            _loc1_++;
         }
         if(this.s<0)
         {
            return this.t*talefod;
         }
         return -1;
      }

      private function jigyj(param1:int) : int {
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

      public function fyjywit() : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = this.s&pysazuj;
         var _loc3_:* = 0;
         while(_loc3_<this.t)
         {
            _loc1_=_loc1_+this.jigyj(this.a[_loc3_]^_loc2_);
            _loc3_++;
         }
         return _loc1_;
      }

      public function botodokon(param1:int) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = Math.floor(param1/talefod);
         if(_loc2_>=this.t)
         {
            return !(this.s==0);
         }
         return !((this.a[_loc2_]&1<<param1%talefod)==0);
      }

      protected function wocun(param1:int, param2:Function) : Sefaka {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Sefaka = Sefaka.riho.lywus(param1);
         this.vusidy(_loc3_,param2,_loc3_);
         return _loc3_;
      }

      public function fucudytap(param1:int) : Sefaka {
         return this.wocun(param1,this.mujyz);
      }

      public function patypib(param1:int) : Sefaka {
         return this.wocun(param1,this.bepeku);
      }

      public function sorim(param1:int) : Sefaka {
         return this.wocun(param1,this.najas);
      }

      protected function addTo(param1:Sefaka, param2:Sefaka) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,this.t);
         while(_loc3_<_loc5_)
         {
            _loc4_=_loc4_+(this.a[_loc3_]+param1.a[_loc3_]);
            param2.a[_loc3_++]=_loc4_&pysazuj;
            _loc4_=_loc4_>>talefod;
         }
         if(param1.t<this.t)
         {
            _loc4_=_loc4_+param1.s;
            while(_loc3_<this.t)
            {
               _loc4_=_loc4_+this.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&pysazuj;
               _loc4_=_loc4_>>talefod;
            }
            _loc4_=_loc4_+this.s;
         }
         else
         {
            _loc4_=_loc4_+this.s;
            while(_loc3_<param1.t)
            {
               _loc4_=_loc4_+param1.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&pysazuj;
               _loc4_=_loc4_>>talefod;
            }
            _loc4_=_loc4_+param1.s;
         }
         param2.s=_loc4_<0?-1:0;
         if(_loc4_>0)
         {
            param2.a[_loc3_++]=_loc4_;
         }
         else
         {
            if(_loc4_<-1)
            {
               param2.a[_loc3_++]=dyho+_loc4_;
            }
         }
         param2.t=_loc3_;
         param2.qaqanub();
         return;
      }

      public function add(param1:Sefaka) : Sefaka {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sefaka = new Sefaka();
         this.addTo(param1,_loc2_);
         return _loc2_;
      }

      public function kypuwug(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         this.raj(param1,_loc2_);
         return _loc2_;
      }

      public function pypu(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         this.janyfu(param1,_loc2_);
         return _loc2_;
      }

      public function kapyly(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         this.dudybetad(param1,_loc2_,null);
         return _loc2_;
      }

      public function dymazi(param1:Sefaka) : Sefaka {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sefaka = new Sefaka();
         this.dudybetad(param1,null,_loc2_);
         return _loc2_;
      }

      public function nit(param1:Sefaka) : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         var _loc3_:Sefaka = new Sefaka();
         this.dudybetad(param1,_loc2_,_loc3_);
         return [_loc2_,_loc3_];
      }

      wizyk.hurlant.nyqafiqab function gogol(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.a[this.t]=this.am(0,param1-1,this,0,0,this.t);
         this.t++;
         this.qaqanub();
         return;
      }

      wizyk.hurlant.nyqafiqab function dyfi(param1:int, param2:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         while(this.t<=param2)
         {
            this.a[this.t++]=0;
         }
         this.a[param2]=this.a[param2]+param1;
         while(this.a[param2]>=dyho)
         {
            this.a[param2]=this.a[param2]-dyho;
            if(++param2>=this.t)
            {
               this.a[this.t++]=0;
            }
            this.a[param2]++;
         }
         return;
      }

      public function pow(param1:int) : Sefaka {
         return this.exp(param1,new Zukel());
      }

      wizyk.hurlant.nyqafiqab function towivag(param1:Sefaka, param2:int, param3:Sefaka) : void {
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
         param3.qaqanub();
         return;
      }

      wizyk.hurlant.nyqafiqab function cob(param1:Sefaka, param2:int, param3:Sefaka) : void {
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
         param3.qaqanub();
         param3.hocu(1,param3);
         return;
      }

      public function fyleli(param1:Sefaka, param2:Sefaka) : Sefaka {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc4_:* = 0;
         var _loc6_:Wemigiz = null;
         var _loc12_:* = 0;
         var _loc15_:Sefaka = null;
         var _loc16_:Sefaka = null;
         var _loc3_:int = param1.hoz();
         var _loc5_:Sefaka = fosojodyn(1);
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
            _loc6_=new Tuloq(param2);
         }
         else
         {
            if(param2.sewizac())
            {
               _loc6_=new Fajy(param2);
            }
            else
            {
               _loc6_=new Hasusi(param2);
            }
         }
         var _loc7_:Array = [];
         var _loc8_:* = 3;
         var _loc9_:int = _loc4_-1;
         var _loc10_:int = 1<<_loc4_-1;
         _loc7_[1]=_loc6_.noriwereg(this);
         if(_loc4_>1)
         {
            _loc16_=new Sefaka();
            _loc6_.gisodeci(_loc7_[1],_loc16_);
            while(_loc8_<=_loc10_)
            {
               _loc7_[_loc8_]=new Sefaka();
               _loc6_.syfykeses(_loc16_,_loc7_[_loc8_-2],_loc7_[_loc8_]);
               _loc8_=_loc8_+2;
            }
         }
         var _loc11_:int = param1.t-1;
         var _loc13_:* = true;
         var _loc14_:Sefaka = new Sefaka();
         _loc3_=this.bilas(param1.a[_loc11_])-1;
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
                  _loc12_=_loc12_|param1.a[_loc11_-1]>>talefod+_loc3_-_loc9_;
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
               _loc3_=_loc3_+talefod;
               _loc11_--;
            }
            _loc7_[_loc12_].copyTo(_loc5_);
            _loc13_=false;
            while(_loc11_>=0&&(param1.a[_loc11_]&1<<_loc3_)==0)
            {
               _loc6_.gisodeci(_loc5_,_loc14_);
               _loc15_=_loc5_;
               _loc5_=_loc14_;
               _loc14_=_loc15_;
               if(--_loc3_<0)
               {
                  _loc3_=talefod-1;
                  _loc11_--;
               }
            }
         }
         return _loc6_.palyzi(_loc5_);
      }

      public function nima(param1:Sefaka) : Sefaka {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc6_:Sefaka = null;
         var _loc2_:Sefaka = this.s<0?this.wavodume():this.clone();
         var _loc3_:Sefaka = param1.s<0?param1.wavodume():param1.clone();
         if(_loc2_.vazozul(_loc3_)<0)
         {
            _loc6_=_loc2_;
            _loc2_=_loc3_;
            _loc3_=_loc6_;
         }
         var _loc4_:int = _loc2_.nufa();
         var _loc5_:int = _loc3_.nufa();
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
            _loc2_.zybecywad(_loc5_,_loc2_);
            _loc3_.zybecywad(_loc5_,_loc3_);
         }
         while(_loc2_.qedowar()>0)
         {
            if((_loc4_=_loc2_.nufa())>0)
            {
               _loc2_.zybecywad(_loc4_,_loc2_);
            }
            if((_loc4_=_loc3_.nufa())>0)
            {
               _loc3_.zybecywad(_loc4_,_loc3_);
            }
            if(_loc2_.vazozul(_loc3_)>=0)
            {
               _loc2_.raj(_loc3_,_loc2_);
               _loc2_.zybecywad(1,_loc2_);
            }
            else
            {
               _loc3_.raj(_loc2_,_loc3_);
               _loc3_.zybecywad(1,_loc3_);
            }
         }
         if(_loc5_>0)
         {
            _loc3_.pyfadu(_loc5_,_loc3_);
         }
         return _loc3_;
      }

      protected function vinede(param1:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         if(param1<=0)
         {
            return 0;
         }
         var _loc2_:int = dyho%param1;
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

      public function kowofuja(param1:Sefaka) : Sefaka {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:Boolean = param1.sewizac();
         if((this.sewizac())&&(_loc2_)||param1.qedowar()==0)
         {
            return Sefaka.buhy;
         }
         var _loc3_:Sefaka = param1.clone();
         var _loc4_:Sefaka = this.clone();
         var _loc5_:Sefaka = fosojodyn(1);
         var _loc6_:Sefaka = fosojodyn(0);
         var _loc7_:Sefaka = fosojodyn(0);
         var _loc8_:Sefaka = fosojodyn(1);
         while(_loc3_.qedowar()!=0)
         {
            while(_loc3_.sewizac())
            {
               _loc3_.zybecywad(1,_loc3_);
               if(_loc2_)
               {
                  if(!_loc5_.sewizac()||!_loc6_.sewizac())
                  {
                     _loc5_.addTo(this,_loc5_);
                     _loc6_.raj(param1,_loc6_);
                  }
                  _loc5_.zybecywad(1,_loc5_);
               }
               else
               {
                  if(!_loc6_.sewizac())
                  {
                     _loc6_.raj(param1,_loc6_);
                  }
               }
               _loc6_.zybecywad(1,_loc6_);
            }
            while(_loc4_.sewizac())
            {
               _loc4_.zybecywad(1,_loc4_);
               if(_loc2_)
               {
                  if(!_loc7_.sewizac()||!_loc8_.sewizac())
                  {
                     _loc7_.addTo(this,_loc7_);
                     _loc8_.raj(param1,_loc8_);
                  }
                  _loc7_.zybecywad(1,_loc7_);
               }
               else
               {
                  if(!_loc8_.sewizac())
                  {
                     _loc8_.raj(param1,_loc8_);
                  }
               }
               _loc8_.zybecywad(1,_loc8_);
            }
            if(_loc3_.vazozul(_loc4_)>=0)
            {
               _loc3_.raj(_loc4_,_loc3_);
               if(_loc2_)
               {
                  _loc5_.raj(_loc7_,_loc5_);
               }
               _loc6_.raj(_loc8_,_loc6_);
            }
            else
            {
               _loc4_.raj(_loc3_,_loc4_);
               if(_loc2_)
               {
                  _loc7_.raj(_loc5_,_loc7_);
               }
               _loc8_.raj(_loc6_,_loc8_);
            }
         }
         if(_loc4_.vazozul(Sefaka.riho)!=0)
         {
            return Sefaka.buhy;
         }
         if(_loc8_.vazozul(param1)>=0)
         {
            return _loc8_.kypuwug(param1);
         }
         if(_loc8_.qedowar()<0)
         {
            _loc8_.addTo(param1,_loc8_);
            if(_loc8_.qedowar()<0)
            {
               return _loc8_.add(param1);
            }
            return _loc8_;
         }
         return _loc8_;
      }

      public function suvoryj(param1:int) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:Sefaka = this.abs();
         if(_loc3_.t==1&&_loc3_.a[0]<=najowucyq[najowucyq.length-1])
         {
            _loc2_=0;
            while(_loc2_<najowucyq.length)
            {
               if(_loc3_[0]==najowucyq[_loc2_])
               {
                  return true;
               }
               _loc2_++;
            }
            return false;
         }
         if(_loc3_.sewizac())
         {
            return false;
         }
         _loc2_=1;
         while(_loc2_<najowucyq.length)
         {
            _loc4_=najowucyq[_loc2_];
            _loc5_=_loc2_+1;
            while(_loc5_<najowucyq.length&&_loc4_<jewiseqa)
            {
               _loc4_=_loc4_*najowucyq[_loc5_++];
            }
            _loc4_=_loc3_.vinede(_loc4_);
            while(_loc2_<_loc5_)
            {
               if(_loc4_%najowucyq[_loc2_++]==0)
               {
                  return false;
               }
            }
         }
         return _loc3_.qibag(param1);
      }

      protected function qibag(param1:int) : Boolean {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc7_:Sefaka = null;
         var _loc8_:* = 0;
         var _loc2_:Sefaka = this.kypuwug(Sefaka.riho);
         var _loc3_:int = _loc2_.nufa();
         if(_loc3_<=0)
         {
            return false;
         }
         var _loc4_:Sefaka = _loc2_.focas(_loc3_);
         var param1:* = param1+1>>1;
         if(param1>najowucyq.length)
         {
            param1=najowucyq.length;
         }
         var _loc5_:Sefaka = new Sefaka();
         var _loc6_:* = 0;
         while(_loc6_<param1)
         {
            _loc5_.qagyru(najowucyq[_loc6_]);
            _loc7_=_loc5_.fyleli(_loc4_,this);
            if(!(_loc7_.vazozul(Sefaka.riho)==0)&&!(_loc7_.vazozul(_loc2_)==0))
            {
               _loc8_=1;
               while(_loc8_++<_loc3_&&!(_loc7_.vazozul(_loc2_)==0))
               {
                  _loc7_=_loc7_.ninumakym(2,this);
                  if(_loc7_.vazozul(Sefaka.riho)==0)
                  {
                     return false;
                  }
               }
               if(_loc7_.vazozul(_loc2_)!=0)
               {
                  return false;
               }
            }
            _loc6_++;
         }
         return true;
      }

      public function miver(param1:int, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.botodokon(param1-1))
         {
            this.vusidy(Sefaka.riho.lywus(param1-1),this.mujyz,this);
         }
         if(this.sewizac())
         {
            this.dyfi(1,0);
         }
         while(!this.suvoryj(param2))
         {
            this.dyfi(2,0);
            while(this.hoz()>param1)
            {
               this.raj(Sefaka.riho.lywus(param1-1),this);
            }
         }
         return;
      }
   }

}