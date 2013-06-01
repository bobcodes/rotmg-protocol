package com.hurlant.math
{


   class Fajy extends Object implements Wemigiz
   {
      function Fajy(param1:Sefaka) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.sycy=new Sefaka();
         this.bav=new Sefaka();
         Sefaka.riho.zytig(2*param1.t,this.sycy);
         this.mywo=this.sycy.kapyly(param1);
         this.m=param1;
         return;
      }

      private var m:Sefaka;

      private var sycy:Sefaka;

      private var bav:Sefaka;

      private var mywo:Sefaka;

      public function palyzi(param1:Sefaka) : Sefaka {
         return param1;
      }

      public function syfykeses(param1:Sefaka, param2:Sefaka, param3:Sefaka) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.janyfu(param2,param3);
         this.nype(param3);
         return;
      }

      public function gisodeci(param1:Sefaka, param2:Sefaka) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.vibegodyg(param2);
         this.nype(param2);
         return;
      }

      public function noriwereg(param1:Sefaka) : Sefaka {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = null;
         if(param1.s<0||param1.t>2*this.m.t)
         {
            return param1.fawihomel(this.m);
         }
         if(param1.vazozul(this.m)<0)
         {
            return param1;
         }
         _loc2_=new Sefaka();
         param1.copyTo(_loc2_);
         this.nype(_loc2_);
         return _loc2_;
      }

      public function nype(param1:Sefaka) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sefaka = param1 as Sefaka;
         _loc2_.hocu(this.m.t-1,this.sycy);
         if(_loc2_.t>this.m.t+1)
         {
            _loc2_.t=this.m.t+1;
            _loc2_.qaqanub();
         }
         this.mywo.cob(this.sycy,this.m.t+1,this.bav);
         this.m.towivag(this.bav,this.m.t+1,this.sycy);
         while(_loc2_.vazozul(this.sycy)<0)
         {
            _loc2_.dyfi(1,this.m.t+1);
         }
         _loc2_.raj(this.sycy,_loc2_);
         while(_loc2_.vazozul(this.m)>=0)
         {
            _loc2_.raj(this.m,_loc2_);
         }
         return;
      }
   }

}