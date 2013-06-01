package com.company.assembleegameclient.objects
{
[CLASS882]   import flash.utils.Dictionary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.engine3d.Gyvafo;
   import com.company.util.Trig;
   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.map.Square;
   import com.company.assembleegameclient.util.Deqipe;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.util.Qafa;
   import mejowozy.HitEffect;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import mejowozy.Teqymob;
   import com.company.assembleegameclient.util.Wijawo;
   import flash.display.GraphicsGradientFill;
   import flash.display.GraphicsPath;
   import com.company.util.Nosupygu;
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
         this.muz=new Gyvafo(100);
         this.vusiru=new Point();
         this.subely=new Vector3D();
         this.gunuhok=new GraphicsGradientFill(GradientType.RADIAL,[0,0],[0.5,0],null,new Matrix());
         this.ruka=new GraphicsPath(Nosupygu.quk,new Vector.<Number>());
         super();
         return;
      }

      private static var tugirara:Dictionary = new Dictionary();

      public static function halal(param1:int, param2:uint) : int {
         return tugirara[param2<<24|param1];
      }

      public static function peba(param1:int, param2:uint) : int {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:int = gyhubin();
         tugirara[param2<<24|param1]=_loc3_;
         return _loc3_;
      }

      public static function kafup(param1:int, param2:uint) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         delete tugirara[[param2<<24|param1]];
         return;
      }

      public static function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         tugirara=new Dictionary();
         return;
      }

      public var props_:ObjectProperties;

      public var jedyhuwo:ObjectProperties;

      public var gar:Fimy;

      public var texture_:BitmapData;

      public var bulletId_:uint;

      public var ownerId_:int;

      public var containerType_:int;

      public var bulletType_:uint;

      public var laguh:Boolean;

      public var zivybafeg:Boolean;

      public var damage_:int;

      public var vykonel:String;

      public var pus:Number;

      public var fygof:Number;

      public var startTime_:int;

      public var angle_:Number = 0;

      public var kydad:Dictionary;

      public var muz:Gyvafo;

      public function reset(param1:int, param2:int, param3:int, param4:int, param5:Number, param6:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:* = NaN;
         clear();
         this.containerType_=param1;
         this.bulletType_=param2;
         this.ownerId_=param3;
         this.bulletId_=param4;
         this.angle_=Trig.cydyfysi(param5);
         this.startTime_=param6;
         objectId_=peba(this.ownerId_,this.bulletId_);
         z_=0.5;
         this.jedyhuwo=ObjectLibrary.teqot[this.containerType_];
         this.gar=this.jedyhuwo.cakikypot[param2];
         this.props_=ObjectLibrary.poq(this.gar.objectId_);
         tovemamic=this.props_.vitaqiwos>0;
         var _loc7_:Qeh = ObjectLibrary.kusuj[this.props_.type_];
         this.texture_=_loc7_.getTexture(objectId_);
         this.zivybafeg=this.jedyhuwo.isEnemy_;
         this.laguh=!this.zivybafeg;
         this.vykonel=this.jedyhuwo.rurilupi;
         this.kydad=this.gar.sezen?new Dictionary():null;
         if(this.gar.size_>=0)
         {
            _loc8_=this.gar.size_;
         }
         else
         {
            _loc8_=ObjectLibrary.niqazolita(this.containerType_);
         }
         this.muz.setSize(8*_loc8_/100);
         this.damage_=0;
         return;
      }

      public function qefejelik(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.damage_=param1;
         return;
      }

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Player = null;
         this.pus=param2;
         this.fygof=param3;
         if(!super.addTo(param1,param2,param3))
         {
            return false;
         }
         if(!this.jedyhuwo.flying_&&(togofijo.sink_))
         {
            z_=0.1;
         }
         else
         {
            _loc4_=param1.goDict_[this.ownerId_] as Player;
            if(!(_loc4_==null)&&_loc4_.wytavaf>0)
            {
               z_=0.5-0.4*_loc4_.wytavaf/Parameters.casu;
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
         togofijo=_loc3_;
         return true;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.removeFromMap();
         kafup(this.ownerId_,this.bulletId_);
         this.kydad=null;
         Deqipe.hasa(this);
         return;
      }

      private function lep(param1:int, param2:Point) : void {
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
         param2.x=this.pus;
         param2.y=this.fygof;
         var _loc3_:Number = param1*this.gar.speed_/10000;
         var _loc4_:Number = this.bulletId_%2==0?0:Math.PI;
         if(this.gar.samazy)
         {
            _loc5_=6*Math.PI;
            _loc6_=Math.PI/64;
            _loc7_=this.angle_+_loc6_*Math.sin(_loc4_+_loc5_*param1/1000);
            param2.x=param2.x+_loc3_*Math.cos(_loc7_);
            param2.y=param2.y+_loc3_*Math.sin(_loc7_);
         }
         else
         {
            if(this.gar.jidokapit)
            {
               _loc8_=param1/this.gar.lifetime_*2*Math.PI;
               _loc9_=Math.sin(_loc8_)*(this.bulletId_%2?1:-1);
               _loc10_=Math.sin(2*_loc8_)*(this.bulletId_%4<2?1:-1);
               _loc11_=Math.sin(this.angle_);
               _loc12_=Math.cos(this.angle_);
               param2.x=param2.x+(_loc9_*_loc12_-_loc10_*_loc11_)*this.gar.tugovosuj;
               param2.y=param2.y+(_loc9_*_loc11_+_loc10_*_loc12_)*this.gar.tugovosuj;
            }
            else
            {
               if(this.gar.vybybuma)
               {
                  _loc13_=this.gar.lifetime_*this.gar.speed_/10000/2;
                  if(_loc3_>_loc13_)
                  {
                     _loc3_=_loc13_-_loc3_-_loc13_;
                  }
               }
               param2.x=param2.x+_loc3_*Math.cos(this.angle_);
               param2.y=param2.y+_loc3_*Math.sin(this.angle_);
               if(this.gar.fucuj!=0)
               {
                  _loc14_=this.gar.fucuj*Math.sin(_loc4_+param1/this.gar.lifetime_*this.gar.poku*2*Math.PI);
                  param2.x=param2.x+_loc14_*Math.cos(this.angle_+Math.PI/2);
                  param2.y=param2.y+_loc14_*Math.sin(this.angle_+Math.PI/2);
               }
            }
         }
         return;
      }

      private var vusiru:Point;

      private var subely:Vector3D;

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
         if(_loc3_>this.gar.lifetime_)
         {
            return false;
         }
         var _loc4_:Point = this.vusiru;
         this.lep(_loc3_,_loc4_);
         if(!this.moveTo(_loc4_.x,_loc4_.y)||togofijo.tileType_==255)
         {
            if(this.zivybafeg)
            {
               map_.gs_.gsc_.squareHit(param1,this.bulletId_,this.ownerId_);
            }
            else
            {
               if(togofijo.obj_!=null)
               {
                  _loc5_=Qafa.syguj(this.texture_);
                  map_.addObj(new HitEffect(_loc5_,100,3,this.angle_,this.gar.speed_),_loc4_.x,_loc4_.y);
               }
            }
            return false;
         }
         if(!(togofijo.obj_==null)&&(!togofijo.obj_.props_.isEnemy_||!this.laguh)&&((togofijo.obj_.props_.enemyOccupySquare_)||!this.gar.nyly&&(togofijo.obj_.props_.occupySquare_)))
         {
            if(this.zivybafeg)
            {
               map_.gs_.gsc_.otherHit(param1,this.bulletId_,this.ownerId_,togofijo.obj_.objectId_);
            }
            else
            {
               _loc5_=Qafa.syguj(this.texture_);
               map_.addObj(new HitEffect(_loc5_,100,3,this.angle_,this.gar.speed_),_loc4_.x,_loc4_.y);
            }
            return false;
         }
         var _loc6_:GameObject = this.sujizyhe(_loc4_.x,_loc4_.y);
         if(_loc6_!=null)
         {
            _loc7_=map_.player_;
            _loc8_=!(_loc7_==null);
            _loc9_=_loc6_.props_.isEnemy_;
            _loc10_=(_loc8_)&&!_loc7_.isPaused()&&((this.zivybafeg)||(_loc9_)&&this.ownerId_==_loc7_.objectId_);
            if(_loc10_)
            {
               _loc11_=GameObject.rodudawy(this.damage_,_loc6_.gas,this.gar.qeha,_loc6_.condition_);
               _loc12_=false;
               if(_loc6_.qyhefanyk<=_loc11_)
               {
                  _loc12_=true;
                  if(_loc6_.props_.isEnemy_)
                  {
                     doneAction(map_.gs_,Tutorial.nonituzo);
                  }
               }
               if(_loc6_==_loc7_)
               {
                  map_.gs_.gsc_.playerHit(this.bulletId_,this.ownerId_);
                  _loc6_.damage(this.containerType_,_loc11_,this.gar.effects_,false,this);
               }
               else
               {
                  if(_loc6_.props_.isEnemy_)
                  {
                     map_.gs_.gsc_.enemyHit(param1,this.bulletId_,_loc6_.objectId_,_loc12_);
                     _loc6_.damage(this.containerType_,_loc11_,this.gar.effects_,_loc12_,this);
                  }
                  else
                  {
                     if(!this.gar.sezen)
                     {
                        map_.gs_.gsc_.otherHit(param1,this.bulletId_,this.ownerId_,_loc6_.objectId_);
                     }
                  }
               }
            }
            if(this.gar.sezen)
            {
               this.kydad[_loc6_]=true;
            }
            else
            {
               return false;
            }
         }
         return true;
      }

      public function sujizyhe(param1:Number, param2:Number) : GameObject {
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
            if(_loc5_.dopo())
            {
            }
            else
            {
               if(_loc5_.pasyli())
               {
               }
               else
               {
                  if(!((this.laguh)&&(_loc5_.props_.isEnemy_)||(this.zivybafeg)&&(_loc5_.props_.fad)))
                  {
                  }
                  else
                  {
                     if((_loc5_.cesulo)||(_loc5_.isPaused()))
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
                           if((this.gar.sezen)&&!(this.kydad[_loc5_]==null))
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

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(!Parameters.nynipen)
         {
            return;
         }
         var _loc4_:BitmapData = this.texture_;
         if(Parameters.toqodyfyv!=0)
         {
            switch(Parameters.toqodyfyv)
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
         this.subely.x=x_;
         this.subely.y=y_;
         this.subely.z=z_;
         this.muz.draw(param1,this.subely,this.angle_-param2.angleRad_+this.props_.zojo+_loc5_,param2.wToS_,param2,_loc4_);
         if(this.gar.gidodyvab)
         {
            map_.addObj(new Teqymob(100,16711935,600,0.5,Wijawo.belugo(3),Wijawo.belugo(3)),x_,y_);
            map_.addObj(new Teqymob(100,16711935,600,0.5,Wijawo.belugo(3),Wijawo.belugo(3)),x_,y_);
            map_.addObj(new Teqymob(100,16711935,600,0.5,Wijawo.belugo(3),Wijawo.belugo(3)),x_,y_);
         }
         return;
      }

      protected var gunuhok:GraphicsGradientFill;

      protected var ruka:GraphicsPath;

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(!Parameters.nynipen)
         {
            return;
         }
         var _loc4_:Number = this.props_.vitaqiwos/400;
         var _loc5_:Number = 30*_loc4_;
         var _loc6_:Number = 15*_loc4_;
         this.gunuhok.matrix.createGradientBox(_loc5_*2,_loc6_*2,0,meluhykag[0]-_loc5_,meluhykag[1]-_loc6_);
         param1.push(this.gunuhok);
         this.ruka.data.length=0;
         Vector.<Number>(this.ruka.data).push(meluhykag[0]-_loc5_,meluhykag[1]-_loc6_,meluhykag[0]+_loc5_,meluhykag[1]-_loc6_,meluhykag[0]+_loc5_,meluhykag[1]+_loc6_,meluhykag[0]-_loc5_,meluhykag[1]+_loc6_);
         param1.push(this.ruka);
         param1.push(Nosupygu.END_FILL);
         return;
      }
   }
[/CLASS]
}