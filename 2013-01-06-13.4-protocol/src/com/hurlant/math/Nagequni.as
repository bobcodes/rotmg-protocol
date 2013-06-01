package com.hurlant.math
{
[CLASS1737]   import com.hurlant.crypto.prng.Random;
   import com.hurlant.util.Memory;
   import flash.utils.ByteArray;
   import com.hurlant.util.Hex;


   public class Nagequni extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nagequni(param1:*=null, param2:int=0, param3:Boolean=false) {
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

      public static const siru:int = 30;

      public static const zyj:int = 1<<siru;

      public static const loqyhasyl:int = zyj-1;

      public static const pidani:int = 52;

      public static const qelohah:Number = Math.pow(2,pidani);

      public static const F1:int = pidani-siru;

      public static const F2:int = 2*siru-pidani;

      public static const giq:Nagequni = fujunevew(0);

      public static const gyzidavar:Nagequni = fujunevew(1);

      public static function fujunevew(param1:int) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         _loc2_.dacupa(param1);
         return _loc2_;
      }

      public static const fogafy:Array = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509];

      public static const wucotek:int = (1<<26)/fogafy[fogafy.length-1];

      public var t:int;

      bugomik.hurlant.rysapiv var s:int;

      bugomik.hurlant.rysapiv var a:Array;

      public function dispose() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
            return "-"+this.gizy().toString(param1);
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
         var _loc8_:int = siru-_loc7_*siru%_loc2_;
         if(_loc7_-->0)
         {
            if(_loc8_<siru&&(_loc4_=this.a[_loc7_]>>_loc8_)>0)
            {
               _loc5_=true;
               _loc6_=_loc4_.toString(36);
            }
            while(_loc7_>=0)
            {
               if(_loc8_<_loc2_)
               {
                  _loc4_=(this.a[_loc7_]&1<<_loc8_-1)<<_loc2_-_loc8_;
                  _loc4_=_loc4_|this.a[--_loc7_]>>(_loc8_=_loc8_+(siru-_loc2_));
               }
               else
               {
                  _loc4_=this.a[_loc7_]>>(_loc8_=_loc8_-_loc2_)&_loc3_;
                  if(_loc8_<=0)
                  {
                     _loc8_=_loc8_+siru;
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
         var _loc6_:int = siru-_loc5_*siru%_loc2_;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         if(_loc5_-->0)
         {
            if(_loc6_<siru&&(_loc4_=this.a[_loc5_]>>_loc6_)>0)
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
                  _loc4_=_loc4_|this.a[--_loc5_]>>(_loc6_=_loc6_+(siru-_loc2_));
               }
               else
               {
                  _loc4_=this.a[_loc5_]>>(_loc6_=_loc6_-_loc2_)&_loc3_;
                  if(_loc6_<=0)
                  {
                     _loc6_=_loc6_+siru;
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
            return -this.gizy().valueOf();
         }
         var _loc1_:Number = 1;
         var _loc2_:Number = 0;
         var _loc3_:uint = 0;
         while(_loc3_<this.t)
         {
            _loc2_=_loc2_+this.a[_loc3_]*_loc1_;
            _loc1_=_loc1_*zyj;
            _loc3_++;
         }
         return _loc2_;
      }

      public function gizy() : Nagequni {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Nagequni = this.vysevunul();
         giq.suqu(this,_loc1_);
         return _loc1_;
      }

      public function abs() : Nagequni {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.s<0?this.gizy():this;
      }

      public function hewudimoj(param1:Nagequni) : int {
         var _loc4_:* = true;
         var _loc5_:* = false;
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

      bugomik.hurlant.rysapiv function qekapuq(param1:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
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

      public function kyruwypir() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.t<=0)
         {
            return 0;
         }
         return siru*(this.t-1)+this.qekapuq(this.a[this.t-1]^this.s&loqyhasyl);
      }

      public function josazuny(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = this.vysevunul();
         this.abs().guraq(param1,null,_loc2_);
         if(this.s<0&&_loc2_.hewudimoj(giq)>0)
         {
            param1.suqu(_loc2_,_loc2_);
         }
         return _loc2_;
      }

      public function tocy(param1:int, param2:Nagequni) : Nagequni {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Fik = null;
         if(param1<256||(param2.zicohitir()))
         {
            _loc3_=new Cajes(param2);
         }
         else
         {
            _loc3_=new Teqeqytyk(param2);
         }
         return this.exp(param1,_loc3_);
      }

      bugomik.hurlant.rysapiv function copyTo(param1:Nagequni) : void {
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

      bugomik.hurlant.rysapiv function dacupa(param1:int) : void {
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
               this.a[0]=param1+zyj;
            }
            else
            {
               this.t=0;
            }
         }
         return;
      }

      bugomik.hurlant.rysapiv function fromArray(param1:ByteArray, param2:int, param3:Boolean=false) : void {
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
            if(_loc6_>=siru)
            {
               _loc6_=_loc6_-siru;
            }
         }
         if(!param3&&(param1[0]&128)==128)
         {
            this.s=-1;
            if(_loc6_>0)
            {
               this.a[this.t-1]=this.a[this.t-1]|1<<siru-_loc6_-1<<_loc6_;
            }
         }
         this.kuqejife();
         param1.position=Math.min(_loc4_+param2,param1.length);
         return;
      }

      bugomik.hurlant.rysapiv function kuqejife() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = this.s&loqyhasyl;
         while(this.t>0&&this.a[this.t-1]==_loc1_)
         {
            this.t--;
         }
         return;
      }

      bugomik.hurlant.rysapiv function cupowuho(param1:int, param2:Nagequni) : void {
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

      bugomik.hurlant.rysapiv function qaj(param1:int, param2:Nagequni) : void {
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

      bugomik.hurlant.rysapiv function rebokiqev(param1:int, param2:Nagequni) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:* = 0;
         var _loc3_:int = param1%siru;
         var _loc4_:int = siru-_loc3_;
         var _loc5_:int = 1<<_loc4_-1;
         var _loc6_:int = param1/siru;
         var _loc7_:* = this.s<<_loc3_&loqyhasyl;
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
         param2.kuqejife();
         return;
      }

      bugomik.hurlant.rysapiv function giduhyne(param1:int, param2:Nagequni) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = 0;
         param2.s=this.s;
         var _loc3_:int = param1/siru;
         if(_loc3_>=this.t)
         {
            param2.t=0;
            return;
         }
         var _loc4_:int = param1%siru;
         var _loc5_:int = siru-_loc4_;
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
         param2.kuqejife();
         return;
      }

      bugomik.hurlant.rysapiv function suqu(param1:Nagequni, param2:Nagequni) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,this.t);
         while(_loc3_<_loc5_)
         {
            _loc4_=_loc4_+(this.a[_loc3_]-param1.a[_loc3_]);
            param2.a[_loc3_++]=_loc4_&loqyhasyl;
            _loc4_=_loc4_>>siru;
         }
         if(param1.t<this.t)
         {
            _loc4_=_loc4_-param1.s;
            while(_loc3_<this.t)
            {
               _loc4_=_loc4_+this.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&loqyhasyl;
               _loc4_=_loc4_>>siru;
            }
            _loc4_=_loc4_+this.s;
         }
         else
         {
            _loc4_=_loc4_+this.s;
            while(_loc3_<param1.t)
            {
               _loc4_=_loc4_-param1.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&loqyhasyl;
               _loc4_=_loc4_>>siru;
            }
            _loc4_=_loc4_-param1.s;
         }
         param2.s=_loc4_<0?-1:0;
         if(_loc4_<-1)
         {
            param2.a[_loc3_++]=zyj+_loc4_;
         }
         else
         {
            if(_loc4_>0)
            {
               param2.a[_loc3_++]=_loc4_;
            }
         }
         param2.t=_loc3_;
         param2.kuqejife();
         return;
      }

      bugomik.hurlant.rysapiv function am(param1:int, param2:int, param3:Nagequni, param4:int, param5:int, param6:int) : int {
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

      bugomik.hurlant.rysapiv function sawowi(param1:Nagequni, param2:Nagequni) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Nagequni = this.abs();
         var _loc4_:Nagequni = param1.abs();
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
         param2.kuqejife();
         if(this.s!=param1.s)
         {
            giq.suqu(param2,param2);
         }
         return;
      }

      bugomik.hurlant.rysapiv function wekigedy(param1:Nagequni) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc2_:Nagequni = this.abs();
         var _loc3_:int = param1.t=2*_loc2_.t;
         while(--_loc3_>=0)
         {
            param1.a[_loc3_]=0;
         }
         _loc3_=0;
         while(_loc3_<_loc2_.t-1)
         {
            _loc4_=_loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2*_loc3_,0,1);
            if((param1.a[_loc3_+_loc2_.t]=param1.a[_loc3_+_loc2_.t]+_loc2_.am(_loc3_+1,2*_loc2_.a[_loc3_],param1,2*_loc3_+1,_loc4_,_loc2_.t-_loc3_-1))>=zyj)
            {
               param1.a[_loc3_+_loc2_.t]=param1.a[_loc3_+_loc2_.t]-zyj;
               param1.a[_loc3_+_loc2_.t+1]=1;
            }
            _loc3_++;
         }
         if(param1.t>0)
         {
            param1.a[param1.t-1]=param1.a[param1.t-1]+_loc2_.am(_loc3_,_loc2_.a[_loc3_],param1,2*_loc3_,0,1);
         }
         param1.s=0;
         param1.kuqejife();
         return;
      }

      bugomik.hurlant.rysapiv function guraq(param1:Nagequni, param2:Nagequni=null, param3:Nagequni=null) : void {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var qd:int = 0;
         var m:Nagequni = param1;
         var q:Nagequni = param2;
         var r:Nagequni = param3;
         var pm:Nagequni = m.abs();
         if(pm.t<=0)
         {
            return;
         }
         var pt:Nagequni = this.abs();
         if(pt.t<pm.t)
         {
            if(q!=null)
            {
               q.dacupa(0);
            }
            if(r!=null)
            {
               this.copyTo(r);
            }
            return;
         }
         if(r==null)
         {
            r=this.vysevunul();
         }
         var y:Nagequni = this.vysevunul();
         var ts:int = this.s;
         var ms:int = m.s;
         var nsh:int = siru-this.qekapuq(pm.a[pm.t-1]);
         if(nsh>0)
         {
            pm.rebokiqev(nsh,y);
            pt.rebokiqev(nsh,r);
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
         var d1:Number = qelohah/yt;
         var d2:Number = (1<<F1)/yt;
         var e:Number = 1<<F2;
         var i:int = r.t;
         var j:int = i-ys;
         var t:Nagequni = q==null?this.vysevunul():q;
         y.cupowuho(j,t);
         if(r.hewudimoj(t)>=0)
         {
            r.a[r.t++]=1;
            r.suqu(t,r);
         }
         gyzidavar.cupowuho(ys,t);
         t.suqu(y,y);
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
            qd=r.a[--i]==y0?loqyhasyl:Number(r.a[i])*d1+(Number(r.a[i-1])+e)*d2;
            if((r.a[i]=r.a[i]+y.am(0,qd,r,j,0,ys))<qd)
            {
               y.cupowuho(j,t);
               r.suqu(t,r);
               while(r.a[i]<--qd)
               {
                  r.suqu(t,r);
               }
            }
         }
         if(q!=null)
         {
            r.qaj(ys,q);
            if(ts!=ms)
            {
               giq.suqu(q,q);
            }
         }
         r.t=ys;
         r.kuqejife();
         if(nsh>0)
         {
            r.giduhyne(nsh,r);
         }
         if(ts<0)
         {
            giq.suqu(r,r);
         }
         return;
      }

      bugomik.hurlant.rysapiv function habu() : int {
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
         _loc2_=_loc2_*(2-_loc1_*_loc2_%zyj)%zyj;
         return _loc2_>0?zyj-_loc2_:-_loc2_;
      }

      bugomik.hurlant.rysapiv function zicohitir() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return (this.t>0?this.a[0]&1:this.s)==0;
      }

      bugomik.hurlant.rysapiv function exp(param1:int, param2:Fik) : Nagequni {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Nagequni = null;
         if(param1>4.294967295E9||param1<1)
         {
            return gyzidavar;
         }
         var _loc3_:Nagequni = this.vysevunul();
         var _loc4_:Nagequni = this.vysevunul();
         var _loc5_:Nagequni = param2.gokyv(this);
         var _loc6_:int = this.qekapuq(param1)-1;
         _loc5_.copyTo(_loc3_);
         while(--_loc6_>=0)
         {
            param2.kivisus(_loc3_,_loc4_);
            if((param1&1<<_loc6_)>0)
            {
               param2.nyroh(_loc4_,_loc5_,_loc3_);
            }
            else
            {
               _loc7_=_loc3_;
               _loc3_=_loc4_;
               _loc4_=_loc7_;
            }
         }
         return param2.lojosi(_loc3_);
      }

      bugomik.hurlant.rysapiv function dafaneto(param1:String, param2:int) : int {
         return parseInt(param1.charAt(param2),36);
      }

      protected function vysevunul() : * {
         return new Nagequni();
      }

      public function clone() : Nagequni {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Nagequni = new Nagequni();
         this.copyTo(_loc1_);
         return _loc1_;
      }

      public function raqogywi() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.s<0)
         {
            if(this.t==1)
            {
               return this.a[0]-zyj;
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
         return (this.a[1]&1<<32-siru-1)<<siru|this.a[0];
      }

      public function zaranu() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.t==0?this.s:this.a[0]<<24>>24;
      }

      public function siweqode() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.t==0?this.s:this.a[0]<<16>>16;
      }

      protected function civunakak(param1:Number) : int {
         return Math.floor(Math.LN2*siru/Math.log(param1));
      }

      public function zesyzirov() : int {
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

      protected function hosiqih(param1:uint=10) : String {
         var _loc8_:* = false;
         var _loc9_:* = true;
         if(this.zesyzirov()==0||param1<2||param1>32)
         {
            return "0";
         }
         var _loc2_:int = this.civunakak(param1);
         var _loc3_:Number = Math.pow(param1,_loc2_);
         var _loc4_:Nagequni = fujunevew(_loc3_);
         var _loc5_:Nagequni = this.vysevunul();
         var _loc6_:Nagequni = this.vysevunul();
         var _loc7_:* = "";
         this.guraq(_loc4_,_loc5_,_loc6_);
         while(_loc5_.zesyzirov()>0)
         {
            _loc7_=(_loc3_+_loc6_.raqogywi()).toString(param1).substr(1)+_loc7_;
            _loc5_.guraq(_loc4_,_loc5_,_loc6_);
         }
         return _loc6_.raqogywi().toString(param1)+_loc7_;
      }

      protected function qoqeqa(param1:String, param2:int=10) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc9_:* = 0;
         this.dacupa(0);
         var _loc3_:int = this.civunakak(param2);
         var _loc4_:Number = Math.pow(param2,_loc3_);
         var _loc5_:* = false;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         while(_loc8_<param1.length)
         {
            _loc9_=this.dafaneto(param1,_loc8_);
            if(_loc9_<0)
            {
               if(param1.charAt(_loc8_)=="-"&&this.zesyzirov()==0)
               {
                  _loc5_=true;
               }
            }
            else
            {
               _loc7_=param2*_loc7_+_loc9_;
               if(++_loc6_>=_loc3_)
               {
                  this.nozy(_loc4_);
                  this.hajop(_loc7_,0);
                  _loc6_=0;
                  _loc7_=0;
               }
            }
            _loc8_++;
         }
         if(_loc6_>0)
         {
            this.nozy(Math.pow(param2,_loc6_));
            this.hajop(_loc7_,0);
         }
         return;
      }

      public function jecirozaw() : ByteArray {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = 0;
         var _loc1_:int = this.t;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_[0]=this.s;
         var _loc3_:int = siru-_loc1_*siru%8;
         var _loc5_:* = 0;
         if(_loc1_-->0)
         {
            if(_loc3_<siru&&!((_loc4_=this.a[_loc1_]>>_loc3_)==(this.s&loqyhasyl)>>_loc3_))
            {
               _loc2_[_loc5_++]=_loc4_|this.s<<siru-_loc3_;
            }
            while(_loc1_>=0)
            {
               if(_loc3_<8)
               {
                  _loc4_=(this.a[_loc1_]&1<<_loc3_-1)<<8-_loc3_;
                  _loc4_=_loc4_|this.a[--_loc1_]>>(_loc3_=_loc3_+(siru-8));
               }
               else
               {
                  _loc4_=this.a[_loc1_]>>(_loc3_=_loc3_-8)&255;
                  if(_loc3_<=0)
                  {
                     _loc3_=_loc3_+siru;
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

      public function equals(param1:Nagequni) : Boolean {
         return this.hewudimoj(param1)==0;
      }

      public function min(param1:Nagequni) : Nagequni {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.hewudimoj(param1)<0?this:param1;
      }

      public function max(param1:Nagequni) : Nagequni {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.hewudimoj(param1)>0?this:param1;
      }

      protected function dyqudas(param1:Nagequni, param2:Function, param3:Nagequni) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
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
            _loc5_=param1.s&loqyhasyl;
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
            _loc5_=this.s&loqyhasyl;
            _loc4_=_loc6_;
            while(_loc4_<param1.t)
            {
               param3.a[_loc4_]=param2(_loc5_,param1.a[_loc4_]);
               _loc4_++;
            }
            param3.t=param1.t;
         }
         param3.s=param2(this.s,param1.s);
         param3.kuqejife();
         return;
      }

      private function luh(param1:int, param2:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1&param2;
      }

      public function rudog(param1:Nagequni) : Nagequni {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = new Nagequni();
         this.dyqudas(param1,this.luh,_loc2_);
         return _loc2_;
      }

      private function zunuqymup(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1|param2;
      }

      public function or(param1:Nagequni) : Nagequni {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = new Nagequni();
         this.dyqudas(param1,this.zunuqymup,_loc2_);
         return _loc2_;
      }

      private function feva(param1:int, param2:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         return param1^param2;
      }

      public function fedurot(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         this.dyqudas(param1,this.feva,_loc2_);
         return _loc2_;
      }

      private function kuqoqyl(param1:int, param2:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         return param1&~param2;
      }

      public function sofyse(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         this.dyqudas(param1,this.kuqoqyl,_loc2_);
         return _loc2_;
      }

      public function not() : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Nagequni = new Nagequni();
         var _loc2_:* = 0;
         while(_loc2_<this.t)
         {
            _loc1_[_loc2_]=loqyhasyl&~this.a[_loc2_];
            _loc2_++;
         }
         _loc1_.t=this.t;
         _loc1_.s=~this.s;
         return _loc1_;
      }

      public function foki(param1:int) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         if(param1<0)
         {
            this.giduhyne(-param1,_loc2_);
         }
         else
         {
            this.rebokiqev(param1,_loc2_);
         }
         return _loc2_;
      }

      public function putari(param1:int) : Nagequni {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = new Nagequni();
         if(param1<0)
         {
            this.rebokiqev(-param1,_loc2_);
         }
         else
         {
            this.giduhyne(param1,_loc2_);
         }
         return _loc2_;
      }

      private function qokaq(param1:int) : int {
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

      public function myrukifaz() : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_<this.t)
         {
            if(this.a[_loc1_]!=0)
            {
               return _loc1_*siru+this.qokaq(this.a[_loc1_]);
            }
            _loc1_++;
         }
         if(this.s<0)
         {
            return this.t*siru;
         }
         return -1;
      }

      private function dijegefyz(param1:int) : int {
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

      public function zapovere() : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = this.s&loqyhasyl;
         var _loc3_:* = 0;
         while(_loc3_<this.t)
         {
            _loc1_=_loc1_+this.dijegefyz(this.a[_loc3_]^_loc2_);
            _loc3_++;
         }
         return _loc1_;
      }

      public function huhimadek(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = Math.floor(param1/siru);
         if(_loc2_>=this.t)
         {
            return !(this.s==0);
         }
         return !((this.a[_loc2_]&1<<param1%siru)==0);
      }

      protected function nuhesit(param1:int, param2:Function) : Nagequni {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Nagequni = Nagequni.gyzidavar.foki(param1);
         this.dyqudas(_loc3_,param2,_loc3_);
         return _loc3_;
      }

      public function tido(param1:int) : Nagequni {
         return this.nuhesit(param1,this.zunuqymup);
      }

      public function weke(param1:int) : Nagequni {
         return this.nuhesit(param1,this.kuqoqyl);
      }

      public function zawuhu(param1:int) : Nagequni {
         return this.nuhesit(param1,this.feva);
      }

      protected function addTo(param1:Nagequni, param2:Nagequni) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = Math.min(param1.t,this.t);
         while(_loc3_<_loc5_)
         {
            _loc4_=_loc4_+(this.a[_loc3_]+param1.a[_loc3_]);
            param2.a[_loc3_++]=_loc4_&loqyhasyl;
            _loc4_=_loc4_>>siru;
         }
         if(param1.t<this.t)
         {
            _loc4_=_loc4_+param1.s;
            while(_loc3_<this.t)
            {
               _loc4_=_loc4_+this.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&loqyhasyl;
               _loc4_=_loc4_>>siru;
            }
            _loc4_=_loc4_+this.s;
         }
         else
         {
            _loc4_=_loc4_+this.s;
            while(_loc3_<param1.t)
            {
               _loc4_=_loc4_+param1.a[_loc3_];
               param2.a[_loc3_++]=_loc4_&loqyhasyl;
               _loc4_=_loc4_>>siru;
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
               param2.a[_loc3_++]=zyj+_loc4_;
            }
         }
         param2.t=_loc3_;
         param2.kuqejife();
         return;
      }

      public function add(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         this.addTo(param1,_loc2_);
         return _loc2_;
      }

      public function leq(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         this.suqu(param1,_loc2_);
         return _loc2_;
      }

      public function fasezoqi(param1:Nagequni) : Nagequni {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = new Nagequni();
         this.sawowi(param1,_loc2_);
         return _loc2_;
      }

      public function gowureqiv(param1:Nagequni) : Nagequni {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = new Nagequni();
         this.guraq(param1,_loc2_,null);
         return _loc2_;
      }

      public function duc(param1:Nagequni) : Nagequni {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = new Nagequni();
         this.guraq(param1,null,_loc2_);
         return _loc2_;
      }

      public function wegop(param1:Nagequni) : Array {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         var _loc3_:Nagequni = new Nagequni();
         this.guraq(param1,_loc2_,_loc3_);
         return [_loc2_,_loc3_];
      }

      bugomik.hurlant.rysapiv function nozy(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.a[this.t]=this.am(0,param1-1,this,0,0,this.t);
         this.t++;
         this.kuqejife();
         return;
      }

      bugomik.hurlant.rysapiv function hajop(param1:int, param2:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         while(this.t<=param2)
         {
            this.a[this.t++]=0;
         }
         this.a[param2]=this.a[param2]+param1;
         while(this.a[param2]>=zyj)
         {
            this.a[param2]=this.a[param2]-zyj;
            if(++param2>=this.t)
            {
               this.a[this.t++]=0;
            }
            this.a[param2]++;
         }
         return;
      }

      public function pow(param1:int) : Nagequni {
         return this.exp(param1,new Ryb());
      }

      bugomik.hurlant.rysapiv function cemugew(param1:Nagequni, param2:int, param3:Nagequni) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
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
         param3.kuqejife();
         return;
      }

      bugomik.hurlant.rysapiv function myvopaly(param1:Nagequni, param2:int, param3:Nagequni) : void {
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
         param3.kuqejife();
         param3.qaj(1,param3);
         return;
      }

      public function bohiciqy(param1:Nagequni, param2:Nagequni) : Nagequni {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc4_:* = 0;
         var _loc6_:Fik = null;
         var _loc12_:* = 0;
         var _loc15_:Nagequni = null;
         var _loc16_:Nagequni = null;
         var _loc3_:int = param1.kyruwypir();
         var _loc5_:Nagequni = fujunevew(1);
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
            _loc6_=new Cajes(param2);
         }
         else
         {
            if(param2.zicohitir())
            {
               _loc6_=new Nykijope(param2);
            }
            else
            {
               _loc6_=new Teqeqytyk(param2);
            }
         }
         var _loc7_:Array = [];
         var _loc8_:* = 3;
         var _loc9_:int = _loc4_-1;
         var _loc10_:int = 1<<_loc4_-1;
         _loc7_[1]=_loc6_.gokyv(this);
         if(_loc4_>1)
         {
            _loc16_=new Nagequni();
            _loc6_.kivisus(_loc7_[1],_loc16_);
            while(_loc8_<=_loc10_)
            {
               _loc7_[_loc8_]=new Nagequni();
               _loc6_.nyroh(_loc16_,_loc7_[_loc8_-2],_loc7_[_loc8_]);
               _loc8_=_loc8_+2;
            }
         }
         var _loc11_:int = param1.t-1;
         var _loc13_:* = true;
         var _loc14_:Nagequni = new Nagequni();
         _loc3_=this.qekapuq(param1.a[_loc11_])-1;
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
                  _loc12_=_loc12_|param1.a[_loc11_-1]>>siru+_loc3_-_loc9_;
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
               _loc3_=_loc3_+siru;
               _loc11_--;
            }
            _loc7_[_loc12_].copyTo(_loc5_);
            _loc13_=false;
            while(_loc11_>=0&&(param1.a[_loc11_]&1<<_loc3_)==0)
            {
               _loc6_.kivisus(_loc5_,_loc14_);
               _loc15_=_loc5_;
               _loc5_=_loc14_;
               _loc14_=_loc15_;
               if(--_loc3_<0)
               {
                  _loc3_=siru-1;
                  _loc11_--;
               }
            }
         }
         return _loc6_.lojosi(_loc5_);
      }

      public function fycyg(param1:Nagequni) : Nagequni {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:Nagequni = null;
         var _loc2_:Nagequni = this.s<0?this.gizy():this.clone();
         var _loc3_:Nagequni = param1.s<0?param1.gizy():param1.clone();
         if(_loc2_.hewudimoj(_loc3_)<0)
         {
            _loc6_=_loc2_;
            _loc2_=_loc3_;
            _loc3_=_loc6_;
         }
         var _loc4_:int = _loc2_.myrukifaz();
         var _loc5_:int = _loc3_.myrukifaz();
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
            _loc2_.giduhyne(_loc5_,_loc2_);
            _loc3_.giduhyne(_loc5_,_loc3_);
         }
         while(_loc2_.zesyzirov()>0)
         {
            if((_loc4_=_loc2_.myrukifaz())>0)
            {
               _loc2_.giduhyne(_loc4_,_loc2_);
            }
            if((_loc4_=_loc3_.myrukifaz())>0)
            {
               _loc3_.giduhyne(_loc4_,_loc3_);
            }
            if(_loc2_.hewudimoj(_loc3_)>=0)
            {
               _loc2_.suqu(_loc3_,_loc2_);
               _loc2_.giduhyne(1,_loc2_);
            }
            else
            {
               _loc3_.suqu(_loc2_,_loc3_);
               _loc3_.giduhyne(1,_loc3_);
            }
         }
         if(_loc5_>0)
         {
            _loc3_.rebokiqev(_loc5_,_loc3_);
         }
         return _loc3_;
      }

      protected function civaka(param1:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         if(param1<=0)
         {
            return 0;
         }
         var _loc2_:int = zyj%param1;
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

      public function laqu(param1:Nagequni) : Nagequni {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:Boolean = param1.zicohitir();
         if((this.zicohitir())&&(_loc2_)||param1.zesyzirov()==0)
         {
            return Nagequni.giq;
         }
         var _loc3_:Nagequni = param1.clone();
         var _loc4_:Nagequni = this.clone();
         var _loc5_:Nagequni = fujunevew(1);
         var _loc6_:Nagequni = fujunevew(0);
         var _loc7_:Nagequni = fujunevew(0);
         var _loc8_:Nagequni = fujunevew(1);
         while(_loc3_.zesyzirov()!=0)
         {
            while(_loc3_.zicohitir())
            {
               _loc3_.giduhyne(1,_loc3_);
               if(_loc2_)
               {
                  if(!_loc5_.zicohitir()||!_loc6_.zicohitir())
                  {
                     _loc5_.addTo(this,_loc5_);
                     _loc6_.suqu(param1,_loc6_);
                  }
                  _loc5_.giduhyne(1,_loc5_);
               }
               else
               {
                  if(!_loc6_.zicohitir())
                  {
                     _loc6_.suqu(param1,_loc6_);
                  }
               }
               _loc6_.giduhyne(1,_loc6_);
            }
            while(_loc4_.zicohitir())
            {
               _loc4_.giduhyne(1,_loc4_);
               if(_loc2_)
               {
                  if(!_loc7_.zicohitir()||!_loc8_.zicohitir())
                  {
                     _loc7_.addTo(this,_loc7_);
                     _loc8_.suqu(param1,_loc8_);
                  }
                  _loc7_.giduhyne(1,_loc7_);
               }
               else
               {
                  if(!_loc8_.zicohitir())
                  {
                     _loc8_.suqu(param1,_loc8_);
                  }
               }
               _loc8_.giduhyne(1,_loc8_);
            }
            if(_loc3_.hewudimoj(_loc4_)>=0)
            {
               _loc3_.suqu(_loc4_,_loc3_);
               if(_loc2_)
               {
                  _loc5_.suqu(_loc7_,_loc5_);
               }
               _loc6_.suqu(_loc8_,_loc6_);
            }
            else
            {
               _loc4_.suqu(_loc3_,_loc4_);
               if(_loc2_)
               {
                  _loc7_.suqu(_loc5_,_loc7_);
               }
               _loc8_.suqu(_loc6_,_loc8_);
            }
         }
         if(_loc4_.hewudimoj(Nagequni.gyzidavar)!=0)
         {
            return Nagequni.giq;
         }
         if(_loc8_.hewudimoj(param1)>=0)
         {
            return _loc8_.leq(param1);
         }
         if(_loc8_.zesyzirov()<0)
         {
            _loc8_.addTo(param1,_loc8_);
            if(_loc8_.zesyzirov()<0)
            {
               return _loc8_.add(param1);
            }
            return _loc8_;
         }
         return _loc8_;
      }

      public function beno(param1:int) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc3_:Nagequni = this.abs();
         if(_loc3_.t==1&&_loc3_.a[0]<=fogafy[fogafy.length-1])
         {
            _loc2_=0;
            while(_loc2_<fogafy.length)
            {
               if(_loc3_[0]==fogafy[_loc2_])
               {
                  return true;
               }
               _loc2_++;
            }
            return false;
         }
         if(_loc3_.zicohitir())
         {
            return false;
         }
         _loc2_=1;
         while(_loc2_<fogafy.length)
         {
            _loc4_=fogafy[_loc2_];
            _loc5_=_loc2_+1;
            while(_loc5_<fogafy.length&&_loc4_<wucotek)
            {
               _loc4_=_loc4_*fogafy[_loc5_++];
            }
            _loc4_=_loc3_.civaka(_loc4_);
            while(_loc2_<_loc5_)
            {
               if(_loc4_%fogafy[_loc2_++]==0)
               {
                  return false;
               }
            }
         }
         return _loc3_.qika(param1);
      }

      protected function qika(param1:int) : Boolean {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc7_:Nagequni = null;
         var _loc8_:* = 0;
         var _loc2_:Nagequni = this.leq(Nagequni.gyzidavar);
         var _loc3_:int = _loc2_.myrukifaz();
         if(_loc3_<=0)
         {
            return false;
         }
         var _loc4_:Nagequni = _loc2_.putari(_loc3_);
         var param1:* = param1+1>>1;
         if(param1>fogafy.length)
         {
            param1=fogafy.length;
         }
         var _loc5_:Nagequni = new Nagequni();
         var _loc6_:* = 0;
         while(_loc6_<param1)
         {
            _loc5_.dacupa(fogafy[_loc6_]);
            _loc7_=_loc5_.bohiciqy(_loc4_,this);
            if(!(_loc7_.hewudimoj(Nagequni.gyzidavar)==0)&&!(_loc7_.hewudimoj(_loc2_)==0))
            {
               _loc8_=1;
               while(_loc8_++<_loc3_&&!(_loc7_.hewudimoj(_loc2_)==0))
               {
                  _loc7_=_loc7_.tocy(2,this);
                  if(_loc7_.hewudimoj(Nagequni.gyzidavar)==0)
                  {
                     return false;
                  }
               }
               if(_loc7_.hewudimoj(_loc2_)!=0)
               {
                  return false;
               }
            }
            _loc6_++;
         }
         return true;
      }

      public function qarecymi(param1:int, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.huhimadek(param1-1))
         {
            this.dyqudas(Nagequni.gyzidavar.foki(param1-1),this.zunuqymup,this);
         }
         if(this.zicohitir())
         {
            this.hajop(1,0);
         }
         while(!this.beno(param2))
         {
            this.hajop(2,0);
            while(this.kyruwypir()>param1)
            {
               this.suqu(Nagequni.gyzidavar.foki(param1-1),this);
            }
         }
         return;
      }
   }
[/CLASS]
}