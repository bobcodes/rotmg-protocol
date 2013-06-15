package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.engine3d.Face3D;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.map.Square;


   public class DoubleWall extends GameObject
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function DoubleWall(param1:XML) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.faces_=new Vector.<Face3D>();
         super(param1);
         budav=false;
         var _loc2_:Sep = ObjectLibrary.medyqi[objectType_];
         this.fukibe=_loc2_.getTexture(0);
         return;
      }

      private static const vucip:Vector.<Number> = new Vector.<Number>(12);

      private static const hohupepic:Vector.<Number> = new Vector.<Number>(12);

      private static const ronada:Vector.<int> = new Vector.<int>(4);

      private static const bacy:Vector.<int> = new Vector.<int>(4);

      public var faces_:Vector.<Face3D>;

      private var duhig:Face3D = null;

      private var fukibe:BitmapData = null;

      override public function setObjectId(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super.setObjectId(param1);
         var _loc2_:Sep = ObjectLibrary.medyqi[objectType_];
         this.fukibe=_loc2_.getTexture(param1);
         return;
      }

      override public function getColor() : uint {
         return BitmapUtil.jemirus(this.fukibe);
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:BitmapData = null;
         var _loc7_:Face3D = null;
         var _loc8_:Square = null;
         if(texture_==null)
         {
            return;
         }
         if(this.faces_.length==0)
         {
            this.jamabeki();
         }
         var _loc4_:BitmapData = texture_;
         if(paparawad!=null)
         {
            _loc6_=paparawad.getTexture(param3);
            if(_loc6_!=null)
            {
               _loc4_=_loc6_;
            }
         }
         var _loc5_:* = 0;
         while(_loc5_<this.faces_.length)
         {
            _loc7_=this.faces_[_loc5_];
            _loc8_=map_.lookupSquare(x_+ronada[_loc5_],y_+bacy[_loc5_]);
            if(_loc8_==null||_loc8_.texture_==null||!(_loc8_==null)&&_loc8_.obj_ is DoubleWall&&!_loc8_.obj_.logi)
            {
               _loc7_.fyfinu=true;
            }
            else
            {
               _loc7_.fyfinu=false;
               if(paparawad!=null)
               {
                  _loc7_.mekudof(_loc4_);
               }
            }
            _loc7_.draw(param1,param2);
            _loc5_++;
         }
         this.duhig.draw(param1,param2);
         return;
      }

      public function jamabeki() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.faces_.length=0;
         var _loc1_:int = x_;
         var _loc2_:int = y_;
         new Vector.<Number>(12)[0]=_loc1_;
         new Vector.<Number>(12)[1]=_loc2_;
         new Vector.<Number>(12)[2]=2;
         new Vector.<Number>(12)[3]=_loc1_+1;
         new Vector.<Number>(12)[4]=_loc2_;
         new Vector.<Number>(12)[5]=2;
         new Vector.<Number>(12)[6]=_loc1_+1;
         new Vector.<Number>(12)[7]=_loc2_+1;
         new Vector.<Number>(12)[8]=2;
         new Vector.<Number>(12)[9]=_loc1_;
         new Vector.<Number>(12)[10]=_loc2_+1;
         new Vector.<Number>(12)[11]=2;
         var _loc3_:Vector.<Number> = new Vector.<Number>(12);
         this.duhig=new Face3D(this.fukibe,_loc3_,vucip,false,true);
         this.duhig.bitmapFill_.repeat=true;
         this.qome(_loc1_,_loc2_,2,_loc1_+1,_loc2_,2);
         this.qome(_loc1_+1,_loc2_,2,_loc1_+1,_loc2_+1,2);
         this.qome(_loc1_+1,_loc2_+1,2,_loc1_,_loc2_+1,2);
         this.qome(_loc1_,_loc2_+1,2,_loc1_,_loc2_,2);
         return;
      }

      private function qome(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Number) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         new Vector.<Number>(12)[0]=param1;
         new Vector.<Number>(12)[1]=param2;
         new Vector.<Number>(12)[2]=param3;
         new Vector.<Number>(12)[3]=param4;
         new Vector.<Number>(12)[4]=param5;
         new Vector.<Number>(12)[5]=param6;
         new Vector.<Number>(12)[6]=param4;
         new Vector.<Number>(12)[7]=param5;
         new Vector.<Number>(12)[8]=param6-2;
         new Vector.<Number>(12)[9]=param1;
         new Vector.<Number>(12)[10]=param2;
         new Vector.<Number>(12)[11]=param3-2;
         var _loc7_:Vector.<Number> = new Vector.<Number>(12);
         var _loc8_:Face3D = new Face3D(texture_,_loc7_,hohupepic,true,true);
         _loc8_.bitmapFill_.repeat=true;
         this.faces_.push(_loc8_);
         return;
      }
   }

}