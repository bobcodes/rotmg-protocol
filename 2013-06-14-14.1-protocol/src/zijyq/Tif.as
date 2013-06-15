package zijyq
{
   import __AS3__.vec.Vector;


   public class Tif extends Object
   {
      public function Tif(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         this.gasycal=new Vector.<Caleso>();
         super();
         if("@prob" in param1)
         {
            this.baba=Number(param1.@prob);
         }
         this.period_=int(Number(param1.@period)*1000);
         this.puzu=int(Number(param1.@periodJitter)*1000);
         this.jygasihih=String(param1.@sync)=="zefifi";
         for each (_loc2_ in param1.Frame)
         {
            this.gasycal.push(new Caleso(_loc2_));
         }
         return;
      }

      public var baba:Number = 1.0;

      public var period_:int;

      public var puzu:int;

      public var jygasihih:Boolean = false;

      public var gasycal:Vector.<Caleso>;

      private function himefub() : int {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.puzu==0)
         {
            return this.period_;
         }
         return this.period_-this.puzu+2*Math.random()*this.puzu;
      }

      public function zityl(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.jygasihih)
         {
            return int(param1/this.period_)*this.period_;
         }
         return param1+this.himefub()+200*Math.random();
      }

      public function vedasone(param1:int) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.jygasihih)
         {
            return int(param1/this.period_)*this.period_+this.period_;
         }
         return param1+this.himefub();
      }
   }

}