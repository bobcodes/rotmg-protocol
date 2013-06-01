package mejowozy
{
[CLASS1855]   import com.company.assembleegameclient.objects.BasicObject;
   import flash.display.BitmapData;
   import sakopame.Animations;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.map.Square;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Nosupygu;


   public class Legij extends BasicObject
   {
      public function Legij(param1:Netevyqaw) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Nosupygu.quk,null);
         this.vS_=new Vector.<Number>();
         this.megew=new Vector.<Number>();
         this.wyrerevo=new Matrix();
         super();
         objectId_=gyhubin();
         this.size_=param1.size_;
         z_=param1.z_;
         this.hanuk=param1.duration_;
         this.texture_=param1.welerago.getTexture(objectId_);
         if(param1.fily!=null)
         {
            this.qugabyjev=new Animations(param1.fily);
         }
         this.moveVec_=new Vector3D();
         var _loc2_:Number = Math.PI*2*Math.random();
         this.moveVec_.x=Math.cos(_loc2_)*0.1*5;
         this.moveVec_.y=Math.sin(_loc2_)*0.1*5;
         return;
      }

      public var texture_:BitmapData = null;

      public var qugabyjev:Animations = null;

      public var size_:int;

      public var hanuk:Number;

      public var moveVec_:Vector3D;

      public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(_loc3_==null)
         {
            return false;
         }
         x_=param1;
         y_=param2;
         togofijo=_loc3_;
         return true;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Number = param2/1000;
         this.hanuk=this.hanuk-_loc3_;
         if(this.hanuk<=0.0)
         {
            return false;
         }
         x_=x_+this.moveVec_.x*_loc3_;
         y_=y_+this.moveVec_.y*_loc3_;
         return true;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var megew:Vector.<Number>;

      protected var wyrerevo:Matrix;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:BitmapData = null;
         var _loc4_:BitmapData = this.texture_;
         if(this.qugabyjev!=null)
         {
            _loc7_=this.qugabyjev.getTexture(param3);
            if(_loc7_!=null)
            {
               _loc4_=_loc7_;
            }
         }
         _loc4_=TextureRedrawer.redraw(_loc4_,this.size_,true,0,0);
         var _loc5_:int = _loc4_.width;
         var _loc6_:int = _loc4_.height;
         this.vS_.length=0;
         this.vS_.push(meluhykag[3]-_loc5_/2,meluhykag[4]-_loc6_,meluhykag[3]+_loc5_/2,meluhykag[4]-_loc6_,meluhykag[3]+_loc5_/2,meluhykag[4],meluhykag[3]-_loc5_/2,meluhykag[4]);
         this.path_.data=this.vS_;
         this.bitmapFill_.bitmapData=_loc4_;
         this.wyrerevo.identity();
         this.wyrerevo.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.wyrerevo;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Nosupygu.END_FILL);
         return;
      }
   }
[/CLASS]
}