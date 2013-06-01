package ledegasy
{
   import __AS3__.vec.Vector;


   public class Fukiqi extends Object
   {
      public function Fukiqi(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         this.fivobep=new Vector.<Saqavekof>();
         super();
         if("@prob" in param1)
         {
            this.sesiduhu=Number(param1.@prob);
         }
         this.period_=int(Number(param1.@period)*1000);
         this.leterujo=int(Number(param1.@periodJitter)*1000);
         this.wiminuniq=String(param1.@sync)=="hynyb";
         for each (_loc2_ in param1.Frame)
         {
            this.fivobep.push(new Saqavekof(_loc2_));
         }
         return;
      }

      public var sesiduhu:Number = 1.0;

      public var period_:int;

      public var leterujo:int;

      public var wiminuniq:Boolean = false;

      public var fivobep:Vector.<Saqavekof>;

      private function janydocaf() : int {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.leterujo==0)
         {
            return this.period_;
         }
         return this.period_-this.leterujo+2*Math.random()*this.leterujo;
      }

      public function sivoqykek(param1:int) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.wiminuniq)
         {
            return int(param1/this.period_)*this.period_;
         }
         return param1+this.janydocaf()+200*Math.random();
      }

      public function vuwamyrig(param1:int) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.wiminuniq)
         {
            return int(param1/this.period_)*this.period_+this.period_;
         }
         return param1+this.janydocaf();
      }
   }

}