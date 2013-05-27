package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.engine3d.Malar;
   import com.company.util.Trig;
   import com.company.assembleegameclient.map.Map;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.map.Square;
   import com.company.assembleegameclient.util.Hidad;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.Befiset;
   import moryzis.HitEffect;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import moryzis.Lupu;
   import com.company.assembleegameclient.util.Hatuf;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import com.company.util.Tizulo;
   import flash.display.GradientType;
   import flash.geom.Matrix;


   public class Projectile extends BasicObject
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Projectile() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qiputis=new Malar(100);
         this.pegez=new Point();
         this.bypovudyp=new Vector3D();
         this.ged=new GraphicsGradientFill(GradientType.RADIAL,[0,0],[0.5,0],null,new Matrix());
         this.lagefojul=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
         super();
         return;
      }

      private static var casacu:Dictionary = new Dictionary();

      public static function cunyjy(param1:int, param2:uint) : int {
         return casacu[param2<<24|param1];
      }

      public static function gyq(param1:int, param2:uint) : int {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:int = mej();
         casacu[param2<<24|param1]=_loc3_;
         return _loc3_;
      }

      public static function meguge(param1:int, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         delete casacu[[param2<<24|param1]];
         return;
      }

      public static function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         casacu=new Dictionary();
         return;
      }

      public var props_:ObjectProperties;

      public var cuq:ObjectProperties;

      public var dil:Rymes;

      public var texture_:BitmapData;

      public var bulletId_:uint;

      public var ownerId_:int;

      public var containerType_:int;

      public var bulletType_:uint;

      public var vyvis:Boolean;

      public var jelukiqa:Boolean;

      public var damage_:int;

      public var wucu:String;

      public var vynewivys:Number;

      public var sizazy:Number;

      public var startTime_:int;

      public var angle_:Number = 0;

      public var janudagy:Dictionary;

      public var qiputis:Malar;

      public function reset(param1:int, param2:int, param3:int, param4:int, param5:Number, param6:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:* = NaN;
         clear();
         this.containerType_=param1;
         this.bulletType_=param2;
         this.ownerId_=param3;
         this.bulletId_=param4;
         this.angle_=Trig.bifewodo(param5);
         this.startTime_=param6;
         objectId_=gyq(this.ownerId_,this.bulletId_);
         z_=0.5;
         this.cuq=ObjectLibrary.lego[this.containerType_];
         this.dil=this.cuq.pobakigas[param2];
         this.props_=ObjectLibrary.gygeqaguc(this.dil.objectId_);
         kyjon=this.props_.kehypu>0;
         var _loc7_:Sirador = ObjectLibrary.wotoga[this.props_.type_];
         this.texture_=_loc7_.getTexture(objectId_);
         this.jelukiqa=this.cuq.isEnemy_;
         this.vyvis=!this.jelukiqa;
         this.wucu=this.cuq.vadufy;
         this.janudagy=this.dil.fabyfupah?new Dictionary():null;
         if(this.dil.size_>=0)
         {
            _loc8_=this.dil.size_;
         }
         else
         {
            _loc8_=ObjectLibrary.lukol(this.containerType_);
         }
         this.qiputis.setSize(8*_loc8_/100);
         this.damage_=0;
         return;
      }

      public function zacuz(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.damage_=param1;
         return;
      }

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Player = null;
         this.vynewivys=param2;
         this.sizazy=param3;
         if(!super.addTo(param1,param2,param3))
         {
            return false;
         }
         if(!this.cuq.flying_&&(garatecif.sink_))
         {
            z_=0.1;
         }
         else
         {
            _loc4_=param1.goDict_[this.ownerId_] as Player;
            if(!(_loc4_==null)&&_loc4_.lela>0)
            {
               z_=0.5-0.4*_loc4_.lela/UserConfig.jowicizos;
            }
         }
         return true;
      }

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
         garatecif=_loc3_;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.removeFromMap();
         meguge(this.ownerId_,this.bulletId_);
         this.janudagy=null;
         Hidad.dub(this);
         return;
      }

      private function jefuvocy(param1:int, param2:Point) : void {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         param2.x=this.vynewivys;
         param2.y=this.sizazy;
         var _loc3_:Number = param1*this.dil.speed_/10000;
         var _loc4_:Number = this.bulletId_%2==0?0:Math.PI;
         if(this.dil.nihiku)
         {
            _loc5_=6*Math.PI;
            _loc6_=Math.PI/64;
            _loc7_=this.angle_+_loc6_*Math.sin(_loc4_+_loc5_*param1/1000);
            param2.x=param2.x+_loc3_*Math.cos(_loc7_);
            param2.y=param2.y+_loc3_*Math.sin(_loc7_);
         }
         else
         {
            if(this.dil.cuta)
            {
               _loc8_=param1/this.dil.lifetime_*2*Math.PI;
               _loc9_=Math.sin(_loc8_)*(this.bulletId_%2?1:-1);
               _loc10_=Math.sin(2*_loc8_)*(this.bulletId_%4<2?1:-1);
               _loc11_=Math.sin(this.angle_);
               _loc12_=Math.cos(this.angle_);
               param2.x=param2.x+(_loc9_*_loc12_-_loc10_*_loc11_)*this.dil.wudeqyd;
               param2.y=param2.y+(_loc9_*_loc11_+_loc10_*_loc12_)*this.dil.wudeqyd;
            }
            else
            {
               if(this.dil.fesigavaz)
               {
                  _loc13_=this.dil.lifetime_*this.dil.speed_/10000/2;
                  if(_loc3_>_loc13_)
                  {
                     _loc3_=_loc13_-_loc3_-_loc13_;
                  }
               }
               param2.x=param2.x+_loc3_*Math.cos(this.angle_);
               param2.y=param2.y+_loc3_*Math.sin(this.angle_);
               if(this.dil.rije!=0)
               {
                  _loc14_=this.dil.rije*Math.sin(_loc4_+param1/this.dil.lifetime_*this.dil.mipynoh*2*Math.PI);
                  param2.x=param2.x+_loc14_*Math.cos(this.angle_+Math.PI/2);
                  param2.y=param2.y+_loc14_*Math.sin(this.angle_+Math.PI/2);
               }
            }
         }
         return;
      }

      private var pegez:Point;

      private var bypovudyp:Vector3D;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc5_:Vector.<uint> = null;
         var _loc7_:Player = null;
         var _loc8_:* = false;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:* = 0;
         var _loc12_:* = false;
         var _loc3_:int = param1-this.startTime_;
         if(_loc3_>this.dil.lifetime_)
         {
            return false;
         }
         var _loc4_:Point = this.pegez;
         this.jefuvocy(_loc3_,_loc4_);
         if(!this.moveTo(_loc4_.x,_loc4_.y)||garatecif.tileType_==255)
         {
            if(this.jelukiqa)
            {
               map_.gs_.gsc_.squareHit(param1,this.bulletId_,this.ownerId_);
            }
            else
            {
               if(garatecif.obj_!=null)
               {
                  _loc5_=Befiset.lyfudelud(this.texture_);
                  map_.addObj(new HitEffect(_loc5_,100,3,this.angle_,this.dil.speed_),_loc4_.x,_loc4_.y);
               }
            }
            return false;
         }
         if(!(garatecif.obj_==null)&&(!garatecif.obj_.props_.isEnemy_||!this.vyvis)&&((garatecif.obj_.props_.enemyOccupySquare_)||!this.dil.ziqi&&(garatecif.obj_.props_.occupySquare_)))
         {
            if(this.jelukiqa)
            {
               map_.gs_.gsc_.otherHit(param1,this.bulletId_,this.ownerId_,garatecif.obj_.objectId_);
            }
            else
            {
               _loc5_=Befiset.lyfudelud(this.texture_);
               map_.addObj(new HitEffect(_loc5_,100,3,this.angle_,this.dil.speed_),_loc4_.x,_loc4_.y);
            }
            return false;
         }
         var _loc6_:GameObject = this.jydafoji(_loc4_.x,_loc4_.y);
         if(_loc6_!=null)
         {
            _loc7_=map_.player_;
            _loc8_=!(_loc7_==null);
            _loc9_=_loc6_.props_.isEnemy_;
            _loc10_=(_loc8_)&&!_loc7_.isPaused()&&((this.jelukiqa)||(_loc9_)&&this.ownerId_==_loc7_.objectId_);
            if(_loc10_)
            {
               _loc11_=GameObject.nihek(this.damage_,_loc6_.giwiw,this.dil.moqu,_loc6_.condition_);
               _loc12_=false;
               if(_loc6_.ryqi<=_loc11_)
               {
                  _loc12_=true;
                  if(_loc6_.props_.isEnemy_)
                  {
                     doneAction(map_.gs_,Tutorial.zok);
                  }
               }
               if(_loc6_==_loc7_)
               {
                  map_.gs_.gsc_.playerHit(this.bulletId_,this.ownerId_);
                  _loc6_.damage(this.containerType_,_loc11_,this.dil.effects_,false,this);
               }
               else
               {
                  if(_loc6_.props_.isEnemy_)
                  {
                     map_.gs_.gsc_.enemyHit(param1,this.bulletId_,_loc6_.objectId_,_loc12_);
                     _loc6_.damage(this.containerType_,_loc11_,this.dil.effects_,_loc12_,this);
                  }
                  else
                  {
                     if(!this.dil.fabyfupah)
                     {
                        map_.gs_.gsc_.otherHit(param1,this.bulletId_,this.ownerId_,_loc6_.objectId_);
                     }
                  }
               }
            }
            if(this.dil.fabyfupah)
            {
               this.janudagy[_loc6_]=true;
            }
            else
            {
               return false;
            }
         }
         return true;
      }

      public function jydafoji(param1:Number, param2:Number) : GameObject {
         var _loc12_:* = false;
         var _loc13_:* = true;
         var _loc5_:GameObject = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:GameObject = null;
         for each (_loc5_ in map_.goDict_)
         {
            if(_loc5_.voq())
            {
            }
            else
            {
               if(_loc5_.cyhyfu())
               {
               }
               else
               {
                  if(!((this.vyvis)&&(_loc5_.props_.isEnemy_)||(this.jelukiqa)&&(_loc5_.props_.kohyfes)))
                  {
                  }
                  else
                  {
                     if((_loc5_.hojucope)||(_loc5_.isPaused()))
                     {
                     }
                     else
                     {
                        _loc6_=_loc5_.x_>param1?_loc5_.x_-param1:param1-_loc5_.x_;
                        _loc7_=_loc5_.y_>param2?_loc5_.y_-param2:param2-_loc5_.y_;
                        if(_loc6_>_loc5_.radius_||_loc7_>_loc5_.radius_)
                        {
                        }
                        else
                        {
                           if((this.dil.fabyfupah)&&!(this.janudagy[_loc5_]==null))
                           {
                           }
                           else
                           {
                              if(_loc5_==map_.player_)
                              {
                                 return _loc5_;
                              }
                              _loc8_=Math.sqrt(_loc6_*_loc6_+_loc7_*_loc7_);
                              _loc9_=_loc6_*_loc6_+_loc7_*_loc7_;
                              if(_loc9_<_loc3_)
                              {
                                 _loc3_=_loc9_;
                                 _loc4_=_loc5_;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         return _loc4_;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(!UserConfig.pifaruzyr)
         {
            return;
         }
         var _loc4_:BitmapData = this.texture_;
         if(UserConfig.gami!=0)
         {
            switch(UserConfig.gami)
            {
               case 1:
                  _loc6_=16777100;
                  _loc7_=16777215;
                  break;
               case 2:
                  _loc6_=16777100;
                  _loc7_=16777100;
                  break;
               case 3:
                  _loc6_=16711680;
                  _loc7_=16711680;
                  break;
               case 4:
                  _loc6_=255;
                  _loc7_=255;
                  break;
               case 5:
                  _loc6_=16777215;
                  _loc7_=16777215;
                  break;
               case 6:
                  _loc6_=0;
                  _loc7_=0;
                  break;
            }
            _loc4_=TextureRedrawer.redraw(_loc4_,120,true,_loc6_,_loc7_);
         }
         var _loc5_:Number = this.props_.rotation_==0?0:param3/this.props_.rotation_;
         this.bypovudyp.x=x_;
         this.bypovudyp.y=y_;
         this.bypovudyp.z=z_;
         this.qiputis.draw(param1,this.bypovudyp,this.angle_-param2.angleRad_+this.props_.qus+_loc5_,param2.wToS_,param2,_loc4_);
         if(this.dil.nip)
         {
            map_.addObj(new Lupu(100,16711935,600,0.5,Hatuf.melemy(3),Hatuf.melemy(3)),x_,y_);
            map_.addObj(new Lupu(100,16711935,600,0.5,Hatuf.melemy(3),Hatuf.melemy(3)),x_,y_);
            map_.addObj(new Lupu(100,16711935,600,0.5,Hatuf.melemy(3),Hatuf.melemy(3)),x_,y_);
         }
         return;
      }

      protected var ged:GraphicsGradientFill;

      protected var lagefojul:GraphicsPath;

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(!UserConfig.pifaruzyr)
         {
            return;
         }
         var _loc4_:Number = this.props_.kehypu/400;
         var _loc5_:Number = 30*_loc4_;
         var _loc6_:Number = 15*_loc4_;
         this.ged.matrix.createGradientBox(_loc5_*2,_loc6_*2,0,kiwujacam[0]-_loc5_,kiwujacam[1]-_loc6_);
         param1.push(this.ged);
         this.lagefojul.data.length=0;
         Vector.<Number>(this.lagefojul.data).push(kiwujacam[0]-_loc5_,kiwujacam[1]-_loc6_,kiwujacam[0]+_loc5_,kiwujacam[1]-_loc6_,kiwujacam[0]+_loc5_,kiwujacam[1]+_loc6_,kiwujacam[0]-_loc5_,kiwujacam[1]+_loc6_);
         param1.push(this.lagefojul);
         param1.push(Tizulo.END_FILL);
         return;
      }
   }

}