package pufupav
{
   import com.company.assembleegameclient.objects.BasicObject;
   import flash.display.BitmapData;
   import zijyq.Animations;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.map.Square;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.geom.Matrix;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Dyrejocu;


   public class Nod extends BasicObject
   {
      public function Nod(param1:Gunafi) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Dyrejocu.capuz,null);
         this.vS_=new Vector.<Number>();
         this.gocabe=new Vector.<Number>();
         this.puval=new Matrix();
         super();
         objectId_=hofuvupud();
         this.size_=param1.size_;
         z_=param1.z_;
         this.copijyqu=param1.duration_;
         this.texture_=param1.mor.getTexture(objectId_);
         if(param1.pacuhyqa!=null)
         {
            this.paparawad=new Animations(param1.pacuhyqa);
         }
         this.moveVec_=new Vector3D();
         var _loc2_:Number = Math.PI*2*Math.random();
         this.moveVec_.x=Math.cos(_loc2_)*0.1*5;
         this.moveVec_.y=Math.sin(_loc2_)*0.1*5;
         return;
      }

      public var texture_:BitmapData = null;

      public var paparawad:Animations = null;

      public var size_:int;

      public var copijyqu:Number;

      public var moveVec_:Vector3D;

      public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(_loc3_==null)
         {
            return false;
         }
         x_=param1;
         y_=param2;
         mizuky=_loc3_;
         return true;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Number = param2/1000;
         this.copijyqu=this.copijyqu-_loc3_;
         if(this.copijyqu<=0.0)
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

      protected var gocabe:Vector.<Number>;

      protected var puval:Matrix;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:BitmapData = null;
         var _loc4_:BitmapData = this.texture_;
         if(this.paparawad!=null)
         {
            _loc7_=this.paparawad.getTexture(param3);
            if(_loc7_!=null)
            {
               _loc4_=_loc7_;
            }
         }
         _loc4_=TextureRedrawer.redraw(_loc4_,this.size_,true,0,0);
         var _loc5_:int = _loc4_.width;
         var _loc6_:int = _loc4_.height;
         this.vS_.length=0;
         this.vS_.push(witog[3]-_loc5_/2,witog[4]-_loc6_,witog[3]+_loc5_/2,witog[4]-_loc6_,witog[3]+_loc5_/2,witog[4],witog[3]-_loc5_/2,witog[4]);
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