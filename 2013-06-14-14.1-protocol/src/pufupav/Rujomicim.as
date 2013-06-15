package pufupav
{
   import com.company.assembleegameclient.objects.BasicObject;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsBitmapFill;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.util.Dyrejocu;
   import flash.display.BitmapData;


   public class Rujomicim extends BasicObject
   {
      public function Rujomicim(param1:BitmapData) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vS_=new Vector.<Number>(8);
         this.puval=new Matrix();
         this.path_=new GraphicsPath(Dyrejocu.capuz,null);
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         super();
         this.bitmapFill_.bitmapData=param1;
         objectId_=hofuvupud();
         return;
      }

      public var votuqunyp:Number = 0;

      public var tybep:Number;

      public var cisavu:Number;

      public var tor:Number;

      protected var vS_:Vector.<Number>;

      protected var puval:Matrix;

      protected var path_:GraphicsPath;

      protected var bitmapFill_:GraphicsBitmapFill;

      public function initialize(param1:Number, param2:Number, param3:Number, param4:Number, param5:int) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.votuqunyp=param1;
         this.tybep=param2;
         this.cisavu=param3;
         this.tor=param4;
         z_=param5;
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Number = this.bitmapFill_.bitmapData.width/2;
         var _loc5_:Number = this.bitmapFill_.bitmapData.height/2;
         this.vS_[6]=this.vS_[0]=witog[3]-_loc4_;
         this.vS_[3]=this.vS_[1]=witog[4]-_loc5_;
         this.vS_[4]=this.vS_[2]=witog[3]+_loc4_;
         this.vS_[7]=this.vS_[5]=witog[4]+_loc5_;
         this.path_.data=this.vS_;
         this.puval.identity();
         this.puval.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.puval;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Dyrejocu.END_FILL);
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         map_=null;
         mizuky=null;
         return;
      }
   }

}