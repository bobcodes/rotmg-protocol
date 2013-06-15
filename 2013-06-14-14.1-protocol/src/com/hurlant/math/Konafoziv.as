package com.hurlant.math
{


   class Konafoziv extends Object implements Wufeta
   {
      function Konafoziv(param1:Bupig) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.m=param1;
         this.tofaruki=param1.hodaheraf();
         this.biwuwel=this.tofaruki&32767;
         this.piqapibi=this.tofaruki>>15;
         this.bugo=1<<Bupig.myhosijuz-15-1;
         this.tysub=2*param1.t;
         return;
      }

      private var m:Bupig;

      private var tofaruki:int;

      private var biwuwel:int;

      private var piqapibi:int;

      private var bugo:int;

      private var tysub:int;

      public function culehar(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = new Bupig();
         param1.abs().zisakyry(this.m.t,_loc2_);
         _loc2_.kotuhu(this.m,null,_loc2_);
         if(param1.s<0&&_loc2_.tir(Bupig.hyb)>0)
         {
            this.m.lemimeh(_loc2_,_loc2_);
         }
         return _loc2_;
      }

      public function pifyrypo(param1:Bupig) : Bupig {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Bupig = new Bupig();
         param1.copyTo(_loc2_);
         this.cyt(_loc2_);
         return _loc2_;
      }

      public function cyt(param1:Bupig) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(param1.t<=this.tysub)
         {
            param1.a[param1.t++]=0;
         }
         var _loc2_:* = 0;
         while(_loc2_<this.m.t)
         {
            _loc3_=param1.a[_loc2_]&32767;
            _loc4_=_loc3_*this.biwuwel+((_loc3_*this.piqapibi+(param1.a[_loc2_]>>15)*this.biwuwel&this.bugo)<<15)&Bupig.nemynuve;
            _loc3_=_loc2_+this.m.t;
            param1.a[_loc3_]=param1.a[_loc3_]+this.m.am(0,_loc4_,param1,_loc2_,0,this.m.t);
            while(param1.a[_loc3_]>=Bupig.cabaw)
            {
               param1.a[_loc3_]=param1.a[_loc3_]-Bupig.cabaw;
               param1.a[++_loc3_]++;
            }
            _loc2_++;
         }
         param1.soki();
         param1.mywohucuj(this.m.t,param1);
         if(param1.tir(this.m)>=0)
         {
            param1.lemimeh(this.m,param1);
         }
         return;
      }

      public function hen(param1:Bupig, param2:Bupig) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.mosu(param2);
         this.cyt(param2);
         return;
      }

      public function qorysali(param1:Bupig, param2:Bupig, param3:Bupig) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.teqecabes(param2,param3);
         this.cyt(param3);
         return;
      }
   }

}