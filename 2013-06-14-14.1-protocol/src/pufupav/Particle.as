package pufupav
{
   import com.company.assembleegameclient.objects.BasicObject;
   import com.company.assembleegameclient.map.Square;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;
   import com.company.util.Dyrejocu;


   public class Particle extends BasicObject
   {
      public function Particle(param1:uint, param2:Number, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Dyrejocu.capuz,null);
         this.vS_=new Vector.<Number>();
         this.puval=new Matrix();
         super();
         objectId_=hofuvupud();
         this.kaqyh(param2);
         this.setColor(param1);
         this.setSize(param3);
         return;
      }

      public var size_:int;

      public var color_:uint;

      public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Square = null;
         _loc3_=map_.getSquare(param1,param2);
         if(_loc3_==null)
         {
            return false;
         }
         x_=param1;
         y_=param2;
         mizuky=_loc3_;
         return true;
      }

      public function setColor(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.color_=param1;
         return;
      }

      public function kaqyh(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         z_=param1;
         return;
      }

      public function setSize(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.size_=param1/100*5;
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var puval:Matrix;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:BitmapData = TextureRedrawer.redrawSolidSquare(this.color_,this.size_);
         var _loc5_:int = _loc4_.width;
         var _loc6_:int = _loc4_.height;
         this.vS_.length=0;
         this.vS_.push(witog[3]-_loc5_/2,witog[4]-_loc6_/2,witog[3]+_loc5_/2,witog[4]-_loc6_/2,witog[3]+_loc5_/2,witog[4]+_loc6_/2,witog[3]-_loc5_/2,witog[4]+_loc6_/2);
         this.path_.data=this.vS_;
         this.bitmapFill_.bitmapData=_loc4_;
         this.puval.identity();
         this.puval.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.puval;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Dyrejocu.END_FILL);
         return;
      }
   }

}