package com.company.assembleegameclient.map
{
[CLASS1145]   import __AS3__.vec.Vector;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.engine3d.TextureMatrix;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.util.Dajo;


   public class Square extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Square(param1:Map, param2:int, param3:int) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.props_=Lakum.gebyjyri;
         this.faces_=new Vector.<Bujubakuh>();
         super();
         this.map_=param1;
         this.x_=param2;
         this.y_=param3;
         this.center_=new Vector3D(this.x_+0.5,this.y_+0.5,0);
         new Vector.<Number>(12)[0]=this.x_;
         new Vector.<Number>(12)[1]=this.y_;
         new Vector.<Number>(12)[2]=0;
         new Vector.<Number>(12)[3]=this.x_+1;
         new Vector.<Number>(12)[4]=this.y_;
         new Vector.<Number>(12)[5]=0;
         new Vector.<Number>(12)[6]=this.x_+1;
         new Vector.<Number>(12)[7]=this.y_+1;
         new Vector.<Number>(12)[8]=0;
         new Vector.<Number>(12)[9]=this.x_;
         new Vector.<Number>(12)[10]=this.y_+1;
         new Vector.<Number>(12)[11]=0;
         this.jyjudeku=new Vector.<Number>(12);
         return;
      }

      public static const gehocezaf:Vector.<Number> = new Vector.<Number>(12);

      private static const giziti:Vector.<int> = new Vector.<int>(7);

      private static function hash(param1:int, param2:int) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = giziti[(param1+param2)%7];
         var _loc4_:* = (param1<<16|param2)^81397550;
         _loc4_=_loc4_*_loc3_%65535;
         return _loc4_;
      }

      public var map_:Map;

      public var x_:int;

      public var y_:int;

      public var tileType_:uint = 255;

      public var center_:Vector3D;

      public var jyjudeku:Vector.<Number>;

      public var obj_:GameObject = null;

      public var props_:Deja;

      public var texture_:BitmapData = null;

      public var sink_:int = 0;

      public var lastDamage_:int = 0;

      public var faces_:Vector.<Bujubakuh>;

      public var risyc:Bujubakuh = null;

      public var baseTexMatrix_:TextureMatrix = null;

      public var siki:int;

      public function dispose() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Bujubakuh = null;
         this.map_=null;
         this.center_=null;
         this.jyjudeku=null;
         this.obj_=null;
         this.texture_=null;
         for each (_loc1_ in this.faces_)
         {
            _loc1_.dispose();
         }
         this.faces_.length=0;
         if(this.risyc!=null)
         {
            this.risyc.dispose();
            this.risyc=null;
         }
         this.faces_=null;
         this.baseTexMatrix_=null;
         return;
      }

      public function riwuguzal(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tileType_=param1;
         this.props_=Lakum.teqot[this.tileType_];
         this.texture_=Lakum.getBitmapData(this.tileType_,hash(this.x_,this.y_));
         this.baseTexMatrix_=new TextureMatrix(this.texture_,gehocezaf);
         this.faces_.length=0;
         return;
      }

      public function joceky() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !this.props_.vuvita&&(this.obj_==null||!this.obj_.props_.occupySquare_);
      }

      public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Bujubakuh = null;
         if(this.texture_==null)
         {
            return;
         }
         if(this.faces_.length==0)
         {
            this.har();
         }
         for each (_loc4_ in this.faces_)
         {
            if(!_loc4_.draw(param1,param2,param3))
            {
               if(_loc4_.face_.vout_[1]<param2.wyly.bottom)
               {
                  this.siki=0;
               }
               return;
            }
         }
         return;
      }

      public function fubiqy(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.risyc.draw(param1,param2,param3);
         return;
      }

      private function har() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:BitmapData = null;
         var _loc5_:Vector.<Number> = null;
         var _loc6_:uint = 0;
         this.faces_.length=0;
         this.risyc=null;
         var _loc1_:BitmapData = null;
         if(this.props_.animate_.type_!=Redoroqo.saluf)
         {
            this.faces_.push(new Bujubakuh(this.texture_,this.jyjudeku,this.props_.levedofon,this.props_.levedofon,this.props_.animate_.type_,this.props_.animate_.dx_,this.props_.animate_.dy_));
            _loc1_=Dajo.redraw(this,false);
            if(_loc1_!=null)
            {
               this.faces_.push(new Bujubakuh(_loc1_,this.jyjudeku,0,0,Redoroqo.saluf,0,0));
            }
         }
         else
         {
            _loc1_=Dajo.redraw(this,true);
            _loc2_=0;
            _loc3_=0;
            if(_loc1_==null)
            {
               if(this.props_.myk)
               {
                  _loc2_=int(this.texture_.width*Math.random())/this.texture_.width;
                  _loc3_=int(this.texture_.height*Math.random())/this.texture_.height;
               }
               else
               {
                  _loc2_=this.props_.levedofon;
                  _loc3_=this.props_.wona;
               }
            }
            this.faces_.push(new Bujubakuh(_loc1_!=null?_loc1_:this.texture_,this.jyjudeku,_loc2_,_loc3_,Redoroqo.saluf,0,0));
         }
         if(this.props_.sink_)
         {
            this.sink_=_loc1_==null?12:6;
         }
         else
         {
            this.sink_=0;
         }
         if(this.props_.hypuseb)
         {
            _loc4_=this.props_.hypuseb.getTexture();
            _loc5_=this.jyjudeku.concat();
            _loc6_=2;
            while(_loc6_<_loc5_.length)
            {
               _loc5_[_loc6_]=1;
               _loc6_=_loc6_+3;
            }
            this.risyc=new Bujubakuh(_loc4_,_loc5_,0,0,this.props_.carima.type_,this.props_.carima.dx_,this.props_.carima.dy_);
         }
         return;
      }
   }
[/CLASS]
}