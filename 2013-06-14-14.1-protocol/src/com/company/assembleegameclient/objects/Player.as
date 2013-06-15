package com.company.assembleegameclient.objects
{
   import com.company.util.ConversionUtil;
   import __AS3__.vec.Vector;
   import flash.geom.Point;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.util.Jiqefatok;
   import pufupav.Vyqukop;
   import dicyl.Mukyhokot;
   import kabam.rotmg.assets.services.Bytedif;
   import flash.utils.getTimer;
   import komi.Vibemod;
   import pumoc.Juc;
   import aaa.RotmgParameters.RotmgParameters;
   import sudiba.Fozinomu;
   import jediwip.Kybidu;
   import dorepoji.Kadido;
   import pufupav.LevelUpEffect;
   import com.company.util.IntPoint;
   import com.company.util.PointUtil;
   import com.company.assembleegameclient.map.Square;
   import flash.display.BitmapData;
   import jediwip.Vofezuzy;
   import jediwip.Tunyhazo;
   import sijizoh.Duq;
   import hivysif.Pyzykyj;
   import com.company.assembleegameclient.util.Cinihel;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.util.Kebinuhi;
   import flash.utils.Dictionary;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Zurawi;
   import pilage.Warel;
   import pilage.Vysu;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.util.Trig;
   import com.company.assembleegameclient.util.Tocaniw;
   import com.company.assembleegameclient.util.ConditionEffect;
   import pilage.Patale;
   import micac.Josuba;
   import wahyqise.Tysyc;
   import dyca.Mes;


   public class Player extends Character
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Player(param1:XML) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.zosafu=new IntPoint();
         var _loc2_:Mes = Duq.pamazo();
         this.daju=_loc2_.getInstance(Mukyhokot);
         this.factory=_loc2_.getInstance(Bytedif);
         super(param1);
         this.keweni=int(param1.Attack.@max);
         this.cuqi=int(param1.Defense.@max);
         this.wanukil=int(param1.Speed.@max);
         this.vecacav=int(param1.Dexterity.@max);
         this.guju=int(param1.HpRegen.@max);
         this.velutesim=int(param1.MpRegen.@max);
         this.suvof=int(param1.MaxHitPoints.@max);
         this.dopypi=int(param1.MaxMagicPoints.@max);
         firevowad=new Dictionary();
         return;
      }

      public static const nawevi:int = 10000;

      private static const dicijibe:Number = 0.4;

      public static function dany(param1:String, param2:XML) : Player {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:int = int(param2.ObjectType);
         var _loc4_:XML = ObjectLibrary.ziq[_loc3_];
         var _loc5_:Player = new Player(_loc4_);
         _loc5_.name_=param1;
         _loc5_.kanifivi=int(param2.Level);
         _loc5_.exp_=int(param2.Exp);
         _loc5_.zosig=ConversionUtil.zyhelokub(param2.Equipment);
         _loc5_.kukigim=int(param2.MaxHitPoints);
         _loc5_.vypo=int(param2.HitPoints);
         _loc5_.nivuj=int(param2.MaxMagicPoints);
         _loc5_.nydyry=int(param2.MagicPoints);
         _loc5_.ryhefidu=int(param2.Attack);
         _loc5_.senajawec=int(param2.Defense);
         _loc5_.speed_=int(param2.Speed);
         _loc5_.zaqudufa=int(param2.Dexterity);
         _loc5_.bybi=int(param2.HpRegen);
         _loc5_.zes=int(param2.MpRegen);
         _loc5_.tex1Id_=int(param2.Tex1);
         _loc5_.tex2Id_=int(param2.Tex2);
         return _loc5_;
      }

      private static const wewapiwuc:Vector.<Point> = new Vector.<Point>(4);

      private static var jaqajyvi:Point = new Point();

      private static const mozuvuvo:Matrix = new Matrix(1,0,0,1,2,2);

      private static const zenidaq:Matrix = new Matrix(1,0,0,1,20,1);

      private static const qibes:Number = 0.004;

      private static const veleqaru:Number = 0.0096;

      private static const rejid:Number = 0.0015;

      private static const leqebo:Number = 0.008;

      private static const zeqyri:Number = 0.5;

      private static const korarinuq:Number = 2;

      public var toz:int;

      public var cagibyg:int;

      public var skin:Jiqefatok;

      public var isShooting:Boolean;

      public var accountId_:int = -1;

      public var credits_:int = 0;

      public var numStars_:int = 0;

      public var qyp:int = 0;

      public var dihap:Boolean = false;

      public var hymyhica:int = 0;

      public var fytedat:int = -1;

      public var focanijet:int = -1;

      public var guildName_:String = null;

      public var guildRank_:int = -1;

      public var betyzyq:Boolean = false;

      public var breath_:int = -1;

      public var nivuj:int = 200;

      public var nydyry:Number = 0;

      public var jov:int = 1000;

      public var exp_:int = 0;

      public var ryhefidu:int = 0;

      public var speed_:int = 0;

      public var zaqudufa:int = 0;

      public var bybi:int = 0;

      public var zes:int = 0;

      public var jomafu:int = 0;

      public var kuvupaco:int = 0;

      public var qop:int = 0;

      public var cut:int = 0;

      public var seqa:int = 0;

      public var mini:int = 0;

      public var vasery:int = 0;

      public var hedi:int = 0;

      public var fazob:int = 0;

      public var ryloqykad:int = 0;

      public var fodij:int = 0;

      public var keweni:int = 0;

      public var cuqi:int = 0;

      public var wanukil:int = 0;

      public var vecacav:int = 0;

      public var guju:int = 0;

      public var velutesim:int = 0;

      public var suvof:int = 0;

      public var dopypi:int = 0;

      public var mugure:Boolean = false;

      public var starred_:Boolean = false;

      public var hehah:Boolean = false;

      public var distSqFromThisPlayer_:Number = 0;

      protected var naz:Number = 0;

      protected var pewo:Point = null;

      protected var wonyzob:Number = 1;

      public var wuticiw:int = 0;

      public var keracy:int = 0;

      public var jovi:int = 0;

      public var hukul:int = 0;

      public var hugy:int = 0;

      protected var noduvec:Vyqukop = null;

      protected var zuqu:Merchant = null;

      public var zenaf:Boolean = true;

      private var daju:Mukyhokot;

      private var factory:Bytedif;

      public function kezucez(param1:Number, param2:Number, param3:Number) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = NaN;
         if(this.pewo==null)
         {
            this.pewo=new Point();
         }
         this.naz=param1;
         this.pewo.x=param2;
         this.pewo.y=param3;
         if(zawyjen())
         {
            _loc4_=this.pewo.x;
            this.pewo.x=-this.pewo.y;
            this.pewo.y=-_loc4_;
            this.naz=-this.naz;
         }
         return;
      }

      public function mabifavypu(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.credits_=param1;
         return;
      }

      public function hisaludet(param1:String) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc3_:GameObject = null;
         var _loc4_:Player = null;
         var _loc5_:* = false;
         this.guildName_=param1;
         var _loc2_:Player = map_.player_;
         if(_loc2_==this)
         {
            for each (_loc3_ in map_.goDict_)
            {
               _loc4_=_loc3_ as Player;
               if(!(_loc4_==null)&&!(_loc4_==this))
               {
                  _loc4_.hisaludet(_loc4_.guildName_);
               }
            }
         }
         else
         {
            _loc5_=!(_loc2_==null)&&!(_loc2_.guildName_==null)&&!(_loc2_.guildName_=="")&&_loc2_.guildName_==this.guildName_;
            if(_loc5_!=this.betyzyq)
            {
               this.betyzyq=_loc5_;
               mazivyvab=null;
            }
         }
         return;
      }

      public function nopyv(param1:Player) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !((param1.isPaused())||(param1.qetyz()));
      }

      public function dywawo() : int {
         var _loc1_:int = getTimer();
         return Math.max(0,this.jovi-_loc1_);
      }

      public function dozizan(param1:Player) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(isPaused())
         {
            this.daju.dispatch(this.temak(Vibemod.velijoq));
            return false;
         }
         var _loc2_:int = this.dywawo();
         if(_loc2_>0)
         {
            this.daju.dispatch(this.temak(Vibemod.jiwo,{seconds:int(_loc2_/1000+1)}));
            return false;
         }
         if(!this.nopyv(param1))
         {
            if(param1.qetyz())
            {
               this.daju.dispatch(this.temak(Vibemod.kaqi,{player:param1.name_}));
            }
            else
            {
               this.daju.dispatch(this.temak(Vibemod.fiqoboh,{player:param1.name_}));
            }
            return false;
         }
         map_.gs_.gsc_.teleport(param1.objectId_);
         this.jovi=getTimer()+nawevi;
         return true;
      }

      private function temak(param1:String, param2:Object=null) : Juc {
         return Juc.make(RotmgParameters.kokapo,param1,-1,-1,"",false,param2);
      }

      public function zedo(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.quvyty();
         var _loc2_:Fozinomu = new Fozinomu(this,65280,2000);
         _loc2_.setStringBuilder(new Kybidu().setParams(param1));
         map_.mapOverlay_.addStatusText(_loc2_);
         return;
      }

      public function tyryrudan(param1:Boolean) : void {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         [OFS6]Kadido[/OFS].[OFS12]play[/OFS][OFS12]([/OFS][OFS9]"level_up"[/OFS][OFS12])[/OFS];
         if([OFS16]param1[/OFS])
         {
            this.[OFS27]zedo[/OFS][OFS27]([/OFS][OFS22]Vibemod[/OFS].[OFS24]povyd[/OFS][OFS27])[/OFS];
         }
         else
         {
            this.[OFS41]zedo[/OFS][OFS41]([/OFS][OFS36]Vibemod[/OFS].[OFS38]dat[/OFS][OFS41])[/OFS];
         }
         [OFS45]return[/OFS];
      }

      public function quvyty() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         map_.addObj(new LevelUpEffect(this,4.27825536E9,20),x_,y_);
         return;
      }

      public function tyfutis(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(kanifivi==20)
         {
            return;
         }
         var _loc2_:Fozinomu = new Fozinomu(this,65280,1000);
         _loc2_.setStringBuilder(new Kybidu().setParams(Vibemod.howy,{exp:param1}));
         map_.mapOverlay_.addStatusText(_loc2_);
         return;
      }

      private var zosafu:IntPoint;

      private function muzutomyv() : Merchant {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Point = null;
         var _loc4_:Merchant = null;
         var _loc1_:int = x_-int(x_)>0.5?1:-1;
         var _loc2_:int = y_-int(y_)>0.5?1:-1;
         for each (_loc3_ in wewapiwuc)
         {
            this.zosafu.x_=x_+_loc1_*_loc3_.x;
            this.zosafu.y_=y_+_loc2_*_loc3_.y;
            _loc4_=map_.merchLookup_[this.zosafu];
            if(_loc4_!=null)
            {
               return PointUtil.zus(_loc4_.x_,_loc4_.y_,x_,y_)<1?_loc4_:null;
            }
         }
         return null;
      }

      public function gal(param1:Number, param2:Number) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.pamytuwa(param1,param2,jaqajyvi);
         return this.moveTo(jaqajyvi.x,jaqajyvi.y);
      }

      override public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Boolean = super.moveTo(param1,param2);
         if(map_.gs_.evalIsNotInCombatMapArea())
         {
            this.zuqu=this.muzutomyv();
         }
         return _loc3_;
      }

      public function pamytuwa(param1:Number, param2:Number, param3:Point) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         if(vuja())
         {
            param3.x=x_;
            param3.y=y_;
            return;
         }
         var _loc4_:Number = param1-x_;
         var _loc5_:Number = param2-y_;
         if(_loc4_<dicijibe&&_loc4_>-dicijibe&&_loc5_<dicijibe&&_loc5_>-dicijibe)
         {
            this.dif(param1,param2,param3);
            return;
         }
         var _loc6_:Number = dicijibe/Math.max(Math.abs(_loc4_),Math.abs(_loc5_));
         var _loc7_:Number = 0.0;
         param3.x=x_;
         param3.y=y_;
         var _loc8_:* = false;
         while(true)
         {
            if(_loc7_+_loc6_>=1)
            {
               _loc6_=1-_loc7_;
               _loc8_=true;
            }
            this.dif(param3.x+_loc4_*_loc6_,param3.y+_loc5_*_loc6_,param3);
            _loc7_=_loc7_+_loc6_;
         }
      }

      public function dif(param1:Number, param2:Number, param3:Point) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc4_:Boolean = x_%0.5==0&&!(param1==x_)||!(int(x_/0.5)==int(param1/0.5));
         var _loc5_:Boolean = y_%0.5==0&&!(param2==y_)||!(int(y_/0.5)==int(param2/0.5));
         if(!_loc4_&&!_loc5_||(this.nenyja(param1,param2)))
         {
            param3.x=param1;
            param3.y=param2;
            return;
         }
         if(_loc4_)
         {
            _loc6_=param1>x_?int(param1*2)/2:int(x_*2)/2;
            if(int(_loc6_)>int(x_))
            {
               _loc6_=_loc6_-0.01;
            }
         }
         if(_loc5_)
         {
            _loc7_=param2>y_?int(param2*2)/2:int(y_*2)/2;
            if(int(_loc7_)>int(y_))
            {
               _loc7_=_loc7_-0.01;
            }
         }
         if(!_loc4_)
         {
            param3.x=param1;
            param3.y=_loc7_;
            return;
         }
         if(!_loc5_)
         {
            param3.x=_loc6_;
            param3.y=param2;
            return;
         }
         var _loc8_:Number = param1>x_?param1-_loc6_:_loc6_-param1;
         var _loc9_:Number = param2>y_?param2-_loc7_:_loc7_-param2;
         if(_loc8_>_loc9_)
         {
            if(this.nenyja(param1,_loc7_))
            {
               param3.x=param1;
               param3.y=_loc7_;
               return;
            }
            if(this.nenyja(_loc6_,param2))
            {
               param3.x=_loc6_;
               param3.y=param2;
               return;
            }
         }
         else
         {
            if(this.nenyja(_loc6_,param2))
            {
               param3.x=_loc6_;
               param3.y=param2;
               return;
            }
            if(this.nenyja(param1,_loc7_))
            {
               param3.x=param1;
               param3.y=_loc7_;
               return;
            }
         }
         param3.x=_loc6_;
         param3.y=_loc7_;
         return;
      }

      public function nenyja(param1:Number, param2:Number) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(!(mizuky==_loc3_)&&(_loc3_==null||!_loc3_.digulaky()))
         {
            return false;
         }
         var _loc4_:Number = param1-int(param1);
         var _loc5_:Number = param2-int(param2);
         if(_loc4_<0.5)
         {
            if(this.mogal(param1-1,param2))
            {
               return false;
            }
            if(_loc5_<0.5)
            {
               if((this.mogal(param1,param2-1))||(this.mogal(param1-1,param2-1)))
               {
                  return false;
               }
            }
            else
            {
               if(_loc5_>0.5)
               {
                  if((this.mogal(param1,param2+1))||(this.mogal(param1-1,param2+1)))
                  {
                     return false;
                  }
               }
            }
         }
         else
         {
            if(_loc4_>0.5)
            {
               if(this.mogal(param1+1,param2))
               {
                  return false;
               }
               if(_loc5_<0.5)
               {
                  if((this.mogal(param1,param2-1))||(this.mogal(param1+1,param2-1)))
                  {
                     return false;
                  }
               }
               else
               {
                  if(_loc5_>0.5)
                  {
                     if((this.mogal(param1,param2+1))||(this.mogal(param1+1,param2+1)))
                     {
                        return false;
                     }
                  }
               }
            }
            else
            {
               if(_loc5_<0.5)
               {
                  if(this.mogal(param1,param2-1))
                  {
                     return false;
                  }
               }
               else
               {
                  if(_loc5_>0.5)
                  {
                     if(this.mogal(param1,param2+1))
                     {
                        return false;
                     }
                  }
               }
            }
         }
         return true;
      }

      public function mogal(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Square = map_.lookupSquare(param1,param2);
         return _loc3_==null||_loc3_.tileType_==255||!(_loc3_.obj_==null)&&(_loc3_.obj_.props_.faser);
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         if((this.hugy)&&!isPaused())
         {
            this.hugy=this.hugy-param2;
            if(this.hugy<0)
            {
               this.hugy=0;
            }
         }
         if((this.hukul)&&!isPaused())
         {
            this.hukul=this.hukul-param2;
            if(this.hukul<0)
            {
               this.hukul=0;
            }
         }
         if((this.toz)&&!isPaused())
         {
            this.toz=this.toz-param2;
            if(this.toz<0)
            {
               this.toz=0;
            }
         }
         if((depywipi())&&!isPaused())
         {
            if(this.noduvec==null)
            {
               this.noduvec=new Vyqukop(this);
               map_.addObj(this.noduvec,x_,y_);
            }
         }
         else
         {
            if(this.noduvec!=null)
            {
               map_.removeObj(this.noduvec.objectId_);
               this.noduvec=null;
            }
         }
         if(map_.player_==this&&(isPaused()))
         {
            return true;
         }
         if(this.pewo!=null)
         {
            _loc3_=RotmgParameters.data_.cameraAngle;
            if(this.naz!=0.0)
            {
               _loc3_=_loc3_+param2*RotmgParameters.ricaze*this.naz;
               RotmgParameters.data_.cameraAngle=_loc3_;
            }
            if(!(this.pewo.x==0.0)||!(this.pewo.y==0.0))
            {
               _loc4_=this.runozyci();
               _loc5_=Math.atan2(this.pewo.y,this.pewo.x);
               moveVec_.x=_loc4_*Math.cos(_loc3_+_loc5_);
               moveVec_.y=_loc4_*Math.sin(_loc3_+_loc5_);
            }
            else
            {
               moveVec_.x=0;
               moveVec_.y=0;
            }
            if(!(mizuky==null)&&(mizuky.props_.push_))
            {
               moveVec_.x=moveVec_.x-mizuky.props_.animate_.dx_/1000;
               moveVec_.y=moveVec_.y-mizuky.props_.animate_.dy_/1000;
            }
            this.gal(x_+param2*moveVec_.x,y_+param2*moveVec_.y);
         }
         else
         {
            if(!super.update(param1,param2))
            {
               return false;
            }
         }
         if(map_.player_==this&&mizuky.props_.maxDamage_>0&&mizuky.lastDamage_+500<param1&&!zonocor()&&(mizuky.obj_==null||!mizuky.obj_.props_.protectFromGroundDamage_))
         {
            _loc6_=map_.gs_.gsc_.getNextDamage(mizuky.props_.minDamage_,mizuky.props_.maxDamage_);
            damage(-1,_loc6_,null,vypo<=_loc6_,null);
            map_.gs_.gsc_.groundDamage(param1,x_,y_);
            mizuky.lastDamage_=param1;
         }
         return true;
      }

      public function pid() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(map_==null)
         {
            return;
         }
         var _loc1_:Square = map_.getSquare(x_,y_);
         if(_loc1_.props_.pycaciw)
         {
            siqod=Math.min(siqod+1,RotmgParameters.lezedumy);
            this.wonyzob=0.1+(1-siqod/RotmgParameters.lezedumy)*(_loc1_.props_.speed_-0.1);
         }
         else
         {
            siqod=0;
            this.wonyzob=_loc1_.props_.speed_;
         }
         return;
      }

      override protected function makeNameBitmapData() : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Tunyhazo = new Vofezuzy(name_);
         var _loc2_:Pyzykyj = Duq.pamazo().getInstance(Pyzykyj);
         var _loc3_:BitmapData = _loc2_.make(_loc1_,16,this.katu(),true,zenidaq,true);
         _loc3_.draw(Cinihel.lifyqejo(this.numStars_),mozuvuvo);
         return _loc3_;
      }

      private function katu() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.betyzyq)
         {
            return RotmgParameters.dumejik;
         }
         if(this.dihap)
         {
            return RotmgParameters.vimytehy;
         }
         return 16777215;
      }

      private var woditereh:GraphicsSolidFill = null;

      private var zamorygag:GraphicsPath = null;

      private var neqyse:GraphicsSolidFill = null;

      private var luwomys:GraphicsPath = null;

      protected function vygihewe(param1:Vector.<IGraphicsData>, param2:int) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(this.luwomys==null)
         {
            this.woditereh=new GraphicsSolidFill();
            this.zamorygag=new GraphicsPath(Dyrejocu.capuz,new Vector.<Number>());
            this.neqyse=new GraphicsSolidFill(2542335);
            this.luwomys=new GraphicsPath(Dyrejocu.capuz,new Vector.<Number>());
         }
         if(this.breath_<=RotmgParameters.vimebyh)
         {
            _loc6_=(RotmgParameters.vimebyh-this.breath_)/RotmgParameters.vimebyh;
            this.woditereh.color=MoreColorUtil.modib(5526612,16711680,Math.abs(Math.sin(param2/300))*_loc6_);
         }
         else
         {
            this.woditereh.color=5526612;
         }
         var _loc3_:* = 20;
         var _loc4_:* = 4;
         var _loc5_:* = 6;
         this.zamorygag.data.length=0;
         this.zamorygag.data.push(witog[0]-_loc3_,witog[1]+_loc4_,witog[0]+_loc3_,witog[1]+_loc4_,witog[0]+_loc3_,witog[1]+_loc4_+_loc5_,witog[0]-_loc3_,witog[1]+_loc4_+_loc5_);
         param1.push(this.woditereh);
         param1.push(this.zamorygag);
         param1.push(Dyrejocu.END_FILL);
         if(this.breath_>0)
         {
            _loc7_=this.breath_/100*2*_loc3_;
            this.luwomys.data.length=0;
            this.luwomys.data.push(witog[0]-_loc3_,witog[1]+_loc4_,witog[0]-_loc3_+_loc7_,witog[1]+_loc4_,witog[0]-_loc3_+_loc7_,witog[1]+_loc4_+_loc5_,witog[0]-_loc3_,witog[1]+_loc4_+_loc5_);
            param1.push(this.neqyse);
            param1.push(this.luwomys);
            param1.push(Dyrejocu.END_FILL);
         }
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super.draw(param1,param2,param3);
         if(this!=map_.player_)
         {
            if(!RotmgParameters.womo)
            {
               tevacuzil(param1,param2);
            }
         }
         else
         {
            if(this.breath_>=0)
            {
               this.vygihewe(param1,param3);
            }
         }
         return;
      }

      private function runozyci() : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(fyj())
         {
            return qibes*this.wonyzob;
         }
         var _loc1_:Number = qibes+this.speed_/75*(veleqaru-qibes);
         if((nowa())||(dori()))
         {
            _loc1_=_loc1_*1.5;
         }
         _loc1_=_loc1_*this.wonyzob;
         return _loc1_;
      }

      public function qezyqe() : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(myp())
         {
            return rejid;
         }
         var _loc1_:Number = rejid+this.zaqudufa/75*(leqebo-rejid);
         if(ricideg())
         {
            _loc1_=_loc1_*1.5;
         }
         return _loc1_;
      }

      private function fohoq() : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(hicypucuf())
         {
            return zeqyri;
         }
         var _loc1_:Number = zeqyri+this.ryhefidu/75*(korarinuq-zeqyri);
         if(dylybun())
         {
            _loc1_=_loc1_*1.5;
         }
         return _loc1_;
      }

      private function hyfowet() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Kebinuhi = this.skin.imageFromAngle(0,Jiqefatok.radev,0);
         bisyfewyt=this.skin;
         texture_=_loc1_.image_;
         mask_=_loc1_.mask_;
         this.zenaf=true;
         return;
      }

      private function fezynod() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Vector.<XML> = ObjectLibrary.vysutozir;
         var _loc2_:uint = Math.floor(Math.random()*_loc1_.length);
         var _loc3_:int = _loc1_[_loc2_].@type;
         var _loc4_:Sep = ObjectLibrary.fyri[_loc3_];
         texture_=_loc4_.texture_;
         mask_=_loc4_.mask_;
         bisyfewyt=_loc4_.bisyfewyt;
         this.zenaf=false;
         return;
      }

      override protected function getTexture(param1:Qawosiwi, param2:int) : BitmapData {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc5_:Kebinuhi = null;
         var _loc10_:* = 0;
         var _loc11_:Dictionary = null;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:ColorTransform = null;
         var _loc3_:Number = 0;
         var _loc4_:int = Jiqefatok.radev;
         if((this.isShooting)||param2<fofes+this.wuticiw)
         {
            susov=poviz;
            _loc3_=(param2-fofes)%this.wuticiw/this.wuticiw;
            _loc4_=Jiqefatok.fomosypy;
         }
         else
         {
            if(!(moveVec_.x==0)||!(moveVec_.y==0))
            {
               _loc10_=3.5/this.runozyci();
               if(!(moveVec_.y==0)||!(moveVec_.x==0))
               {
                  susov=Math.atan2(moveVec_.y,moveVec_.x);
               }
               _loc3_=param2%_loc10_/_loc10_;
               _loc4_=Jiqefatok.dywala;
            }
         }
         if(this.besor())
         {
         }
         else
         {
            if(!this.zenaf)
            {
               this.hyfowet();
            }
         }
         if(param1.syce)
         {
            _loc5_=new Kebinuhi(fek(),null);
         }
         else
         {
            _loc5_=bisyfewyt.imageFromFacing(susov,param1,_loc4_,_loc3_);
         }
         var _loc6_:int = tex1Id_;
         var _loc7_:int = tex2Id_;
         var _loc8_:BitmapData = null;
         if(this.zuqu)
         {
            _loc11_=firevowad[this.zuqu];
            if(_loc11_==null)
            {
               firevowad[this.zuqu]=new Dictionary();
            }
            else
            {
               _loc8_=_loc11_[_loc5_];
            }
            _loc6_=this.zuqu.getTex1Id(tex1Id_);
            _loc7_=this.zuqu.getTex2Id(tex2Id_);
         }
         else
         {
            _loc8_=firevowad[_loc5_];
         }
         if(_loc8_==null)
         {
            _loc8_=TextureRedrawer.resize(_loc5_.image_,_loc5_.mask_,size_,false,_loc6_,_loc7_);
            if(this.zuqu!=null)
            {
               firevowad[this.zuqu][_loc5_]=_loc8_;
            }
            else
            {
               firevowad[_loc5_]=_loc8_;
            }
         }
         if(vypo<kukigim*0.2)
         {
            _loc12_=int(Math.abs(Math.sin(param2/200))*10)/10;
            _loc13_=128;
            _loc14_=new ColorTransform(1,1,1,1,_loc12_*_loc13_,-_loc12_*_loc13_,-_loc12_*_loc13_);
            _loc8_=Zurawi.kymyr(_loc8_,_loc14_);
         }
         var _loc9_:BitmapData = firevowad[_loc8_];
         if(_loc9_==null)
         {
            _loc9_=TextureRedrawer.outlineGlow(_loc8_,0,this.focanijet==-1?0:16711680);
            firevowad[_loc8_]=_loc9_;
         }
         if((isPaused())||(rokumyral()))
         {
            _loc9_=Zurawi.hohizukip(_loc9_,mopiby);
         }
         else
         {
            if(qetyz())
            {
               _loc9_=Zurawi.fef(_loc9_,0.4);
            }
         }
         return _loc9_;
      }

      override public function getPortrait() : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Kebinuhi = null;
         var _loc2_:* = 0;
         if(kacezy==null)
         {
            _loc1_=bisyfewyt.imageFromDir(Jiqefatok.RIGHT,Jiqefatok.radev,0);
            _loc2_=4/_loc1_.image_.width*100;
            kacezy=TextureRedrawer.resize(_loc1_.image_,_loc1_.mask_,_loc2_,true,tex1Id_,tex2Id_);
            kacezy=TextureRedrawer.outlineGlow(kacezy,0,0);
         }
         return kacezy;
      }

      public function useAltWeapon(param1:Number, param2:Number, param3:int) : Boolean {
         var _loc14_:* = true;
         var _loc15_:* = false;
         var _loc7_:XML = null;
         var _loc8_:* = 0;
         var _loc9_:* = NaN;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         if(map_==null||(isPaused()))
         {
            return false;
         }
         var _loc4_:int = zosig[1];
         if(_loc4_==-1)
         {
            return false;
         }
         var _loc5_:XML = ObjectLibrary.ziq[_loc4_];
         if(_loc5_==null||!_loc5_.hasOwnProperty("Usable"))
         {
            return false;
         }
         var _loc6_:Point = map_.pSTopW(param1,param2);
         if(_loc6_==null)
         {
            Kadido.play("error");
            return false;
         }
         for each (_loc7_ in _loc5_.Activate)
         {
            if(_loc7_.toString()==Warel.TELEPORT)
            {
               if(!this.nenyja(_loc6_.x,_loc6_.y))
               {
                  Kadido.play("error");
                  return false;
               }
            }
         }
         _loc8_=getTimer();
         if(param3==Vysu.jeselewyw)
         {
            if(_loc8_<this.keracy)
            {
               Kadido.play("error");
               return false;
            }
            _loc10_=int(_loc5_.MpCost);
            if(_loc10_>this.nydyry)
            {
               Kadido.play("no_mana");
               return false;
            }
            _loc11_=500;
            if(_loc5_.hasOwnProperty("Cooldown"))
            {
               _loc11_=Number(_loc5_.Cooldown)*1000;
            }
            this.keracy=_loc8_+_loc11_;
            map_.gs_.gsc_.useItem(_loc8_,objectId_,1,_loc4_,_loc6_.x,_loc6_.y,param3);
            if(_loc5_.Activate==Warel.SHOOT)
            {
               _loc9_=Math.atan2(param2,param1);
               this.mikedocys(_loc8_,_loc4_,_loc5_,RotmgParameters.data_.cameraAngle+_loc9_,false);
            }
         }
         else
         {
            if(_loc5_.hasOwnProperty("MultiPhase"))
            {
               map_.gs_.gsc_.useItem(_loc8_,objectId_,1,_loc4_,_loc6_.x,_loc6_.y,param3);
               _loc10_=int(_loc5_.MpEndCost);
               if(_loc10_<=this.nydyry)
               {
                  _loc9_=Math.atan2(param2,param1);
                  this.mikedocys(_loc8_,_loc4_,_loc5_,RotmgParameters.data_.cameraAngle+_loc9_,false);
               }
            }
         }
         return true;
      }

      public function vot(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.shoot(RotmgParameters.data_.cameraAngle+param1);
         return;
      }

      override public function setAttack(param1:int, param2:Number) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:XML = ObjectLibrary.ziq[param1];
         if(_loc3_==null||!_loc3_.hasOwnProperty("RateOfFire"))
         {
            return;
         }
         var _loc4_:Number = Number(_loc3_.RateOfFire);
         this.wuticiw=1/this.qezyqe()*1/_loc4_;
         super.setAttack(param1,param2);
         return;
      }

      private function shoot(param1:Number) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(map_==null||(fyno())||(isPaused()))
         {
            return;
         }
         var _loc2_:int = zosig[0];
         if(_loc2_==-1)
         {
            this.daju.dispatch(Juc.make(RotmgParameters.kokapo,Vibemod.degubojek));
            return;
         }
         var _loc3_:XML = ObjectLibrary.ziq[_loc2_];
         var _loc4_:int = getTimer();
         var _loc5_:Number = Number(_loc3_.RateOfFire);
         this.wuticiw=1/this.qezyqe()*1/_loc5_;
         if(_loc4_<fofes+this.wuticiw)
         {
            return;
         }
         doneAction(map_.gs_,Tutorial.wil);
         poviz=param1;
         fofes=_loc4_;
         this.mikedocys(fofes,_loc2_,_loc3_,poviz,true);
         return;
      }

      private function mikedocys(param1:int, param2:int, param3:XML, param4:Number, param5:Boolean) : void {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc11_:uint = 0;
         var _loc12_:Projectile = null;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:* = 0;
         var _loc6_:int = param3.hasOwnProperty("NumProjectiles")?int(param3.NumProjectiles):1;
         var _loc7_:Number = (param3.hasOwnProperty("ArcGap")?Number(param3.ArcGap):11.25)*Trig.totugiwu;
         var _loc8_:Number = _loc7_*(_loc6_-1);
         var _loc9_:Number = param4-_loc8_/2;
         this.isShooting=true;
         var _loc10_:* = 0;
         while(_loc10_<_loc6_)
         {
            _loc11_=folohip();
            _loc12_=Tocaniw.dyzovot(Projectile) as Projectile;
            _loc12_.reset(param2,0,objectId_,_loc11_,_loc9_,param1);
            _loc13_=int(_loc12_.ratucobu.minDamage_);
            _loc14_=int(_loc12_.ratucobu.maxDamage_);
            _loc15_=param5?this.fohoq():1;
            _loc16_=map_.gs_.gsc_.getNextDamage(_loc13_,_loc14_)*_loc15_;
            if(param1>map_.gs_.moveRecords_.lastClearTime_+600)
            {
               _loc16_=0;
            }
            _loc12_.wodeg(_loc16_);
            if(!(_loc12_.kyguqugam==null))
            {
               Kadido.play(_loc12_.kyguqugam,0.75,false);
            }
            map_.addObj(_loc12_,x_+Math.cos(param4)*0.3,y_+Math.sin(param4)*0.3);
            map_.gs_.gsc_.playerShoot(param1,_loc12_);
            _loc9_=_loc9_+_loc7_;
            _loc10_++;
         }
         return;
      }

      public function besor() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((condition_&ConditionEffect.hehunabe)==0);
      }

      public function fav() : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = zosig.length;
         var _loc2_:uint = 4;
         while(_loc2_<_loc1_)
         {
            if(zosig[_loc2_]<=0)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }

      public function nextAvailableInventorySlot() : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = this.mugure?zosig.length:zosig.length-Patale.wiwydu;
         var _loc2_:uint = 4;
         while(_loc2_<_loc1_)
         {
            if(zosig[_loc2_]<=0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }

      public function swapInventoryIndex(param1:String) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!this.mugure)
         {
            return -1;
         }
         if(param1==Josuba.hicajy)
         {
            _loc2_=Patale.hunyrigy;
            _loc3_=Patale.hunyrigy+Patale.wiwydu;
         }
         else
         {
            _loc2_=Patale.hunyrigy+Patale.wiwydu;
            _loc3_=zosig.length;
         }
         var _loc4_:uint = _loc2_;
         while(_loc4_<_loc3_)
         {
            if(zosig[_loc4_]<=0)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }

      public function getPotionCount(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(null)
         {
            case Tysyc.sanan:
               return this.ryloqykad;
            case Tysyc.lenem:
               return this.fodij;
            default:
               return 0;
         }
      }

      public function getTex1() : int {
         return tex1Id_;
      }

      public function getTex2() : int {
         return tex2Id_;
      }
   }

}