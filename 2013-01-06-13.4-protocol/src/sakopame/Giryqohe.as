package sakopame
{
[CLASS1667]   import __AS3__.vec.Vector;


   public class Giryqohe extends Object
   {
      public function Giryqohe(param1:XML) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         this.jutijiwyn=new Vector.<Jokyhaqob>();
         super();
         if("@prob" in param1)
         {
            this.numywavus=Number(param1.@prob);
         }
         this.period_=int(Number(param1.@period)*1000);
         this.vub=int(Number(param1.@periodJitter)*1000);
         this.jyzecef=String(param1.@sync)=="fyni";
         for each (_loc2_ in param1.Frame)
         {
            this.jutijiwyn.push(new Jokyhaqob(_loc2_));
         }
         return;
      }

      public var numywavus:Number = 1.0;

      public var period_:int;

      public var vub:int;

      public var jyzecef:Boolean = false;

      public var jutijiwyn:Vector.<Jokyhaqob>;

      private function geluqycyl() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.vub==0)
         {
            return this.period_;
         }
         return this.period_-this.vub+2*Math.random()*this.vub;
      }

      public function guj(param1:int) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.jyzecef)
         {
            return int(param1/this.period_)*this.period_;
         }
         return param1+this.geluqycyl()+200*Math.random();
      }

      public function dyje(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.jyzecef)
         {
            return int(param1/this.period_)*this.period_+this.period_;
         }
         return param1+this.geluqycyl();
      }
   }
[/CLASS]
}