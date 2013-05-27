package com.company.assembleegameclient.engine3d
{
   import __AS3__.vec.Vector;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import flash.display.BitmapData;
   import flash.geom.Utils3D;


   public class Gokot extends Object
   {
      public function Gokot(param1:Hivehihil=null) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Qava = null;
         this.faces_=new Vector.<ObjectFace3D>();
         this.vS_=new Vector.<Number>();
         this.vW_=new Vector.<Number>();
         this.qitir=new Matrix3D();
         super();
         if(param1!=null)
         {
            this.sozyk=param1;
            this.vL_=this.sozyk.vL_;
            this.uvts_=this.sozyk.uvts_.concat();
            for each (_loc2_ in this.sozyk.faces_)
            {
               this.faces_.push(new ObjectFace3D(this,_loc2_.jimezukut,_loc2_.piqin));
            }
         }
         else
         {
            this.vL_=new Vector.<Number>();
            this.uvts_=new Vector.<Number>();
         }
         this.setPosition(0,0,0,0);
         return;
      }

      public static function getObject(param1:String) : Gokot {
         var _loc2_:Hivehihil = Hivehihil.wasyvohu(param1);
         return new Gokot(_loc2_);
      }

      public var sozyk:Hivehihil = null;

      public var vL_:Vector.<Number>;

      public var uvts_:Vector.<Number>;

      public var faces_:Vector.<ObjectFace3D>;

      public var vS_:Vector.<Number>;

      public var vW_:Vector.<Number>;

      public var qitir:Matrix3D;

      public function dispose() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:ObjectFace3D = null;
         this.vL_=null;
         this.uvts_=null;
         for each (_loc1_ in this.faces_)
         {
            _loc1_.dispose();
         }
         this.faces_.length=0;
         this.faces_=null;
         this.vS_=null;
         this.vW_=null;
         this.qitir=null;
         return;
      }

      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Number) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:ObjectFace3D = null;
         this.qitir.identity();
         this.qitir.appendRotation(param4,Vector3D.Z_AXIS);
         this.qitir.appendTranslation(param1,param2,param3);
         this.qitir.transformVectors(this.vL_,this.vW_);
         for each (_loc5_ in this.faces_)
         {
            _loc5_.lirepyh();
         }
         return;
      }

      public function rawugydo(param1:int) : Vector3D {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = param1*3;
         if(_loc2_>=this.vW_.length)
         {
            return null;
         }
         return new Vector3D(this.vW_[_loc2_],this.vW_[_loc2_+1],this.vW_[_loc2_+2]);
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:uint, param4:BitmapData) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:ObjectFace3D = null;
         Utils3D.projectVectors(param2.wToS_,this.vW_,this.vS_,this.uvts_);
         for each (_loc5_ in this.faces_)
         {
            _loc5_.draw(param1,param3,param4);
         }
         return;
      }
   }

}