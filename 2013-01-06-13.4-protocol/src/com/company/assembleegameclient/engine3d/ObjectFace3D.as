package com.company.assembleegameclient.engine3d
{
[CLASS1669]   import __AS3__.vec.Vector;
   import flash.display.BitmapData;
   import flash.geom.Vector3D;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsBitmapFill;
   import flash.display.IGraphicsData;
   import com.company.util.MoreColorUtil;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Nosupygu;
   import flash.geom.Matrix;
   import flash.display.GraphicsPathCommand;


   public class ObjectFace3D extends Object
   {
      public function ObjectFace3D(param1:Daburap, param2:Vector.<int>, param3:Boolean=true) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         this.bizegik=new GraphicsSolidFill(16777215,1);
         this.tToS_=new Matrix();
         this.tempMatrix_=new Matrix();
         super();
         this.obj_=param1;
         this.ruwogafo=param2;
         this.kokozoj=param3;
         var _loc4_:Vector.<int> = new Vector.<int>();
         var _loc5_:* = 0;
         while(_loc5_<this.ruwogafo.length)
         {
            _loc4_.push(GraphicsPathCommand.MOVE_TO);
            _loc5_++;
         }
         var _loc6_:Vector.<Number> = new Vector.<Number>();
         _loc6_.length=this.ruwogafo.length*2;
         this.path_=new GraphicsPath(_loc4_,_loc6_);
         return;
      }

      public var obj_:Daburap;

      public var ruwogafo:Vector.<int>;

      public var kokozoj:Boolean;

      public var texture_:BitmapData = null;

      public var normalL_:Vector3D = null;

      public var rumaduro:Vector3D;

      public var nofudes:Number = 1.0;

      private var path_:GraphicsPath;

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ruwogafo=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.path_=null;
         return;
      }

      public function hiwajyw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rumaduro=new Vector3D();
         Wyjejygik.nugub(this.obj_.wahatu(this.ruwogafo[0]),this.obj_.wahatu(this.ruwogafo[1]),this.obj_.wahatu(this.ruwogafo[this.ruwogafo.length-1]),this.rumaduro);
         this.nofudes=Micoh.mysahiget(this.rumaduro,0.75);
         if(this.normalL_!=null)
         {
            this.rumaduro=this.obj_.sorana.deltaTransformVector(this.normalL_);
         }
         return;
      }

      private var bizegik:GraphicsSolidFill;

      public const bitmapFill_:GraphicsBitmapFill = new GraphicsBitmapFill();

      public function draw(param1:Vector.<IGraphicsData>, param2:uint, param3:BitmapData) : void {
         var _loc14_:* = false;
         var _loc15_:* = true;
         var _loc13_:* = 0;
         var _loc4_:int = this.ruwogafo[0]*2;
         var _loc5_:int = this.ruwogafo[1]*2;
         var _loc6_:int = this.ruwogafo[this.ruwogafo.length-1]*2;
         var _loc7_:Vector.<Number> = this.obj_.vS_;
         var _loc8_:Number = _loc7_[_loc5_]-_loc7_[_loc4_];
         var _loc9_:Number = _loc7_[_loc5_+1]-_loc7_[_loc4_+1];
         var _loc10_:Number = _loc7_[_loc6_]-_loc7_[_loc4_];
         var _loc11_:Number = _loc7_[_loc6_+1]-_loc7_[_loc4_+1];
         if(_loc8_*_loc11_-_loc9_*_loc10_<0)
         {
            return;
         }
         if(!this.kokozoj||param3==null)
         {
            this.bizegik.color=MoreColorUtil.byz(new ColorTransform(this.nofudes,this.nofudes,this.nofudes),param2);
            param1.push(this.bizegik);
         }
         else
         {
            param3=TextureRedrawer.lilycomes(param3,this.nofudes);
            this.bitmapFill_.bitmapData=param3;
            this.bitmapFill_.matrix=this.hyzy(param3);
            param1.push(this.bitmapFill_);
         }
         var _loc12_:* = 0;
         while(_loc12_<this.ruwogafo.length)
         {
            _loc13_=this.ruwogafo[_loc12_];
            this.path_.data[_loc12_*2]=_loc7_[_loc13_*2];
            this.path_.data[_loc12_*2+1]=_loc7_[_loc13_*2+1];
            _loc12_++;
         }
         param1.push(this.path_);
         param1.push(Nosupygu.END_FILL);
         return;
      }

      private var tToS_:Matrix;

      private var tempMatrix_:Matrix;

      private function hyzy(param1:BitmapData) : Matrix {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc2_:Vector.<Number> = this.obj_.uvts_;
         var _loc3_:int = this.ruwogafo[0]*3;
         var _loc4_:int = this.ruwogafo[1]*3;
         var _loc5_:int = this.ruwogafo[this.ruwogafo.length-1]*3;
         var _loc6_:Number = _loc2_[_loc3_]*param1.width;
         var _loc7_:Number = _loc2_[_loc3_+1]*param1.height;
         this.tToS_.a=_loc2_[_loc4_]*param1.width-_loc6_;
         this.tToS_.b=_loc2_[_loc4_+1]*param1.height-_loc7_;
         this.tToS_.c=_loc2_[_loc5_]*param1.width-_loc6_;
         this.tToS_.d=_loc2_[_loc5_+1]*param1.height-_loc7_;
         this.tToS_.tx=_loc6_;
         this.tToS_.ty=_loc7_;
         this.tToS_.invert();
         _loc3_=this.ruwogafo[0]*2;
         _loc4_=this.ruwogafo[1]*2;
         _loc5_=this.ruwogafo[this.ruwogafo.length-1]*2;
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
[/CLASS]
}