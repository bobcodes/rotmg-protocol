package qirola
{
   import kaw.Dyqa;
   import __AS3__.vec.Vector;


   public class Ravakygy extends Dyqa
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Ravakygy(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.bojah=new Vector.<int>(COUNT,true);
         this.index=0;
         this.tav=0;
         this.count=0;
         this.min=int.MAX_VALUE;
         this.max=-1;
         return;
      }

      private static const fagew:String = "[{NAME}] [0x33FF33:{/x {MEAN}ms (min {MIN}ms, max {MAX}ms)]";

      private static const COUNT:int = 10;

      private var bojah:Vector.<int>;

      private var index:int;

      private var count:int;

      public var tav:int;

      public var mean:int;

      public var max:int;

      public var min:int;

      public function behyg(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.count<COUNT)
         {
            this.tav=this.tav+param1;
            this.count++;
            this.bojah[this.index]=param1;
         }
         else
         {
            this.tav=this.tav-this.bojah[this.index];
            this.tav=this.tav+param1;
            this.bojah[this.index]=param1;
         }
         if(++this.index==COUNT)
         {
            this.index=0;
         }
         this.mean=this.tav/this.count;
         if(param1>this.max)
         {
            this.max=param1;
         }
         if(param1<this.min)
         {
            this.min=param1;
         }
         data=fagew.replace("{NAME}",name).replace("{MEAN}",this.mean).replace("{MIN}",this.min).replace("{MAX}",this.max);
         return;
      }
   }

}