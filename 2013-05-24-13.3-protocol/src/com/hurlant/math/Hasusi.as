package com.hurlant.math
{


   class Hasusi extends Object implements Wemigiz
   {
      function Hasusi(param1:Sefaka) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.m=param1;
         this.neniq=param1.mohaby();
         this.lirikol=this.neniq&32767;
         this.kojise=this.neniq>>15;
         this.hehiw=1<<Sefaka.talefod-15-1;
         this.fyd=2*param1.t;
         return;
      }

      private var m:Sefaka;

      private var neniq:int;

      private var lirikol:int;

      private var kojise:int;

      private var hehiw:int;

      private var fyd:int;

      public function noriwereg(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = new Sefaka();
         param1.abs().zytig(this.m.t,_loc2_);
         _loc2_.dudybetad(this.m,null,_loc2_);
         if(param1.s<0&&_loc2_.vazozul(Sefaka.buhy)>0)
         {
            this.m.raj(_loc2_,_loc2_);
         }
         return _loc2_;
      }

      public function palyzi(param1:Sefaka) : Sefaka {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sefaka = new Sefaka();
         param1.copyTo(_loc2_);
         this.nype(_loc2_);
         return _loc2_;
      }

      public function nype(param1:Sefaka) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(param1.t<=this.fyd)
         {
            param1.a[param1.t++]=0;
         }
         var _loc2_:* = 0;
         while(_loc2_<this.m.t)
         {
            _loc3_=param1.a[_loc2_]&32767;
            _loc4_=_loc3_*this.lirikol+((_loc3_*this.kojise+(param1.a[_loc2_]>>15)*this.lirikol&this.hehiw)<<15)&Sefaka.pysazuj;
            _loc3_=_loc2_+this.m.t;
            param1.a[_loc3_]=param1.a[_loc3_]+this.m.am(0,_loc4_,param1,_loc2_,0,this.m.t);
            while(param1.a[_loc3_]>=Sefaka.dyho)
            {
               param1.a[_loc3_]=param1.a[_loc3_]-Sefaka.dyho;
               param1.a[++_loc3_]++;
            }
            _loc2_++;
         }
         param1.qaqanub();
         param1.hocu(this.m.t,param1);
         if(param1.vazozul(this.m)>=0)
         {
            param1.raj(this.m,param1);
         }
         return;
      }

      public function gisodeci(param1:Sefaka, param2:Sefaka) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.vibegodyg(param2);
         this.nype(param2);
         return;
      }

      public function syfykeses(param1:Sefaka, param2:Sefaka, param3:Sefaka) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.janyfu(param2,param3);
         this.nype(param3);
         return;
      }
   }

}