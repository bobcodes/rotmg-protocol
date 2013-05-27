package luzy
{
   import flash.geom.Point;
   import flash.display.BitmapData;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import com.company.assembleegameclient.map.Wypyj;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import com.company.util.Tizulo;
   import flash.display.BitmapDataChannel;


   public class NexusBackground extends Background
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function NexusBackground() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dafyhyba=new Vector.<Island>();
         this.graphicsData_=new Vector.<IGraphicsData>();
         this.bitmapFill_=new GraphicsBitmapFill(null,new Matrix(),true,false);
         this.path_=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
         super();
         this.mybo=new BitmapData(1024,1024,false,0);
         this.mybo.perlinNoise(1024,1024,8,Math.random(),true,true,BitmapDataChannel.BLUE,false,null);
         return;
      }

      public static const miba:Point = new Point(0.01,0.01);

      private var mybo:BitmapData;

      private var dafyhyba:Vector.<Island>;

      protected var graphicsData_:Vector.<IGraphicsData>;

      private var bitmapFill_:GraphicsBitmapFill;

      private var path_:GraphicsPath;

      override public function draw(param1:Wypyj, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.graphicsData_.length=0;
         var _loc3_:Matrix = this.bitmapFill_.matrix;
         _loc3_.identity();
         _loc3_.translate(param2*miba.x,param2*miba.y);
         _loc3_.rotate(-param1.angleRad_);
         this.bitmapFill_.bitmapData=this.mybo;
         this.graphicsData_.push(this.bitmapFill_);
         this.path_.data.length=0;
         var _loc4_:Rectangle = param1.cykuwito;
         this.path_.data.push(_loc4_.left,_loc4_.top,_loc4_.right,_loc4_.top,_loc4_.right,_loc4_.bottom,_loc4_.left,_loc4_.bottom);
         this.graphicsData_.push(this.path_);
         this.graphicsData_.push(Tizulo.END_FILL);
         this.rinykefa(param1,param2);
         graphics.clear();
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function rinykefa(param1:Wypyj, param2:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Island = null;
         var _loc3_:* = 0;
         while(_loc3_<this.dafyhyba.length)
         {
            _loc4_=this.dafyhyba[_loc3_];
            _loc4_.draw(param1,param2,this.graphicsData_);
            _loc3_++;
         }
         return;
      }
   }

}   import flash.geom.Point;
   import flash.display.BitmapData;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import com.company.assembleegameclient.map.Wypyj;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import luzy.NexusBackground;
   import flash.geom.Matrix;
   import com.company.util.Tizulo;
   import com.company.util.AssetLibrary;


   class Island extends Object
   {
      function Island(param1:Number, param2:Number, param3:int) {
         this.bitmapFill_=new GraphicsBitmapFill(null,new Matrix(),true,false);
         this.path_=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
         super();
         this.center_=new Point(param1,param2);
         this.startTime_=param3;
         this.bitmapData_=AssetLibrary.getImage("stars");
         return;
      }

      public var center_:Point;

      public var startTime_:int;

      public var bitmapData_:BitmapData;

      private var bitmapFill_:GraphicsBitmapFill;

      private var path_:GraphicsPath;

      public function draw(param1:Wypyj, param2:int, param3:Vector.<IGraphicsData>) : void {
         var _loc4_:int = param2-this.startTime_;
         var _loc5_:Number = this.center_.x+_loc4_*NexusBackground.miba.x;
         var _loc6_:Number = this.center_.y+_loc4_*NexusBackground.miba.y;
         var _loc7_:Matrix = this.bitmapFill_.matrix;
         _loc7_.identity();
         _loc7_.translate(_loc5_,_loc6_);
         _loc7_.rotate(-param1.angleRad_);
         this.bitmapFill_.bitmapData=this.bitmapData_;
         param3.push(this.bitmapFill_);
         this.path_.data.length=0;
         var _loc8_:Point = _loc7_.transformPoint(new Point(_loc5_,_loc6_));
         var _loc9_:Point = _loc7_.transformPoint(new Point(_loc5_+this.bitmapData_.width,_loc6_+this.bitmapData_.height));
         this.path_.data.push(_loc8_.x,_loc8_.y,_loc9_.x,_loc8_.y,_loc9_.x,_loc9_.y,_loc8_.x,_loc9_.y);
         param3.push(this.path_);
         param3.push(Tizulo.END_FILL);
         return;
      }
   }
