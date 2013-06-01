package wade
{
[CLASS1736]   import flash.geom.Point;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Vivituw extends Cevic
   {
      public function Vivituw(param1:uint, param2:int, param3:Point, param4:Point) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.bitmapData=ObjectLibrary.getTextureFromType(param1);
         this.bitmapData=TextureRedrawer.redraw(this.bitmapData,80,true,0,0,false);
         gajine=0.2;
         super(this.bitmapData,0);
         this.lifetime_=this.timeLeft_=param2;
         this.start_=param3;
         this.end_=param4;
         this.dx_=(this.end_.x-this.start_.x)/this.timeLeft_;
         this.dy_=(this.end_.y-this.start_.y)/this.timeLeft_;
         var _loc5_:Number = Point.distance(param3,param4)/this.timeLeft_;
         this.pathX_=x_=this.start_.x;
         this.pathY_=y_=this.start_.y;
         return;
      }

      public var lifetime_:int;

      public var timeLeft_:int;

      public var start_:Point;

      public var end_:Point;

      public var dx_:Number;

      public var dy_:Number;

      public var pathX_:Number;

      public var pathY_:Number;

      private var bitmapData:BitmapData;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.timeLeft_=this.timeLeft_-param2;
         if(this.timeLeft_<=0)
         {
            return false;
         }
         z_=Math.sin(this.timeLeft_/this.lifetime_*Math.PI)*2;
         setSize(z_);
         this.pathX_=this.pathX_+this.dx_*param2;
         this.pathY_=this.pathY_+this.dy_*param2;
         moveTo(this.pathX_,this.pathY_);
         return true;
      }
   }
[/CLASS]
}