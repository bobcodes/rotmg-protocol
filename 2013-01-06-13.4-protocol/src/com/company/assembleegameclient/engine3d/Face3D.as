package com.company.assembleegameclient.engine3d
{
[CLASS1668]   import flash.display.GraphicsSolidFill;
   import flash.display.BitmapData;
   import __AS3__.vec.Vector;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import flash.geom.Utils3D;
   import com.company.util.Nosupygu;
   import com.company.util.Lajuvi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.geom.Vector3D;
   import flash.display.GraphicsPathCommand;


   public class Face3D extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Face3D(param1:BitmapData, param2:Vector.<Number>, param3:Vector.<Number>, param4:Boolean=false, param5:Boolean=false) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Vector3D = null;
         this.vout_=new Vector.<Number>();
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(new Vector.<int>(),null);
         super();
         this.dugy=param1;
         this.jyjudeku=param2;
         this.megew=param3;
         this.giqijapij=param4;
         if(param5)
         {
            _loc7_=new Vector3D();
            Wyjejygik.syrogyked(param2,_loc7_);
            this.nofudes=Micoh.mysahiget(_loc7_,0.75);
         }
         this.path_.commands.push(GraphicsPathCommand.MOVE_TO);
         var _loc6_:* = 3;
         while(_loc6_<this.jyjudeku.length)
         {
            this.path_.commands.push(GraphicsPathCommand.LINE_TO);
            _loc6_=_loc6_+3;
         }
         this.path_.data=this.vout_;
         return;
      }

      private static const tuzewip:GraphicsSolidFill = new GraphicsSolidFill(0,1);

      public var dugy:BitmapData;

      public var jyjudeku:Vector.<Number>;

      public var megew:Vector.<Number>;

      public var vout_:Vector.<Number>;

      public var giqijapij:Boolean;

      public var nofudes:Number = 1.0;

      public var juzosylig:Boolean = false;

      private var melepe:Boolean = true;

      private var bujecejo:TextureMatrix = null;

      public var bitmapFill_:GraphicsBitmapFill;

      private var path_:GraphicsPath;

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dugy=null;
         this.jyjudeku=null;
         this.megew=null;
         this.vout_=null;
         this.bujecejo=null;
         this.bitmapFill_=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.path_=null;
         return;
      }

      public function hucuzygy(param1:BitmapData) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.dugy==param1)
         {
            return;
         }
         this.dugy=param1;
         this.melepe=true;
         return;
      }

      public function mit(param1:Vector.<Number>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.megew=param1;
         this.melepe=true;
         return;
      }

      public function hinamag() : Number {
         var _loc4_:* = false;
         var _loc5_:* = true;
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

      public function draw(param1:Vector.<IGraphicsData>, param2:Fot) : Boolean {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc10_:Vector.<Number> = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = 0;
         Utils3D.projectVectors(param2.wToS_,this.jyjudeku,this.vout_,this.megew);
         if(this.giqijapij)
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
         var _loc3_:Number = param2.wyly.x-10;
         var _loc4_:Number = param2.wyly.y-10;
         var _loc5_:Number = param2.wyly.right+10;
         var _loc6_:Number = param2.wyly.bottom+10;
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
         if(this.juzosylig)
         {
            param1.push(tuzewip);
            param1.push(this.path_);
            param1.push(Nosupygu.END_FILL);
            return true;
         }
         if(this.melepe)
         {
            this.derelefyl();
         }
         this.bujecejo.calculateTextureMatrix(this.vout_);
         this.bitmapFill_.bitmapData=this.bujecejo.texture_;
         this.bitmapFill_.matrix=this.bujecejo.tToS_;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Nosupygu.END_FILL);
         return true;
      }

      public function contains(param1:Number, param2:Number) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(Lajuvi.capaqa(this.vout_[0],this.vout_[1],this.vout_[2],this.vout_[3],this.vout_[4],this.vout_[5],param1,param2))
         {
            return true;
         }
         if(this.vout_.length==8&&(Lajuvi.capaqa(this.vout_[0],this.vout_[1],this.vout_[4],this.vout_[5],this.vout_[6],this.vout_[7],param1,param2)))
         {
            return true;
         }
         return false;
      }

      private function derelefyl() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = TextureRedrawer.lilycomes(this.dugy,this.nofudes);
         if(this.bujecejo==null)
         {
            this.bujecejo=new TextureMatrix(_loc1_,this.megew);
         }
         else
         {
            this.bujecejo.texture_=_loc1_;
            this.bujecejo.sehiwymy(this.megew);
         }
         this.melepe=false;
         return;
      }
   }
[/CLASS]
}