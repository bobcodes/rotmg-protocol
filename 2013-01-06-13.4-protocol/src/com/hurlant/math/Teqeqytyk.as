package com.hurlant.math
{
[CLASS1862]

   class Teqeqytyk extends Object implements Fik
   {
      function Teqeqytyk(param1:Nagequni) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.m=param1;
         this.pulyw=param1.habu();
         this.bivimiq=this.pulyw&32767;
         this.gemejubi=this.pulyw>>15;
         this.zyta=1<<Nagequni.siru-15-1;
         this.fuqij=2*param1.t;
         return;
      }

      private var m:Nagequni;

      private var pulyw:int;

      private var bivimiq:int;

      private var gemejubi:int;

      private var zyta:int;

      private var fuqij:int;

      public function gokyv(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         param1.abs().cupowuho(this.m.t,_loc2_);
         _loc2_.guraq(this.m,null,_loc2_);
         if(param1.s<0&&_loc2_.hewudimoj(Nagequni.giq)>0)
         {
            this.m.suqu(_loc2_,_loc2_);
         }
         return _loc2_;
      }

      public function lojosi(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = new Nagequni();
         param1.copyTo(_loc2_);
         this.fokagul(_loc2_);
         return _loc2_;
      }

      public function fokagul(param1:Nagequni) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         while(param1.t<=this.fuqij)
         {
            param1.a[param1.t++]=0;
         }
         var _loc2_:* = 0;
         while(_loc2_<this.m.t)
         {
            _loc3_=param1.a[_loc2_]&32767;
            _loc4_=_loc3_*this.bivimiq+((_loc3_*this.gemejubi+(param1.a[_loc2_]>>15)*this.bivimiq&this.zyta)<<15)&Nagequni.loqyhasyl;
            _loc3_=_loc2_+this.m.t;
            param1.a[_loc3_]=param1.a[_loc3_]+this.m.am(0,_loc4_,param1,_loc2_,0,this.m.t);
            while(param1.a[_loc3_]>=Nagequni.zyj)
            {
               param1.a[_loc3_]=param1.a[_loc3_]-Nagequni.zyj;
               param1.a[++_loc3_]++;
            }
            _loc2_++;
         }
         param1.kuqejife();
         param1.qaj(this.m.t,param1);
         if(param1.hewudimoj(this.m)>=0)
         {
            param1.suqu(this.m,param1);
         }
         return;
      }

      public function kivisus(param1:Nagequni, param2:Nagequni) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.wekigedy(param2);
         this.fokagul(param2);
         return;
      }

      public function nyroh(param1:Nagequni, param2:Nagequni, param3:Nagequni) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.sawowi(param2,param3);
         this.fokagul(param3);
         return;
      }
   }
[/CLASS]
}