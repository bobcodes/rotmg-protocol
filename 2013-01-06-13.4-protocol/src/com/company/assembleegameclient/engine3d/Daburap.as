package com.company.assembleegameclient.engine3d
{
[CLASS1307]   import __AS3__.vec.Vector;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import flash.display.BitmapData;
   import flash.geom.Utils3D;


   public class Daburap extends Object
   {
      public function Daburap(param1:Pyhotuni=null) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Kevyref = null;
         this.faces_=new Vector.<ObjectFace3D>();
         this.vS_=new Vector.<Number>();
         this.vW_=new Vector.<Number>();
         this.sorana=new Matrix3D();
         super();
         if(param1!=null)
         {
            this.kitahady=param1;
            this.vL_=this.kitahady.vL_;
            this.uvts_=this.kitahady.uvts_.concat();
            for each (_loc2_ in this.kitahady.faces_)
            {
               this.faces_.push(new ObjectFace3D(this,_loc2_.cibo,_loc2_.kokozoj));
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

      public static function getObject(param1:String) : Daburap {
         var _loc2_:Pyhotuni = Pyhotuni.salapy(param1);
         return new Daburap(_loc2_);
      }

      public var kitahady:Pyhotuni = null;

      public var vL_:Vector.<Number>;

      public var uvts_:Vector.<Number>;

      public var faces_:Vector.<ObjectFace3D>;

      public var vS_:Vector.<Number>;

      public var vW_:Vector.<Number>;

      public var sorana:Matrix3D;

      public function dispose() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
         this.sorana=null;
         return;
      }

      public function setPosition(param1:Number, param2:Number, param3:Number, param4:Number) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:ObjectFace3D = null;
         this.sorana.identity();
         this.sorana.appendRotation(param4,Vector3D.Z_AXIS);
         this.sorana.appendTranslation(param1,param2,param3);
         this.sorana.transformVectors(this.vL_,this.vW_);
         for each (_loc5_ in this.faces_)
         {
            _loc5_.hiwajyw();
         }
         return;
      }

      public function wahatu(param1:int) : Vector3D {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = param1*3;
         if(_loc2_>=this.vW_.length)
         {
            return null;
         }
         return new Vector3D(this.vW_[_loc2_],this.vW_[_loc2_+1],this.vW_[_loc2_+2]);
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:uint, param4:BitmapData) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:ObjectFace3D = null;
         Utils3D.projectVectors(param2.wToS_,this.vW_,this.vS_,this.uvts_);
         for each (_loc5_ in this.faces_)
         {
            _loc5_.draw(param1,param3,param4);
         }
         return;
      }
   }
[/CLASS]
}