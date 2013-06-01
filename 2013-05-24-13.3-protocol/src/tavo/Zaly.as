package tavo
{
   import rosebo.Ruwatum;
   import __AS3__.vec.Vector;


   public class Zaly extends Ruwatum
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zaly(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.tahib=new Vector.<int>(COUNT,true);
         this.index=0;
         this.zujad=0;
         this.count=0;
         this.min=int.MAX_VALUE;
         this.max=-1;
         return;
      }

      private static const qomav:String = "[{NAME}] [0x33FF33:{/x {MEAN}ms (min {MIN}ms, max {MAX}ms)]";

      private static const COUNT:int = 10;

      private var tahib:Vector.<int>;

      private var index:int;

      private var count:int;

      public var zujad:int;

      public var mean:int;

      public var max:int;

      public var min:int;

      public function kawa(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.count<COUNT)
         {
            this.zujad=this.zujad+param1;
            this.count++;
            this.tahib[this.index]=param1;
         }
         else
         {
            this.zujad=this.zujad-this.tahib[this.index];
            this.zujad=this.zujad+param1;
            this.tahib[this.index]=param1;
         }
         if(++this.index==COUNT)
         {
            this.index=0;
         }
         this.mean=this.zujad/this.count;
         if(param1>this.max)
         {
            this.max=param1;
         }
         if(param1<this.min)
         {
            this.min=param1;
         }
         data=qomav.replace("{NAME}",name).replace("{MEAN}",this.mean).replace("{MIN}",this.min).replace("{MAX}",this.max);
         return;
      }
   }

}