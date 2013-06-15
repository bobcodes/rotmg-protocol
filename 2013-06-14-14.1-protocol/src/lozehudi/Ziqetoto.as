package lozehudi
{


   public class Ziqetoto extends Object
   {
      public function Ziqetoto(param1:Number, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.a=param1;
         this.r=param2;
         return;
      }

      private var a:Number;

      private var r:Number;

      public function bufyje(param1:int) : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return this.a*(1-Math.pow(this.r,param1))/(1-this.r);
      }

      public function raboq(param1:int) : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return this.a*Math.pow(this.r,param1);
      }
   }

}