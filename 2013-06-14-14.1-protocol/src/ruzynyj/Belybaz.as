package ruzynyj
{
   import com.company.assembleegameclient.objects.BasicObject;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.map.Square;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.util.Dyrejocu;


   public class Belybaz extends BasicObject
   {
      public function Belybaz(param1:BitmapData, param2:Number) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Dyrejocu.capuz,null);
         this.vS_=new Vector.<Number>();
         this.puval=new Matrix();
         super();
         budav=false;
         objectId_=hofuvupud();
         this.toro=param1;
         z_=param2;
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var puval:Matrix;

      public var size_:int;

      public var toro:BitmapData;

      protected var lagyceqer:Number = 0;

      public var fity:Number = 0;

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
         mizuky=_loc3_;
         return true;
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.size_=param1/100*5;
         return;
      }

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var texture:BitmapData = null;
         var w:int = 0;
         var h:int = 0;
         var graphicsData:Vector.<IGraphicsData> = param1;
         var camera:Qawosiwi = param2;
         var time:int = param3;
         texture=this.toro;
         w=texture.width;
         h=texture.height;
         if(!w||!h)
         {
            return;
         }
         this.vS_.length=0;
         this.vS_.push(witog[3]-w/2,witog[4]-h/2,witog[3]+w/2,witog[4]-h/2,witog[3]+w/2,witog[4]+h/2,witog[3]-w/2,witog[4]+h/2);
         this.path_.data=this.vS_;
         this.bitmapFill_.bitmapData=texture;
         this.puval.identity();
         if((this.fity)||(this.lagyceqer))
         {
            if(this.lagyceqer)
            {
               this.fity=this.fity+this.lagyceqer;
            }
            this.puval.translate(-w/2,-h/2);
            this.puval.rotate(this.fity);
            this.puval.translate(w/2,h/2);
         }
         this.puval.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.puval;
         graphicsData.push(this.bitmapFill_);
         graphicsData.push(this.bitmapFill_);
         graphicsData.push(this.path_);
         graphicsData.push(Dyrejocu.END_FILL);
      }
   }

}