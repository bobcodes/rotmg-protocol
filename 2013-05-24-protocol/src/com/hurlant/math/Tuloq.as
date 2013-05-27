package com.hurlant.math
{


   class Tuloq extends Object implements Wemigiz
   {
      function Tuloq(param1:Sefaka) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.m=param1;
         return;
      }

      private var m:Sefaka;

      public function noriwereg(param1:Sefaka) : Sefaka {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.s<0||param1.vazozul(this.m)>=0)
         {
            return param1.fawihomel(this.m);
         }
         return param1;
      }

      public function palyzi(param1:Sefaka) : Sefaka {
         return param1;
      }

      public function nype(param1:Sefaka) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         param1.dudybetad(this.m,null,param1);
         return;
      }

      public function syfykeses(param1:Sefaka, param2:Sefaka, param3:Sefaka) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         param1.janyfu(param2,param3);
         this.nype(param3);
         return;
      }

      public function gisodeci(param1:Sefaka, param2:Sefaka) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         param1.vibegodyg(param2);
         this.nype(param2);
         return;
      }
   }

}