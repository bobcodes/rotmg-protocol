package com.company.assembleegameclient.engine3d
{
   import flash.display.GraphicsSolidFill;
   import flash.display.BitmapData;
   import __AS3__.vec.Vector;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import flash.geom.Utils3D;
   import com.company.util.Dyrejocu;
   import com.company.util.Muguw;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.geom.Vector3D;
   import flash.display.GraphicsPathCommand;


   public class Face3D extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Face3D(param1:BitmapData, param2:Vector.<Number>, param3:Vector.<Number>, param4:Boolean=false, param5:Boolean=false) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Vector3D = null;
         this.vout_=new Vector.<Number>();
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(new Vector.<int>(),null);
         super();
         this.tepahu=param1;
         this.fugyqun=param2;
         this.gocabe=param3;
         this.kyrev=param4;
         if(param5)
         {
            _loc7_=new Vector3D();
            Vyj.qinynaw(param2,_loc7_);
            this.sojo=Furigin.budizidup(_loc7_,0.75);
         }
         this.path_.commands.push(GraphicsPathCommand.MOVE_TO);
         var _loc6_:* = 3;
         while(_loc6_<this.fugyqun.length)
         {
            this.path_.commands.push(GraphicsPathCommand.LINE_TO);
            _loc6_=_loc6_+3;
         }
         this.path_.data=this.vout_;
         return;
      }

      private static const tagypopen:GraphicsSolidFill = new GraphicsSolidFill(0,1);

      public var tepahu:BitmapData;

      public var fugyqun:Vector.<Number>;

      public var gocabe:Vector.<Number>;

      public var vout_:Vector.<Number>;

      public var kyrev:Boolean;

      public var sojo:Number = 1.0;

      public var fyfinu:Boolean = false;

      private var zyluq:Boolean = true;

      private var lopac:TextureMatrix = null;

      public var bitmapFill_:GraphicsBitmapFill;

      private var path_:GraphicsPath;

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tepahu=null;
         this.fugyqun=null;
         this.gocabe=null;
         this.vout_=null;
         this.lopac=null;
         this.bitmapFill_=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.path_=null;
         return;
      }

      public function mekudof(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.tepahu==param1)
         {
            return;
         }
         this.tepahu=param1;
         this.zyluq=true;
         return;
      }

      public function sizane(param1:Vector.<Number>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gocabe=param1;
         this.zyluq=true;
         return;
      }

      public function piquviho() : Number {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Number = -Number.MAX_VALUE;
         var _loc2_:int = this.vout_.length;
         var _loc3_:* = 0;
         while(_loc3_<_loc2_)
         {
            if(this.vout_[_loc3_+1]>_loc1_)
            {
               _loc1_=this.vout_[_loc3_+1];
            }
            _loc3_=_loc3_+2;
         }
         return _loc1_;
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi) : Boolean {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc10_:Vector.<Number> = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = 0;
         Utils3D.projectVectors(param2.wToS_,this.fugyqun,this.vout_,this.gocabe);
         if(this.kyrev)
         {
            _loc10_=this.vout_;
            _loc11_=_loc10_[2]-_loc10_[0];
            _loc12_=_loc10_[3]-_loc10_[1];
            _loc13_=_loc10_[4]-_loc10_[0];
            _loc14_=_loc10_[5]-_loc10_[1];
            if(_loc11_*_loc14_-_loc12_*_loc13_>0)
            {
               return false;
            }
         }
         var _loc3_:Number = param2.pajaqe.x-10;
         var _loc4_:Number = param2.pajaqe.y-10;
         var _loc5_:Number = param2.pajaqe.right+10;
         var _loc6_:Number = param2.pajaqe.bottom+10;
         var _loc7_:* = true;
         var _loc8_:int = this.vout_.length;
         var _loc9_:* = 0;
         while(_loc9_<_loc8_)
         {
            _loc15_=_loc9_+1;
            if(this.vout_[_loc9_]>=_loc3_&&this.vout_[_loc9_]<=_loc5_&&this.vout_[_loc15_]>=_loc4_&&this.vout_[_loc15_]<=_loc6_)
            {
               _loc7_=false;
               break;
            }
            _loc9_=_loc9_+2;
         }
         if(_loc7_)
         {
            return false;
         }
         if(this.fyfinu)
         {
            param1.push(tagypopen);
            param1.push(this.path_);
            param1.push(Dyrejocu.END_FILL);
            return true;
         }
         if(this.zyluq)
         {
            this.heroga();
         }
         this.lopac.calculateTextureMatrix(this.vout_);
         this.bitmapFill_.bitmapData=this.lopac.texture_;
         this.bitmapFill_.matrix=this.lopac.tToS_;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Dyrejocu.END_FILL);
         return true;
      }

      public function contains(param1:Number, param2:Number) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(Muguw.janivyz(this.vout_[0],this.vout_[1],this.vout_[2],this.vout_[3],this.vout_[4],this.vout_[5],param1,param2))
         {
            return true;
         }
         if(this.vout_.length==8&&(Muguw.janivyz(this.vout_[0],this.vout_[1],this.vout_[4],this.vout_[5],this.vout_[6],this.vout_[7],param1,param2)))
         {
            return true;
         }
         return false;
      }

      private function heroga() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = TextureRedrawer.dig(this.tepahu,this.sojo);
         if(this.lopac==null)
         {
            this.lopac=new TextureMatrix(_loc1_,this.gocabe);
         }
         else
         {
            this.lopac.texture_=_loc1_;
            this.lopac.losunizo(this.gocabe);
         }
         this.zyluq=false;
         return;
      }
   }

}