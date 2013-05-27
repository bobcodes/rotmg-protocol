package fubuwa
{
   import com.company.assembleegameclient.objects.BasicObject;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.util.Tizulo;


   public class Tyd extends BasicObject
   {
      public function Tyd(param1:BitmapData, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Tizulo.hyz,null);
         this.vS_=new Vector.<Number>();
         this.zez=new Matrix();
         super();
         kyjon=false;
         objectId_=mej();
         this.vyho=param1;
         z_=param2;
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var zez:Matrix;

      public var size_:int;

      public var vyho:BitmapData;

      protected var neso:Number = 0;

      public var qadequ:Number = 0;

      public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(!_loc3_)
         {
            return false;
         }
         x_=param1;
         y_=param2;
         garatecif=_loc3_;
         return true;
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.size_=param1/100*5;
         return;
      }

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var texture:BitmapData = null;
         var w:int = 0;
         var h:int = 0;
         var graphicsData:Vector.<IGraphicsData> = param1;
         var camera:Wypyj = param2;
         var time:int = param3;
         texture=this.vyho;
         w=texture.width;
         h=texture.height;
         if(!w||!h)
         {
            return;
         }
         this.vS_.length=0;
         this.vS_.push(kiwujacam[3]-w/2,kiwujacam[4]-h/2,kiwujacam[3]+w/2,kiwujacam[4]-h/2,kiwujacam[3]+w/2,kiwujacam[4]+h/2,kiwujacam[3]-w/2,kiwujacam[4]+h/2);
         this.path_.data=this.vS_;
         this.bitmapFill_.bitmapData=texture;
         this.zez.identity();
         if((this.qadequ)||(this.neso))
         {
            if(this.neso)
            {
               this.qadequ=this.qadequ+this.neso;
            }
            this.zez.translate(-w/2,-h/2);
            this.zez.rotate(this.qadequ);
            this.zez.translate(w/2,h/2);
         }
         this.zez.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.zez;
         graphicsData.push(this.bitmapFill_);
         graphicsData.push(this.bitmapFill_);
         graphicsData.push(this.path_);
         graphicsData.push(Tizulo.END_FILL);
         return;
      }
   }

}