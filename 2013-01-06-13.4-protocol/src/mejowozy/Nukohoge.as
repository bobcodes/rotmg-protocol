package mejowozy
{
[CLASS1854]   import com.company.assembleegameclient.objects.BasicObject;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsBitmapFill;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.util.Nosupygu;
   import flash.display.BitmapData;


   public class Nukohoge extends BasicObject
   {
      public function Nukohoge(param1:BitmapData) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vS_=new Vector.<Number>(8);
         this.wyrerevo=new Matrix();
         this.path_=new GraphicsPath(Nosupygu.quk,null);
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         super();
         this.bitmapFill_.bitmapData=param1;
         objectId_=gyhubin();
         return;
      }

      public var mebakogef:Number = 0;

      public var pyloz:Number;

      public var jozutulu:Number;

      public var fehamew:Number;

      protected var vS_:Vector.<Number>;

      protected var wyrerevo:Matrix;

      protected var path_:GraphicsPath;

      protected var bitmapFill_:GraphicsBitmapFill;

      public function initialize(param1:Number, param2:Number, param3:Number, param4:Number, param5:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.mebakogef=param1;
         this.pyloz=param2;
         this.jozutulu=param3;
         this.fehamew=param4;
         z_=param5;
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Number = this.bitmapFill_.bitmapData.width/2;
         var _loc5_:Number = this.bitmapFill_.bitmapData.height/2;
         this.vS_[6]=this.vS_[0]=meluhykag[3]-_loc4_;
         this.vS_[3]=this.vS_[1]=meluhykag[4]-_loc5_;
         this.vS_[4]=this.vS_[2]=meluhykag[3]+_loc4_;
         this.vS_[7]=this.vS_[5]=meluhykag[4]+_loc5_;
         this.path_.data=this.vS_;
         this.wyrerevo.identity();
         this.wyrerevo.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.wyrerevo;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Nosupygu.END_FILL);
         return;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         map_=null;
         togofijo=null;
         return;
      }
   }
[/CLASS]
}