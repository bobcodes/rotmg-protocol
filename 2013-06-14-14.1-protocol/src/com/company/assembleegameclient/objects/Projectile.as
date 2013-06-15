package com.company.assembleegameclient.objects
{
   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.engine3d.Vamydyf;
   import com.company.util.Trig;
   import com.company.assembleegameclient.map.Map;
   import aaa.RotmgParameters.RotmgParameters;
   import com.company.assembleegameclient.map.Square;
   import com.company.assembleegameclient.util.Tocaniw;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.Sur;
   import pufupav.HitEffect;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import pufupav.Turyma;
   import com.company.assembleegameclient.util.Kev;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import com.company.util.Dyrejocu;
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
         this.migusota=new Vamydyf(100);
         this.jeb=new Point();
         this.har=new Vector3D();
         this.sip=new GraphicsGradientFill(GradientType.RADIAL,[0,0],[0.5,0],null,new Matrix());
         this.gudisy=new GraphicsPath(Dyrejocu.capuz,new Vector.<Number>());
         super();
         return;
      }

      private static var lado:Dictionary = new Dictionary();

      public static function dycil(param1:int, param2:uint) : int {
         return lado[param2<<24|param1];
      }

      public static function wam(param1:int, param2:uint) : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = hofuvupud();
         lado[param2<<24|param1]=_loc3_;
         return _loc3_;
      }

      public static function bepi(param1:int, param2:uint) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         GlobalNotificationActionte lado[[param2<<24|param1]];
         return;
      }

      public static function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         lado=new Dictionary();
         return;
      }

      public var props_:ObjectProperties;

      public var jalajyc:ObjectProperties;

      public var ratucobu:Zygero;

      public var texture_:BitmapData;

      public var bulletId_:uint;

      public var ownerId_:int;

      public var containerType_:int;

      public var bulletType_:uint;

      public var saqogepe:Boolean;

      public var hoz:Boolean;

      public var damage_:int;

      public var kyguqugam:String;

      public var cejyban:Number;

      public var sugi:Number;

      public var startTime_:int;

      public var angle_:Number = 0;

      public var leduf:Dictionary;

      public var migusota:Vamydyf;

      public function reset(param1:int, param2:int, param3:int, param4:int, param5:Number, param6:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:* = NaN;
         clear();
         this.containerType_=param1;
         this.bulletType_=param2;
         this.ownerId_=param3;
         this.bulletId_=param4;
         this.angle_=Trig.kuqyroqub(param5);
         this.startTime_=param6;
         objectId_=wam(this.ownerId_,this.bulletId_);
         z_=0.5;
         this.jalajyc=ObjectLibrary.zupucuwum[this.containerType_];
         this.ratucobu=this.jalajyc.fifinepa[param2];
         this.props_=ObjectLibrary.tina(this.ratucobu.objectId_);
         budav=this.props_.nyn>0;
         var _loc7_:Sep = ObjectLibrary.fyri[this.props_.type_];
         this.texture_=_loc7_.getTexture(objectId_);
         this.hoz=this.jalajyc.isEnemy_;
         this.saqogepe=!this.hoz;
         this.kyguqugam=this.jalajyc.zopa;
         this.leduf=this.ratucobu.rawysuke?new Dictionary():null;
         if(this.ratucobu.size_>=0)
         {
            _loc8_=this.ratucobu.size_;
         }
         else
         {
            _loc8_=ObjectLibrary.dehiwehab(this.containerType_);
         }
         this.migusota.setSize(8*_loc8_/100);
         this.damage_=0;
         return;
      }

      public function wodeg(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.damage_=param1;
         return;
      }

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Player = null;
         this.cejyban=param2;
         this.sugi=param3;
         if(!super.addTo(param1,param2,param3))
         {
            return false;
         }
         if(!this.jalajyc.flying_&&(mizuky.sink_))
         {
            z_=0.1;
         }
         else
         {
            _loc4_=param1.goDict_[this.ownerId_] as Player;
            if(!(_loc4_==null)&&_loc4_.siqod>0)
            {
               z_=0.5-0.4*_loc4_.siqod/RotmgParameters.lezedumy;
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
         mizuky=_loc3_;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.removeFromMap();
         bepi(this.ownerId_,this.bulletId_);
         this.leduf=null;
         Tocaniw.rilo(this);
         return;
      }

      private function lebalopeg(param1:int, param2:Point) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
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
         param2.x=this.cejyban;
         param2.y=this.sugi;
         var _loc3_:Number = param1*this.ratucobu.speed_/10000;
         var _loc4_:Number = this.bulletId_%2==0?0:Math.PI;
         if(this.ratucobu.saho)
         {
            _loc5_=6*Math.PI;
            _loc6_=Math.PI/64;
            _loc7_=this.angle_+_loc6_*Math.sin(_loc4_+_loc5_*param1/1000);
            param2.x=param2.x+_loc3_*Math.cos(_loc7_);
            param2.y=param2.y+_loc3_*Math.sin(_loc7_);
         }
         else
         {
            if(this.ratucobu.kesonyca)
            {
               _loc8_=param1/this.ratucobu.lifetime_*2*Math.PI;
               _loc9_=Math.sin(_loc8_)*(this.bulletId_%2?1:-1);
               _loc10_=Math.sin(2*_loc8_)*(this.bulletId_%4<2?1:-1);
               _loc11_=Math.sin(this.angle_);
               _loc12_=Math.cos(this.angle_);
               param2.x=param2.x+(_loc9_*_loc12_-_loc10_*_loc11_)*this.ratucobu.jar;
               param2.y=param2.y+(_loc9_*_loc11_+_loc10_*_loc12_)*this.ratucobu.jar;
            }
            else
            {
               if(this.ratucobu.wun)
               {
                  _loc13_=this.ratucobu.lifetime_*this.ratucobu.speed_/10000/2;
                  if(_loc3_>_loc13_)
                  {
                     _loc3_=_loc13_-_loc3_-_loc13_;
                  }
               }
               param2.x=param2.x+_loc3_*Math.cos(this.angle_);
               param2.y=param2.y+_loc3_*Math.sin(this.angle_);
               if(this.ratucobu.lekumyva!=0)
               {
                  _loc14_=this.ratucobu.lekumyva*Math.sin(_loc4_+param1/this.ratucobu.lifetime_*this.ratucobu.subu*2*Math.PI);
                  param2.x=param2.x+_loc14_*Math.cos(this.angle_+Math.PI/2);
                  param2.y=param2.y+_loc14_*Math.sin(this.angle_+Math.PI/2);
               }
            }
         }
         return;
      }

      private var jeb:Point;

      private var har:Vector3D;

      override public function update(param1:int, param2:int) : Boolean {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc5_:Vector.<uint> = null;
         var _loc7_:Player = null;
         var _loc8_:* = false;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:* = 0;
         var _loc12_:* = false;
         var _loc3_:int = param1-this.startTime_;
         if(_loc3_>this.ratucobu.lifetime_)
         {
            return false;
         }
         var _loc4_:Point = this.jeb;
         this.lebalopeg(_loc3_,_loc4_);
         if(!this.moveTo(_loc4_.x,_loc4_.y)||mizuky.tileType_==255)
         {
            if(this.hoz)
            {
               map_.gs_.gsc_.squareHit(param1,this.bulletId_,this.ownerId_);
            }
            else
            {
               if(mizuky.obj_!=null)
               {
                  _loc5_=Sur.sinoh(this.texture_);
                  map_.addObj(new HitEffect(_loc5_,100,3,this.angle_,this.ratucobu.speed_),_loc4_.x,_loc4_.y);
               }
            }
            return false;
         }
         if(!(mizuky.obj_==null)&&(!mizuky.obj_.props_.isEnemy_||!this.saqogepe)&&((mizuky.obj_.props_.enemyOccupySquare_)||!this.ratucobu.siq&&(mizuky.obj_.props_.occupySquare_)))
         {
            if(this.hoz)
            {
               map_.gs_.gsc_.otherHit(param1,this.bulletId_,this.ownerId_,mizuky.obj_.objectId_);
            }
            else
            {
               _loc5_=Sur.sinoh(this.texture_);
               map_.addObj(new HitEffect(_loc5_,100,3,this.angle_,this.ratucobu.speed_),_loc4_.x,_loc4_.y);
            }
            return false;
         }
         var _loc6_:GameObject = this.zehajoro(_loc4_.x,_loc4_.y);
         if(_loc6_!=null)
         {
            _loc7_=map_.player_;
            _loc8_=!(_loc7_==null);
            _loc9_=_loc6_.props_.isEnemy_;
            _loc10_=(_loc8_)&&!_loc7_.isPaused()&&((this.hoz)||(_loc9_)&&this.ownerId_==_loc7_.objectId_);
            if(_loc10_)
            {
               _loc11_=GameObject.ger(this.damage_,_loc6_.senajawec,this.ratucobu.mecejy,_loc6_.condition_);
               _loc12_=false;
               if(_loc6_.vypo<=_loc11_)
               {
                  _loc12_=true;
                  if(_loc6_.props_.isEnemy_)
                  {
                     doneAction(map_.gs_,Tutorial.dogoryb);
                  }
               }
               if(_loc6_==_loc7_)
               {
                  map_.gs_.gsc_.playerHit(this.bulletId_,this.ownerId_);
                  _loc6_.damage(this.containerType_,_loc11_,this.ratucobu.effects_,false,this);
               }
               else
               {
                  if(_loc6_.props_.isEnemy_)
                  {
                     map_.gs_.gsc_.enemyHit(param1,this.bulletId_,_loc6_.objectId_,_loc12_);
                     _loc6_.damage(this.containerType_,_loc11_,this.ratucobu.effects_,_loc12_,this);
                  }
                  else
                  {
                     if(!this.ratucobu.rawysuke)
                     {
                        map_.gs_.gsc_.otherHit(param1,this.bulletId_,this.ownerId_,_loc6_.objectId_);
                     }
                  }
               }
            }
            if(this.ratucobu.rawysuke)
            {
               this.leduf[_loc6_]=true;
            }
            else
            {
               return false;
            }
         }
         return true;
      }

      public function zehajoro(param1:Number, param2:Number) : GameObject {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc5_:GameObject = null;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:GameObject = null;
         for each (_loc5_ in map_.goDict_)
         {
            if(_loc5_.zonocor())
            {
            }
            else
            {
               if(_loc5_.rokumyral())
               {
               }
               else
               {
                  if(!((this.saqogepe)&&(_loc5_.props_.isEnemy_)||(this.hoz)&&(_loc5_.props_.coryjorah)))
                  {
                  }
                  else
                  {
                     if((_loc5_.logi)||(_loc5_.isPaused()))
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
                           if((this.ratucobu.rawysuke)&&!(this.leduf[_loc5_]==null))
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

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(!RotmgParameters.bonyge)
         {
            return;
         }
         var _loc4_:BitmapData = this.texture_;
         if(RotmgParameters.pofalogud!=0)
         {
            switch(RotmgParameters.pofalogud)
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
         this.har.x=x_;
         this.har.y=y_;
         this.har.z=z_;
         this.migusota.draw(param1,this.har,this.angle_-param2.angleRad_+this.props_.nunawonoj+_loc5_,param2.wToS_,param2,_loc4_);
         if(this.ratucobu.wij)
         {
            map_.addObj(new Turyma(100,16711935,600,0.5,Kev.lopiq(3),Kev.lopiq(3)),x_,y_);
            map_.addObj(new Turyma(100,16711935,600,0.5,Kev.lopiq(3),Kev.lopiq(3)),x_,y_);
            map_.addObj(new Turyma(100,16711935,600,0.5,Kev.lopiq(3),Kev.lopiq(3)),x_,y_);
         }
         return;
      }

      protected var sip:GraphicsGradientFill;

      protected var gudisy:GraphicsPath;

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(!RotmgParameters.bonyge)
         {
            return;
         }
         var _loc4_:Number = this.props_.nyn/400;
         var _loc5_:Number = 30*_loc4_;
         var _loc6_:Number = 15*_loc4_;
         this.sip.matrix.createGradientBox(_loc5_*2,_loc6_*2,0,witog[0]-_loc5_,witog[1]-_loc6_);
         param1.push(this.sip);
         this.gudisy.data.length=0;
         Vector.<Number>(this.gudisy.data).push(witog[0]-_loc5_,witog[1]-_loc6_,witog[0]+_loc5_,witog[1]-_loc6_,witog[0]+_loc5_,witog[1]+_loc6_,witog[0]-_loc5_,witog[1]+_loc6_);
         param1.push(this.gudisy);
         param1.push(Dyrejocu.END_FILL);
         return;
      }
   }

}