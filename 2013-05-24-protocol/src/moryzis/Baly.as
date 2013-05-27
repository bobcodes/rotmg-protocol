package moryzis
{


   public class Baly extends Object
   {
      public function Baly(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.id=param1.toString();
         this.particle=param1.@particle;
         this.cooldown=param1.@cooldown;
         this.color=param1.@color;
         this.rate=(param1.@rate)||(5);
         this.speed=(param1.@speed)||(0);
         this.speedVariance=(param1.@speedVariance)||(0.5);
         this.spread=(param1.@spread)||(0);
         this.life=(param1.@life)||(1);
         this.lifeVariance=(param1.@lifeVariance)||(0);
         this.size=(param1.@size)||3;
         this.rise=(param1.@rise)||(3);
         this.riseVariance=(param1.@riseVariance)||(0);
         this.riseAcc=(param1.@riseAcc)||(0);
         this.rangeX=(param1.@rangeX)||0;
         this.rangeY=(param1.@rangeY)||0;
         this.zOffset=(param1.@zOffset)||(0);
         this.bitmapFile=param1.@bitmapFile;
         this.bitmapIndex=param1.@bitmapIndex;
         return;
      }

      public var id:String;

      public var particle:String;

      public var cooldown:Number;

      public var color:uint;

      public var rate:Number;

      public var speed:Number;

      public var speedVariance:Number;

      public var spread:Number;

      public var life:Number;

      public var lifeVariance:Number;

      public var size:int;

      public var lydehani:Number;

      public var rise:Number;

      public var riseVariance:Number;

      public var riseAcc:Number;

      public var rangeX:int;

      public var rangeY:int;

      public var zOffset:Number;

      public var bitmapFile:String;

      public var bitmapIndex:uint;
   }

}