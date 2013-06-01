package com.hurlant.math
{
[CLASS1859]

   class Nykijope extends Object implements Fik
   {
      function Nykijope(param1:Nagequni) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.poqy=new Nagequni();
         this.qorosoho=new Nagequni();
         Nagequni.gyzidavar.cupowuho(2*param1.t,this.poqy);
         this.cylafenuc=this.poqy.gowureqiv(param1);
         this.m=param1;
         return;
      }

      private var m:Nagequni;

      private var poqy:Nagequni;

      private var qorosoho:Nagequni;

      private var cylafenuc:Nagequni;

      public function lojosi(param1:Nagequni) : Nagequni {
         return param1;
      }

      public function nyroh(param1:Nagequni, param2:Nagequni, param3:Nagequni) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.sawowi(param2,param3);
         this.fokagul(param3);
         return;
      }

      public function kivisus(param1:Nagequni, param2:Nagequni) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.wekigedy(param2);
         this.fokagul(param2);
         return;
      }

      public function gokyv(param1:Nagequni) : Nagequni {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Nagequni = null;
         if(param1.s<0||param1.t>2*this.m.t)
         {
            return param1.josazuny(this.m);
         }
         if(param1.hewudimoj(this.m)<0)
         {
            return param1;
         }
         _loc2_=new Nagequni();
         param1.copyTo(_loc2_);
         this.fokagul(_loc2_);
         return _loc2_;
      }

      public function fokagul(param1:Nagequni) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Nagequni = param1 as Nagequni;
         _loc2_.qaj(this.m.t-1,this.poqy);
         if(_loc2_.t>this.m.t+1)
         {
            _loc2_.t=this.m.t+1;
            _loc2_.kuqejife();
         }
         this.cylafenuc.myvopaly(this.poqy,this.m.t+1,this.qorosoho);
         this.m.cemugew(this.qorosoho,this.m.t+1,this.poqy);
         while(_loc2_.hewudimoj(this.poqy)<0)
         {
            _loc2_.hajop(1,this.m.t+1);
         }
         _loc2_.suqu(this.poqy,_loc2_);
         while(_loc2_.hewudimoj(this.m)>=0)
         {
            _loc2_.suqu(this.m,_loc2_);
         }
         return;
      }
   }
[/CLASS]
}