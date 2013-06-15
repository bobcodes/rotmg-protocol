package com.hurlant.math
{


   class Pibineku extends Object implements Wufeta
   {
      function Pibineku(param1:Bupig) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.m=param1;
         return;
      }

      private var m:Bupig;

      public function culehar(param1:Bupig) : Bupig {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.s<0||param1.tir(this.m)>=0)
         {
            return param1.vafal(this.m);
         }
         return param1;
      }

      public function pifyrypo(param1:Bupig) : Bupig {
         return param1;
      }

      public function cyt(param1:Bupig) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.kotuhu(this.m,null,param1);
         return;
      }

      public function qorysali(param1:Bupig, param2:Bupig, param3:Bupig) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         param1.teqecabes(param2,param3);
         this.cyt(param3);
         return;
      }

      public function hen(param1:Bupig, param2:Bupig) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.mosu(param2);
         this.cyt(param2);
         return;
      }
   }

}