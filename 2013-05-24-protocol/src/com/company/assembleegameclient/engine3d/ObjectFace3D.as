package com.company.assembleegameclient.engine3d
{
   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Vector3D;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsBitmapFill;
   import flash.display.IGraphicsData;
   import com.company.util.MoreColorUtil;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Tizulo;
   import flash.geom.Matrix;
   import flash.display.GraphicsPathCommand;


   public class ObjectFace3D extends Object
   {
      public function ObjectFace3D(param1:Gokot, param2:Vector.<int>, param3:Boolean=true) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.lokocacu=new GraphicsSolidFill(16777215,1);
         this.tToS_=new Matrix();
         this.tempMatrix_=new Matrix();
         super();
         this.obj_=param1;
         this.cysodeluk=param2;
         this.piqin=param3;
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc5_:* = 0;
         while(_loc5_<this.cysodeluk.length)
         {
            _loc4_.push(GraphicsPathCommand.MOVE_TO);
            _loc5_++;
         }
         var _loc6_:Vector.<Number> = new Vector.<Number>();
         _loc6_.length=this.cysodeluk.length*2;
         this.path_=new GraphicsPath(_loc4_,_loc6_);
         return;
      }

      public var obj_:Gokot;

      public var cysodeluk:Vector.<int>;

      public var piqin:Boolean;

      public var texture_:BitmapData = null;

      public var normalL_:Vector3D = null;

      public var heqov:Vector3D;

      public var kifahyse:Number = 1.0;

      private var path_:GraphicsPath;

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cysodeluk=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.path_=null;
         return;
      }

      public function lirepyh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.heqov=new Vector3D();
         Durypagi.gan(this.obj_.rawugydo(this.cysodeluk[0]),this.obj_.rawugydo(this.cysodeluk[1]),this.obj_.rawugydo(this.cysodeluk[this.cysodeluk.length-1]),this.heqov);
         this.kifahyse=Luhovawig.zycekaj(this.heqov,0.75);
         if(this.normalL_!=null)
         {
            this.heqov=this.obj_.qitir.deltaTransformVector(this.normalL_);
         }
         return;
      }

      private var lokocacu:GraphicsSolidFill;

      public const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill();

      public function draw(param1:Vector.<IGraphicsData>, param2:uint, param3:BitmapData) : void {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc13_:* = 0;
         var _loc4_:int = this.cysodeluk[0]*2;
         var _loc5_:int = this.cysodeluk[1]*2;
         var _loc6_:int = this.cysodeluk[this.cysodeluk.length-1]*2;
         var _loc7_:Vector.<Number> = this.obj_.vS_;
         var _loc8_:Number = _loc7_[_loc5_]-_loc7_[_loc4_];
         var _loc9_:Number = _loc7_[_loc5_+1]-_loc7_[_loc4_+1];
         var _loc10_:Number = _loc7_[_loc6_]-_loc7_[_loc4_];
         var _loc11_:Number = _loc7_[_loc6_+1]-_loc7_[_loc4_+1];
         if(_loc8_*_loc11_-_loc9_*_loc10_<0)
         {
            return;
         }
         if(!this.piqin||param3==null)
         {
            this.lokocacu.color=MoreColorUtil.geno(new ColorTransform(this.kifahyse,this.kifahyse,this.kifahyse),param2);
            param1.push(this.lokocacu);
         }
         else
         {
            param3=TextureRedrawer.selorub(param3,this.kifahyse);
            this.bitmapFill_.bitmapData=param3;
            this.bitmapFill_.matrix=this.gepyrora(param3);
            param1.push(this.bitmapFill_);
         }
         var _loc12_:* = 0;
         while(_loc12_<this.cysodeluk.length)
         {
            _loc13_=this.cysodeluk[_loc12_];
            this.path_.data[_loc12_*2]=_loc7_[_loc13_*2];
            this.path_.data[_loc12_*2+1]=_loc7_[_loc13_*2+1];
            _loc12_++;
         }
         param1.push(this.path_);
         param1.push(Tizulo.END_FILL);
         return;
      }

      private var tToS_:Matrix;

      private var tempMatrix_:Matrix;

      private function gepyrora(param1:BitmapData) : Matrix {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc2_:Vector.<Number> = this.obj_.uvts_;
         var _loc3_:int = this.cysodeluk[0]*3;
         var _loc4_:int = this.cysodeluk[1]*3;
         var _loc5_:int = this.cysodeluk[this.cysodeluk.length-1]*3;
         var _loc6_:Number = _loc2_[_loc3_]*param1.width;
         var _loc7_:Number = _loc2_[_loc3_+1]*param1.height;
         this.tToS_.a=_loc2_[_loc4_]*param1.width-_loc6_;
         this.tToS_.b=_loc2_[_loc4_+1]*param1.height-_loc7_;
         this.tToS_.c=_loc2_[_loc5_]*param1.width-_loc6_;
         this.tToS_.d=_loc2_[_loc5_+1]*param1.height-_loc7_;
         this.tToS_.tx=_loc6_;
         this.tToS_.ty=_loc7_;
         this.tToS_.invert();
         _loc3_=this.cysodeluk[0]*2;
         _loc4_=this.cysodeluk[1]*2;
         _loc5_=this.cysodeluk[this.cysodeluk.length-1]*2;
         var _loc8_:Vector.<Number> = this.obj_.vS_;
         this.tempMatrix_.a=_loc8_[_loc4_]-_loc8_[_loc3_];
         this.tempMatrix_.b=_loc8_[_loc4_+1]-_loc8_[_loc3_+1];
         this.tempMatrix_.c=_loc8_[_loc5_]-_loc8_[_loc3_];
         this.tempMatrix_.d=_loc8_[_loc5_+1]-_loc8_[_loc3_+1];
         this.tempMatrix_.tx=_loc8_[_loc3_];
         this.tempMatrix_.ty=_loc8_[_loc3_+1];
         this.tToS_.concat(this.tempMatrix_);
         return this.tToS_;
      }
   }

}