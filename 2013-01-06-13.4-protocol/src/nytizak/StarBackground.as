package nytizak
{
[CLASS1656]   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.util.AssetLibrary;
   import com.company.util.Zymusyhi;
   import com.company.util.PointUtil;


   public class StarBackground extends Background
   {
      public function StarBackground() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qibupo=new Vector.<Star>();
         this.graphicsData_=new Vector.<IGraphicsData>();
         super();
         var _loc1_:* = 0;
         while(_loc1_<100)
         {
            this.suvus();
            _loc1_++;
         }
         return;
      }

      public var qibupo:Vector.<Star>;

      protected var graphicsData_:Vector.<IGraphicsData>;

      override public function draw(param1:Fot, param2:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Star = null;
         this.graphicsData_.length=0;
         for each (_loc3_ in this.qibupo)
         {
            _loc3_.draw(this.graphicsData_,param1,param2);
         }
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function suvus() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Star = null;
         var _loc1_:Zymusyhi = AssetLibrary.lodi("stars");
         var _loc2_:Star = new Star(Math.random()*1000-500,Math.random()*1000-500,4*(0.5+0.5*Math.random()),_loc1_.qulu[int(_loc1_.qulu.length*Math.random())]);
         for each (_loc3_ in this.qibupo)
         {
            if(PointUtil.kijuvaq(_loc2_.x_,_loc2_.y_,_loc3_.x_,_loc3_.y_)<3)
            {
               return;
            }
         }
         this.qibupo.push(_loc2_);
         return;
      }
   }
[/CLASS]
}[CLASS1657]   import __AS3__.vec.Vector;
   import flash.display.GraphicsEndFill;
   import flash.display.GraphicsPathCommand;
   import flash.display.BitmapData;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import flash.geom.Matrix;


   class Star extends Object
   {
      function Star(param1:Number, param2:Number, param3:Number, param4:BitmapData) {
         this.bitmapFill_=new GraphicsBitmapFill(null,new Matrix(),false,false);
         this.path_=new GraphicsPath(sqCommands,new Vector.<Number>());
         super();
         this.x_=param1;
         this.y_=param2;
         this.scale_=param3;
         this.bitmap_=param4;
         this.w_=this.bitmap_.width*this.scale_;
         this.h_=this.bitmap_.height*this.scale_;
         return;
      }

      protected static const sqCommands:Vector.<int> = new Vector.<int>(4);

      protected static const END_FILL:GraphicsEndFill = new GraphicsEndFill();

      public var x_:Number;

      public var y_:Number;

      public var scale_:Number;

      public var bitmap_:BitmapData;

      private var w_:Number;

      private var h_:Number;

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc4_:Number = this.x_*Math.cos(-param2.angleRad_)-this.y_*Math.sin(-param2.angleRad_);
         var _loc5_:Number = this.x_*Math.sin(-param2.angleRad_)+this.y_*Math.cos(-param2.angleRad_);
         var _loc6_:Matrix = this.bitmapFill_.matrix;
         _loc6_.identity();
         _loc6_.translate(-this.bitmap_.width/2,-this.bitmap_.height/2);
         _loc6_.scale(this.scale_,this.scale_);
         _loc6_.translate(_loc4_,_loc5_);
         this.bitmapFill_.bitmapData=this.bitmap_;
         this.path_.data.length=0;
         var _loc7_:Number = _loc4_-this.w_/2;
         var _loc8_:Number = _loc5_-this.h_/2;
         this.path_.data.push(_loc7_,_loc8_,_loc7_+this.w_,_loc8_,_loc7_+this.w_,_loc8_+this.h_,_loc7_,_loc8_+this.h_);
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(END_FILL);
         return;
      }
   }
[/CLASS]