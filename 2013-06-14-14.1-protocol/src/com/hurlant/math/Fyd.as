package com.hurlant.math
{


   class Fyd extends Object implements Wufeta
   {
      function Fyd(param1:Bupig) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.gowih=new Bupig();
         this.kis=new Bupig();
         Bupig.woluditu.zisakyry(2*param1.t,this.gowih);
         this.zibu=this.gowih.jypihu(param1);
         this.m=param1;
         return;
      }

      private var m:Bupig;

      private var gowih:Bupig;

      private var kis:Bupig;

      private var zibu:Bupig;

      public function pifyrypo(param1:Bupig) : Bupig {
         return param1;
      }

      public function qorysali(param1:Bupig, param2:Bupig, param3:Bupig) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.teqecabes(param2,param3);
         this.cyt(param3);
         return;
      }

      public function hen(param1:Bupig, param2:Bupig) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         param1.mosu(param2);
         this.cyt(param2);
         return;
      }

      public function culehar(param1:Bupig) : Bupig {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = null;
         if(param1.s<0||param1.t>2*this.m.t)
         {
            return param1.vafal(this.m);
         }
         if(param1.tir(this.m)<0)
         {
            return param1;
         }
         _loc2_=new Bupig();
         param1.copyTo(_loc2_);
         this.cyt(_loc2_);
         return _loc2_;
      }

      public function cyt(param1:Bupig) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Bupig = param1 as Bupig;
         _loc2_.mywohucuj(this.m.t-1,this.gowih);
         if(_loc2_.t>this.m.t+1)
         {
            _loc2_.t=this.m.t+1;
            _loc2_.soki();
         }
         this.zibu.nufajiwo(this.gowih,this.m.t+1,this.kis);
         this.m.lyze(this.kis,this.m.t+1,this.gowih);
         while(_loc2_.tir(this.gowih)<0)
         {
            _loc2_.fojaf(1,this.m.t+1);
         }
         _loc2_.lemimeh(this.gowih,_loc2_);
         while(_loc2_.tir(this.m)>=0)
         {
            _loc2_.lemimeh(this.m,_loc2_);
         }
         return;
      }
   }

}