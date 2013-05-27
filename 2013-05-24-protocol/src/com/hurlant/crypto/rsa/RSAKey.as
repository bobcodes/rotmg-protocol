package com.hurlant.crypto.rsa
{
   import com.hurlant.math.Sefaka;
   import com.hurlant.crypto.prng.Random;
   import flash.utils.ByteArray;
   import com.hurlant.util.Memory;
   import com.hurlant.crypto.tls.TLSError;


   public class RSAKey extends Object
   {
      public function RSAKey(param1:Sefaka, param2:int, param3:Sefaka=null, param4:Sefaka=null, param5:Sefaka=null, param6:Sefaka=null, param7:Sefaka=null, param8:Sefaka=null) {
         super();
         this.n=param1;
         this.e=param2;
         this.d=param3;
         this.p=param4;
         this.q=param5;
         this.dmp1=param6;
         this.dmq1=param7;
         this.coeff=param8;
         this.canEncrypt=!(this.n==null)&&!(this.e==0);
         this.canDecrypt=(this.canEncrypt)&&!(this.d==null);
         return;
      }

      public static function parsePublicKey(param1:String, param2:String) : RSAKey {
         return new RSAKey(new Sefaka(param1,16,true),parseInt(param2,16));
      }

      public static function parsePrivateKey(param1:String, param2:String, param3:String, param4:String=null, param5:String=null, param6:String=null, param7:String=null, param8:String=null) : RSAKey {
         if(param4==null)
         {
            return new RSAKey(new Sefaka(param1,16,true),parseInt(param2,16),new Sefaka(param3,16,true));
         }
         return new RSAKey(new Sefaka(param1,16,true),parseInt(param2,16),new Sefaka(param3,16,true),new Sefaka(param4,16,true),new Sefaka(param5,16,true),new Sefaka(param6,16,true),new Sefaka(param7,16,true),new Sefaka(param8,16,true));
      }

      public static function generate(param1:uint, param2:String) : RSAKey {
         var _loc7_:Sefaka = null;
         var _loc8_:Sefaka = null;
         var _loc9_:Sefaka = null;
         var _loc10_:Sefaka = null;
         var _loc3_:Random = new Random();
         var _loc4_:uint = param1>>1;
         var _loc5_:RSAKey = new RSAKey(null,0,null);
         _loc5_.e=parseInt(param2,16);
         var _loc6_:Sefaka = new Sefaka(param2,16,true);
         while(true)
         {
            _loc5_.p=bigRandom(param1-_loc4_,_loc3_);
            while(!(_loc5_.p.kypuwug(Sefaka.riho).nima(_loc6_).vazozul(Sefaka.riho)==0&&(_loc5_.p.suvoryj(10))))
            {
               _loc5_.p=bigRandom(param1-_loc4_,_loc3_);
               continue loop1;
            }
            _loc5_.q=bigRandom(_loc4_,_loc3_);
            while(!(_loc5_.q.kypuwug(Sefaka.riho).nima(_loc6_).vazozul(Sefaka.riho)==0&&(_loc5_.q.suvoryj(10))))
            {
               _loc5_.q=bigRandom(_loc4_,_loc3_);
               continue loop2;
            }
            if(_loc5_.p.vazozul(_loc5_.q)<=0)
            {
               _loc10_=_loc5_.p;
               _loc5_.p=_loc5_.q;
               _loc5_.q=_loc10_;
            }
            _loc7_=_loc5_.p.kypuwug(Sefaka.riho);
            _loc8_=_loc5_.q.kypuwug(Sefaka.riho);
            _loc9_=_loc7_.pypu(_loc8_);
            if(_loc9_.nima(_loc6_).vazozul(Sefaka.riho)==0)
            {
               _loc5_.n=_loc5_.p.pypu(_loc5_.q);
               _loc5_.d=_loc6_.kowofuja(_loc9_);
               _loc5_.dmp1=_loc5_.d.fawihomel(_loc7_);
               _loc5_.dmq1=_loc5_.d.fawihomel(_loc8_);
               _loc5_.coeff=_loc5_.q.kowofuja(_loc5_.p);
               return _loc5_;
            }
         }
         _loc5_.p=bigRandom(param1-_loc4_,_loc3_);
         continue loop1;
      }

      protected static function bigRandom(param1:int, param2:Random) : Sefaka {
         if(param1<2)
         {
            return Sefaka.fosojodyn(1);
         }
         var _loc3_:ByteArray = new ByteArray();
         param2.nextBytes(_loc3_,param1>>3);
         _loc3_.position=0;
         var _loc4_:Sefaka = new Sefaka(_loc3_,0,true);
         _loc4_.miver(param1,1);
         return _loc4_;
      }

      public var e:int;

      public var n:Sefaka;

      public var d:Sefaka;

      public var p:Sefaka;

      public var q:Sefaka;

      public var dmp1:Sefaka;

      public var dmq1:Sefaka;

      public var coeff:Sefaka;

      protected var canDecrypt:Boolean;

      protected var canEncrypt:Boolean;

      public function getBlockSize() : uint {
         return (this.n.hoz()+7)/8;
      }

      public function dispose() : void {
         this.e=0;
         this.n.dispose();
         this.n=null;
         Memory.gc();
         return;
      }

      public function encrypt(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function=null) : void {
         this._encrypt(this.doPublic,param1,param2,param3,param4,2);
         return;
      }

      public function decrypt(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function=null) : void {
         this._decrypt(this.doPrivate2,param1,param2,param3,param4,2);
         return;
      }

      public function sign(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function=null) : void {
         this._encrypt(this.doPrivate2,param1,param2,param3,param4,1);
         return;
      }

      public function verify(param1:ByteArray, param2:ByteArray, param3:uint, param4:Function=null) : void {
         this._decrypt(this.doPublic,param1,param2,param3,param4,1);
         return;
      }

      private function _encrypt(param1:Function, param2:ByteArray, param3:ByteArray, param4:uint, param5:Function, param6:int) : void {
         var _loc9_:Sefaka = null;
         var _loc10_:Sefaka = null;
         if(param5==null)
         {
            param5=this.pkcs1pad;
         }
         if(param2.position>=param2.length)
         {
            param2.position=0;
         }
         var _loc7_:uint = this.getBlockSize();
         var _loc8_:int = param2.position+param4;
         while(param2.position<_loc8_)
         {
            _loc9_=new Sefaka(param5(param2,_loc8_,_loc7_,param6),_loc7_,true);
            _loc10_=param1(_loc9_);
            _loc10_.toArray(param3);
         }
         return;
      }

      private function _decrypt(param1:Function, param2:ByteArray, param3:ByteArray, param4:uint, param5:Function, param6:int) : void {
         var _loc9_:Sefaka = null;
         var _loc10_:Sefaka = null;
         var _loc11_:ByteArray = null;
         if(param5==null)
         {
            param5=this.pkcs1unpad;
         }
         if(param2.position>=param2.length)
         {
            param2.position=0;
         }
         var _loc7_:uint = this.getBlockSize();
         var _loc8_:int = param2.position+param4;
         while(param2.position<_loc8_)
         {
            _loc9_=new Sefaka(param2,_loc7_,true);
            _loc10_=param1(_loc9_);
            _loc11_=param5(_loc10_,_loc7_,param6);
            if(_loc11_==null)
            {
               throw new TLSError("Decrypt error - padding function returned null!",TLSError.decode_error);
            }
            else
            {
               param3.writeBytes(_loc11_);
               continue;
            }
         }
         return;
      }

      private function pkcs1pad(param1:ByteArray, param2:int, param3:uint, param4:uint=2) : ByteArray {
         var _loc8_:Random = null;
         var _loc9_:* = 0;
         var _loc5_:ByteArray = new ByteArray();
         var _loc6_:uint = param1.position;
         var param2:int = Math.min(param2,param1.length,_loc6_+param3-11);
         param1.position=param2;
         var _loc7_:int = param2-1;
         while(_loc7_>=_loc6_&&param3>11)
         {
            _loc5_[--param3]=param1[_loc7_--];
         }
         _loc5_[--param3]=0;
         if(param4==2)
         {
            _loc8_=new Random();
            _loc9_=0;
            loop1:
            while(param3>2)
            {
               do
               {
                  _loc9_=_loc8_.nextByte();
                  if(_loc9_!=0)
                  {
                     _loc5_[--param3]=_loc9_;
                     continue loop1;
                  }
               }
               while(true);
            }
         }
         else
         {
            while(param3>2)
            {
               _loc5_[--param3]=255;
            }
         }
         _loc5_[--param3]=param4;
         var _loc12_:* = --param3;
         _loc5_[_loc12_]=0;
         return _loc5_;
      }

      private function pkcs1unpad(param1:Sefaka, param2:uint, param3:uint=2) : ByteArray {
         var _loc4_:ByteArray = param1.fyb();
         var _loc5_:ByteArray = new ByteArray();
         _loc4_.position=0;
         var _loc6_:* = 0;
         while(_loc6_<_loc4_.length&&_loc4_[_loc6_]==0)
         {
            _loc6_++;
         }
         if(!(_loc4_.length-_loc6_==param2-1)||!(_loc4_[_loc6_]==param3))
         {
            trace("PKCS#1 unpad: i="+_loc6_+", expected b[i]=="+param3+", got b[i]="+_loc4_[_loc6_].toString(16));
            return null;
         }
         _loc6_++;
         while(_loc4_[_loc6_]!=0)
         {
            if(++_loc6_>=_loc4_.length)
            {
               trace("PKCS#1 unpad: i="+_loc6_+", b[i-1]!=0 (="+_loc4_[_loc6_-1].toString(16)+")");
               return null;
            }
         }
         while(++_loc6_<_loc4_.length)
         {
            _loc5_.writeByte(_loc4_[_loc6_]);
         }
         _loc5_.position=0;
         return _loc5_;
      }

      public function rawpad(param1:ByteArray, param2:int, param3:uint, param4:uint=0) : ByteArray {
         return param1;
      }

      public function rawunpad(param1:Sefaka, param2:uint, param3:uint=0) : ByteArray {
         return param1.fyb();
      }

      public function toString() : String {
         return "rsa";
      }

      public function dump() : String {
         var _loc1_:* = "N="+this.n.toString(16)+"\n"+"E="+this.e.toString(16)+"\n";
         if(this.canDecrypt)
         {
            _loc1_=_loc1_+("D="+this.d.toString(16)+"\n");
            if(!(this.p==null)&&!(this.q==null))
            {
               _loc1_=_loc1_+("P="+this.p.toString(16)+"\n");
               _loc1_=_loc1_+("Q="+this.q.toString(16)+"\n");
               _loc1_=_loc1_+("DMP1="+this.dmp1.toString(16)+"\n");
               _loc1_=_loc1_+("DMQ1="+this.dmq1.toString(16)+"\n");
               _loc1_=_loc1_+("IQMP="+this.coeff.toString(16)+"\n");
            }
         }
         return _loc1_;
      }

      protected function doPublic(param1:Sefaka) : Sefaka {
         return param1.ninumakym(this.e,this.n);
      }

      protected function doPrivate2(param1:Sefaka) : Sefaka {
         if(this.p==null&&this.q==null)
         {
            return param1.fyleli(this.d,this.n);
         }
         var _loc2_:Sefaka = param1.fawihomel(this.p).fyleli(this.dmp1,this.p);
         var _loc3_:Sefaka = param1.fawihomel(this.q).fyleli(this.dmq1,this.q);
         while(_loc2_.vazozul(_loc3_)<0)
         {
            _loc2_=_loc2_.add(this.p);
         }
         var _loc4_:Sefaka = _loc2_.kypuwug(_loc3_).pypu(this.coeff).fawihomel(this.p).pypu(this.q).add(_loc3_);
         return _loc4_;
      }

      protected function doPrivate(param1:Sefaka) : Sefaka {
         if(this.p==null||this.q==null)
         {
            return param1.fyleli(this.d,this.n);
         }
         var _loc2_:Sefaka = param1.fawihomel(this.p).fyleli(this.dmp1,this.p);
         var _loc3_:Sefaka = param1.fawihomel(this.q).fyleli(this.dmq1,this.q);
         while(_loc2_.vazozul(_loc3_)<0)
         {
            _loc2_=_loc2_.add(this.p);
         }
         return _loc2_.kypuwug(_loc3_).pypu(this.coeff).fawihomel(this.p).pypu(this.q).add(_loc3_);
      }
   }

}