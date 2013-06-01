package wade
{
[CLASS1701]   import com.company.assembleegameclient.objects.BasicObject;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.util.Nosupygu;


   public class Cevic extends BasicObject
   {
      public function Cevic(param1:BitmapData, param2:Number) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Nosupygu.quk,null);
         this.vS_=new Vector.<Number>();
         this.wyrerevo=new Matrix();
         super();
         tovemamic=false;
         objectId_=gyhubin();
         this.mujuwizig=param1;
         z_=param2;
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var wyrerevo:Matrix;

      public var size_:int;

      public var mujuwizig:BitmapData;

      protected var gajine:Number = 0;

      public var piqu:Number = 0;

      public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(!_loc3_)
         {
            return false;
         }
         x_=param1;
         y_=param2;
         togofijo=_loc3_;
         return true;
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size_=param1/100*5;
         return;
      }

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var texture:BitmapData = null;
         var w:int = 0;
         var h:int = 0;
         var graphicsData:Vector.<IGraphicsData> = param1;
         var camera:Fot = param2;
         var time:int = param3;
         texture=this.mujuwizig;
         w=texture.width;
         h=texture.height;
         if(!w||!h)
         {
            return;
         }
         this.vS_.length=0;
         this.vS_.push(meluhykag[3]-w/2,meluhykag[4]-h/2,meluhykag[3]+w/2,meluhykag[4]-h/2,meluhykag[3]+w/2,meluhykag[4]+h/2,meluhykag[3]-w/2,meluhykag[4]+h/2);
         this.path_.data=this.vS_;
         this.bitmapFill_.bitmapData=texture;
         this.wyrerevo.identity();
         if((this.piqu)||(this.gajine))
         {
            if(this.gajine)
            {
               this.piqu=this.piqu+this.gajine;
            }
            this.wyrerevo.translate(-w/2,-h/2);
            this.wyrerevo.rotate(this.piqu);
            this.wyrerevo.translate(w/2,h/2);
         }
         this.wyrerevo.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.wyrerevo;
         graphicsData.push(this.bitmapFill_);
         graphicsData.push(this.bitmapFill_);
         graphicsData.push(this.path_);
         graphicsData.push(Nosupygu.END_FILL);
      }
   }
[/CLASS]
}