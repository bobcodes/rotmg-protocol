package vole
{
[CLASS1159]   import gukite.Vifiveho;
   import __AS3__.vec.Vector;


   public class Wov extends Vifiveho
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Wov(param1:String) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.hyku=new Vector.<int>(COUNT,true);
         this.index=0;
         this.qok=0;
         this.count=0;
         this.min=int.MAX_VALUE;
         this.max=-1;
         return;
      }

      private static const vihyzezy:String = "[{NAME}] [0x33FF33:{/x {MEAN}ms (min {MIN}ms, max {MAX}ms)]";

      private static const COUNT:int = 10;

      private var hyku:Vector.<int>;

      private var index:int;

      private var count:int;

      public var qok:int;

      public var mean:int;

      public var max:int;

      public var min:int;

      public function gubyfogug(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.count<COUNT)
         {
            this.qok=this.qok+param1;
            this.count++;
            this.hyku[this.index]=param1;
         }
         else
         {
            this.qok=this.qok-this.hyku[this.index];
            this.qok=this.qok+param1;
            this.hyku[this.index]=param1;
         }
         if(++this.index==COUNT)
         {
            this.index=0;
         }
         this.mean=this.qok/this.count;
         if(param1>this.max)
         {
            this.max=param1;
         }
         if(param1<this.min)
         {
            this.min=param1;
         }
         data=vihyzezy.replace("{NAME}",name).replace("{MEAN}",this.mean).replace("{MIN}",this.min).replace("{MAX}",this.max);
         return;
      }
   }
[/CLASS]
}