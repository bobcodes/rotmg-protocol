package moryzis
{
   import com.company.assembleegameclient.objects.BasicObject;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsBitmapFill;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.util.Tizulo;
   import flash.display.BitmapData;


   public class Liq extends BasicObject
   {
      public function Liq(param1:BitmapData) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vS_=new Vector.<Number>(8);
         this.zez=new Matrix();
         this.path_=new GraphicsPath(Tizulo.hyz,null);
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         super();
         this.bitmapFill_.bitmapData=param1;
         objectId_=mej();
         return;
      }

      public var lelosizoq:Number = 0;

      public var hesufyjo:Number;

      public var jukopofuj:Number;

      public var bojila:Number;

      protected var vS_:Vector.<Number>;

      protected var zez:Matrix;

      protected var path_:GraphicsPath;

      protected var bitmapFill_:GraphicsBitmapFill;

      public function initialize(param1:Number, param2:Number, param3:Number, param4:Number, param5:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.lelosizoq=param1;
         this.hesufyjo=param2;
         this.jukopofuj=param3;
         this.bojila=param4;
         z_=param5;
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Number = this.bitmapFill_.bitmapData.width/2;
         var _loc5_:Number = this.bitmapFill_.bitmapData.height/2;
         this.vS_[6]=this.vS_[0]=kiwujacam[3]-_loc4_;
         this.vS_[3]=this.vS_[1]=kiwujacam[4]-_loc5_;
         this.vS_[4]=this.vS_[2]=kiwujacam[3]+_loc4_;
         this.vS_[7]=this.vS_[5]=kiwujacam[4]+_loc5_;
         this.path_.data=this.vS_;
         this.zez.identity();
         this.zez.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.zez;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Tizulo.END_FILL);
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         map_=null;
         garatecif=null;
         return;
      }
   }

}