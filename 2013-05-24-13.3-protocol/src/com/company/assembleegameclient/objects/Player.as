package com.company.assembleegameclient.objects
{
   import com.company.util.ConversionUtil;
   import __AS3__.vec.Vector;
   import flash.geom.Point;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import moryzis.Wil;
   import zubamyki.Sywyvu;
   import kabam.rotmg.assets.services.Cafe;
   import flash.utils.getTimer;
   import aaa.rotmg.i18n.I18nKeys;
   import pepyca.Depagy;
   import aaa.rotmg.config.UserConfig;
   import wyrovu.Cici;
   import nec.Sire;
   import vozireni.Pozunubu;
   import moryzis.LevelUpEffect;
   import com.company.util.IntPoint;
   import com.company.util.PointUtil;
   import com.company.assembleegameclient.map.Square;
   import flash.display.BitmapData;
   import nec.Nara;
   import nec.Zirewe;
   import jag.Giq;
   import movimet.Jetadopuc;
   import com.company.assembleegameclient.util.Wagoq;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.assembleegameclient.util.Biloqu;
   import flash.utils.Dictionary;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Zet;
   import pirus.Tibapyqy;
   import pirus.Rula;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.util.Trig;
   import com.company.assembleegameclient.util.Hidad;
   import com.company.assembleegameclient.util.ConditionEffect;
   import pirus.Lekakyry;
   import fom.Lihivak;
   import cuwyg.Dewydo;
   import kyco.Nun;


   public class Player extends Character
   {

      public function Player(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.raqikojes=new IntPoint();
         var _loc2_:Nun = Giq.kid();
         this.fyve=_loc2_.getInstance(Sywyvu);
         this.factory=_loc2_.getInstance(Cafe);
         super(param1);
         this.bapinu=int(param1.Attack.@max);
         this.lug=int(param1.Defense.@max);
         this.zeqorag=int(param1.Speed.@max);
         this.pewydil=int(param1.Dexterity.@max);
         this.zyfituz=int(param1.HpRegen.@max);
         this.qukok=int(param1.MpRegen.@max);
         this.tucyb=int(param1.MaxHitPoints.@max);
         this.malezu=int(param1.MaxMagicPoints.@max);
         keg=new Dictionary();
         return;
      }

      public static const niha:int = 10000;

      private static const bicu:Number = 0.4;

      public static function sapijuty(param1:String, param2:XML) : Player {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = int(param2.ObjectType);
         var _loc4_:XML = ObjectLibrary.tem[_loc3_];
         var _loc5_:Player = new Player(_loc4_);
         _loc5_.name_=param1;
         _loc5_.komolevy=int(param2.Level);
         _loc5_.exp_=int(param2.Exp);
         _loc5_.jevuqike=ConversionUtil.pasywe(param2.Equipment);
         _loc5_.ruguj=int(param2.MaxHitPoints);
         _loc5_.ryqi=int(param2.HitPoints);
         _loc5_.boliqoka=int(param2.MaxMagicPoints);
         _loc5_.zamonoca=int(param2.MagicPoints);
         _loc5_.vybe=int(param2.Attack);
         _loc5_.giwiw=int(param2.Defense);
         _loc5_.speed_=int(param2.Speed);
         _loc5_.zegikefa=int(param2.Dexterity);
         _loc5_.vykun=int(param2.HpRegen);
         _loc5_.pazawo=int(param2.MpRegen);
         _loc5_.tex1Id_=int(param2.Tex1);
         _loc5_.tex2Id_=int(param2.Tex2);
         return _loc5_;
      }

      private static const don:Vector.<Point> = new Vector.<Point>(4);

      private static var himi:Point = new Point();

      private static const susaleju:Matrix = new Matrix(1,0,0,1,2,2);

      private static const gybo:Matrix = new Matrix(1,0,0,1,20,1);

      private static const wyvuqad:Number = 0.004;

      private static const mibowoke:Number = 0.0096;

      private static const wyzobag:Number = 0.0015;

      private static const lejyqigug:Number = 0.008;

      private static const qes:Number = 0.5;

      private static const gakuquje:Number = 2;

      public var suqo:int;

      public var majicak:int;

      public var skin:Zuwomuguk;

      public var qibe:Boolean;

      public var accountId_:int = -1;

      public var credits_:int = 0;

      public var numStars_:int = 0;

      public var kotobi:int = 0;

      public var wiz:Boolean = false;

      public var wufadeqow:int = 0;

      public var vecetezo:int = -1;

      public var lozinu:int = -1;

      public var guildName_:String = null;

      public var guildRank_:int = -1;

      public var lysezyky:Boolean = false;

      public var breath_:int = -1;

      public var boliqoka:int = 200;

      public var zamonoca:Number = 0;

      public var gigeloqy:int = 1000;

      public var exp_:int = 0;

      public var vybe:int = 0;

      public var speed_:int = 0;

      public var zegikefa:int = 0;

      public var vykun:int = 0;

      public var pazawo:int = 0;

      public var toq:int = 0;

      public var nyderod:int = 0;

      public var rocojoje:int = 0;

      public var pyfufogi:int = 0;

      public var putujyr:int = 0;

      public var riniqy:int = 0;

      public var sofehu:int = 0;

      public var vomedo:int = 0;

      public var gipa:int = 0;

      public var kezyzys:int = 0;

      public var basonuhe:int = 0;

      public var bapinu:int = 0;

      public var lug:int = 0;

      public var zeqorag:int = 0;

      public var pewydil:int = 0;

      public var zyfituz:int = 0;

      public var qukok:int = 0;

      public var tucyb:int = 0;

      public var malezu:int = 0;

      public var jisoh:Boolean = false;

      public var starred_:Boolean = false;

      public var diqyj:Boolean = false;

      public var distSqFromThisPlayer_:Number = 0;

      protected var fasaqila:Number = 0;

      protected var fiv:Point = null;

      protected var pupiqafo:Number = 1;

      public var dili:int = 0;

      public var hocoku:int = 0;

      public var bawonyquki:int = 0;

      public var zazumyfy:int = 0;

      public var howohe:int = 0;

      protected var dyci:Wil = null;

      protected var rojoneric:Merchant = null;

      public var tijusu:Boolean = true;

      private var fyve:Sywyvu;

      private var factory:Cafe;

      public function myvufoly(param1:Number, param2:Number, param3:Number) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = NaN;
         if(this.fiv==null)
         {
            this.fiv=new Point();
         }
         this.fasaqila=param1;
         this.fiv.x=param2;
         this.fiv.y=param3;
         if(canajutik())
         {
            _loc4_=this.fiv.x;
            this.fiv.x=-this.fiv.y;
            this.fiv.y=-_loc4_;
            this.fasaqila=-this.fasaqila;
         }
         return;
      }

      public function delita(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.credits_=param1;
         return;
      }

      public function pefi(param1:String) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
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
                  _loc4_.pefi(_loc4_.guildName_);
               }
            }
         }
         else
         {
            _loc5_=!(_loc2_==null)&&!(_loc2_.guildName_==null)&&!(_loc2_.guildName_=="")&&_loc2_.guildName_==this.guildName_;
            if(_loc5_!=this.lysezyky)
            {
               this.lysezyky=_loc5_;
               vihyg=null;
            }
         }
         return;
      }

      public function milozanim(param1:Player) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !((param1.isPaused())||(param1.qynudu()));
      }

      public function qowuvef() : int {
         var _loc1_:int = getTimer();
         return Math.max(0,this.bawonyquki-_loc1_);
      }

      public function piqu(param1:Player) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(isPaused())
         {
            this.fyve.dispatch(this.lavykenur(I18nKeys.deqarir));
            return false;
         }
         var _loc2_:int = this.qowuvef();
         if(_loc2_>0)
         {
            this.fyve.dispatch(this.lavykenur(I18nKeys.faruhequ,{seconds:int(_loc2_/1000+1)}));
            return false;
         }
         if(!this.milozanim(param1))
         {
            if(param1.qynudu())
            {
               this.fyve.dispatch(this.lavykenur(I18nKeys.larusav,{player:param1.name_}));
            }
            else
            {
               this.fyve.dispatch(this.lavykenur(I18nKeys.hozug,{player:param1.name_}));
            }
            return false;
         }
         map_.gs_.gsc_.teleport(param1.objectId_);
         this.bawonyquki=getTimer()+niha;
         return true;
      }

      private function lavykenur(param1:String, param2:Object=null) : Depagy {
         return Depagy.make(UserConfig.gez,param1,-1,-1,"",false,param2);
      }

      public function wabucigu(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.kotabe();
         var _loc2_:Cici = new Cici(this,65280,2000);
         _loc2_.setStringBuilder(new Sire().setParams(param1));
         map_.mapOverlay_.addStatusText(_loc2_);
         return;
      }

      public function fupilof(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Pozunubu.play("level_up");
         if(param1)
         {
            this.wabucigu(I18nKeys.jahehu);
         }
         else
         {
            this.wabucigu(I18nKeys.jyb);
         }
         return;
      }

      public function kotabe() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         map_.addObj(new LevelUpEffect(this,4.27825536E9,20),x_,y_);
         return;
      }

      public function jiquqyvoh(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(komolevy==20)
         {
            return;
         }
         var _loc2_:Cici = new Cici(this,65280,1000);
         _loc2_.setStringBuilder(new Sire().setParams(I18nKeys.dyf,{exp:param1}));
         map_.mapOverlay_.addStatusText(_loc2_);
         return;
      }

      private var raqikojes:IntPoint;

      private function moz() : Merchant {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:Point = null;
         var _loc4_:Merchant = null;
         var _loc1_:int = x_-int(x_)>0.5?1:-1;
         var _loc2_:int = y_-int(y_)>0.5?1:-1;
         for each (_loc3_ in don)
         {
            this.raqikojes.x_=x_+_loc1_*_loc3_.x;
            this.raqikojes.y_=y_+_loc2_*_loc3_.y;
            _loc4_=map_.merchLookup_[this.raqikojes];
            if(_loc4_!=null)
            {
               return PointUtil.munidake(_loc4_.x_,_loc4_.y_,x_,y_)<1?_loc4_:null;
            }
         }
         return null;
      }

      public function zinygyk(param1:Number, param2:Number) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.ryn(param1,param2,himi);
         return this.moveTo(himi.x,himi.y);
      }

      override public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Boolean = super.moveTo(param1,param2);
         if(map_.gs_.evalIsNotInCombatMapArea())
         {
            this.rojoneric=this.moz();
         }
         return _loc3_;
      }

      public function ryn(param1:Number, param2:Number, param3:Point) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         if(mos())
         {
            param3.x=x_;
            param3.y=y_;
            return;
         }
         var _loc4_:Number = param1-x_;
         var _loc5_:Number = param2-y_;
         if(_loc4_<bicu&&_loc4_>-bicu&&_loc5_<bicu&&_loc5_>-bicu)
         {
            this.lekamataj(param1,param2,param3);
            return;
         }
         var _loc6_:Number = bicu/Math.max(Math.abs(_loc4_),Math.abs(_loc5_));
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
            this.lekamataj(param3.x+_loc4_*_loc6_,param3.y+_loc5_*_loc6_,param3);
            _loc7_=_loc7_+_loc6_;
         }
      }

      public function lekamataj(param1:Number, param2:Number, param3:Point) : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc4_:Boolean = x_%0.5==0&&!(param1==x_)||!(int(x_/0.5)==int(param1/0.5));
         var _loc5_:Boolean = y_%0.5==0&&!(param2==y_)||!(int(y_/0.5)==int(param2/0.5));
         if(!_loc4_&&!_loc5_||(this.tisaquv(param1,param2)))
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
            if(this.tisaquv(param1,_loc7_))
            {
               param3.x=param1;
               param3.y=_loc7_;
               return;
            }
            if(this.tisaquv(_loc6_,param2))
            {
               param3.x=_loc6_;
               param3.y=param2;
               return;
            }
         }
         else
         {
            if(this.tisaquv(_loc6_,param2))
            {
               param3.x=_loc6_;
               param3.y=param2;
               return;
            }
            if(this.tisaquv(param1,_loc7_))
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

      public function tisaquv(param1:Number, param2:Number) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(!(garatecif==_loc3_)&&(_loc3_==null||!_loc3_.rered()))
         {
            return false;
         }
         var _loc4_:Number = param1-int(param1);
         var _loc5_:Number = param2-int(param2);
         if(_loc4_<0.5)
         {
            if(this.hekusow(param1-1,param2))
            {
               return false;
            }
            if(_loc5_<0.5)
            {
               if((this.hekusow(param1,param2-1))||(this.hekusow(param1-1,param2-1)))
               {
                  return false;
               }
            }
            else
            {
               if(_loc5_>0.5)
               {
                  if((this.hekusow(param1,param2+1))||(this.hekusow(param1-1,param2+1)))
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
               if(this.hekusow(param1+1,param2))
               {
                  return false;
               }
               if(_loc5_<0.5)
               {
                  if((this.hekusow(param1,param2-1))||(this.hekusow(param1+1,param2-1)))
                  {
                     return false;
                  }
               }
               else
               {
                  if(_loc5_>0.5)
                  {
                     if((this.hekusow(param1,param2+1))||(this.hekusow(param1+1,param2+1)))
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
                  if(this.hekusow(param1,param2-1))
                  {
                     return false;
                  }
               }
               else
               {
                  if(_loc5_>0.5)
                  {
                     if(this.hekusow(param1,param2+1))
                     {
                        return false;
                     }
                  }
               }
            }
         }
         return true;
      }

      public function hekusow(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Square = map_.lookupSquare(param1,param2);
         return _loc3_==null||_loc3_.tileType_==255||!(_loc3_.obj_==null)&&(_loc3_.obj_.props_.ryqeji);
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         if((this.howohe)&&!isPaused())
         {
            this.howohe=this.howohe-param2;
            if(this.howohe<0)
            {
               this.howohe=0;
            }
         }
         if((this.zazumyfy)&&!isPaused())
         {
            this.zazumyfy=this.zazumyfy-param2;
            if(this.zazumyfy<0)
            {
               this.zazumyfy=0;
            }
         }
         if((this.suqo)&&!isPaused())
         {
            this.suqo=this.suqo-param2;
            if(this.suqo<0)
            {
               this.suqo=0;
            }
         }
         if((ropubiwa())&&!isPaused())
         {
            if(this.dyci==null)
            {
               this.dyci=new Wil(this);
               map_.addObj(this.dyci,x_,y_);
            }
         }
         else
         {
            if(this.dyci!=null)
            {
               map_.removeObj(this.dyci.objectId_);
               this.dyci=null;
            }
         }
         if(map_.player_==this&&(isPaused()))
         {
            return true;
         }
         if(this.fiv!=null)
         {
            _loc3_=UserConfig.data_.cameraAngle;
            if(this.fasaqila!=0.0)
            {
               _loc3_=_loc3_+param2*UserConfig.tequj*this.fasaqila;
               UserConfig.data_.cameraAngle=_loc3_;
            }
            if(!(this.fiv.x==0.0)||!(this.fiv.y==0.0))
            {
               _loc4_=this.bezi();
               _loc5_=Math.atan2(this.fiv.y,this.fiv.x);
               moveVec_.x=_loc4_*Math.cos(_loc3_+_loc5_);
               moveVec_.y=_loc4_*Math.sin(_loc3_+_loc5_);
            }
            else
            {
               moveVec_.x=0;
               moveVec_.y=0;
            }
            if(!(garatecif==null)&&(garatecif.props_.push_))
            {
               moveVec_.x=moveVec_.x-garatecif.props_.animate_.dx_/1000;
               moveVec_.y=moveVec_.y-garatecif.props_.animate_.dy_/1000;
            }
            this.zinygyk(x_+param2*moveVec_.x,y_+param2*moveVec_.y);
         }
         else
         {
            if(!super.update(param1,param2))
            {
               return false;
            }
         }
         if(map_.player_==this&&garatecif.props_.maxDamage_>0&&garatecif.lastDamage_+500<param1&&!voq()&&(garatecif.obj_==null||!garatecif.obj_.props_.protectFromGroundDamage_))
         {
            _loc6_=map_.gs_.gsc_.getNextDamage(garatecif.props_.minDamage_,garatecif.props_.maxDamage_);
            damage(-1,_loc6_,null,ryqi<=_loc6_,null);
            map_.gs_.gsc_.groundDamage(param1,x_,y_);
            garatecif.lastDamage_=param1;
         }
         return true;
      }

      public function sifucoqy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(map_==null)
         {
            return;
         }
         var _loc1_:Square = map_.getSquare(x_,y_);
         if(_loc1_.props_.teqonebi)
         {
            lela=Math.min(lela+1,UserConfig.jowicizos);
            this.pupiqafo=0.1+(1-lela/UserConfig.jowicizos)*(_loc1_.props_.speed_-0.1);
         }
         else
         {
            lela=0;
            this.pupiqafo=_loc1_.props_.speed_;
         }
         return;
      }

      override protected function makeNameBitmapData() : BitmapData {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Zirewe = new Nara(name_);
         var _loc2_:Jetadopuc = Giq.kid().getInstance(Jetadopuc);
         var _loc3_:BitmapData = _loc2_.make(_loc1_,16,this.tega(),true,gybo,true);
         _loc3_.draw(Wagoq.lufequgy(this.numStars_),susaleju);
         return _loc3_;
      }

      private function tega() : uint {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.lysezyky)
         {
            return UserConfig.sujasezuw;
         }
         if(this.wiz)
         {
            return UserConfig.vaquzu;
         }
         return 16777215;
      }

      private var wel:GraphicsSolidFill = null;

      private var joqyri:GraphicsPath = null;

      private var tise:GraphicsSolidFill = null;

      private var miv:GraphicsPath = null;

      protected function qicupobuw(param1:Vector.<IGraphicsData>, param2:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(this.miv==null)
         {
            this.wel=new GraphicsSolidFill();
            this.joqyri=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
            this.tise=new GraphicsSolidFill(2542335);
            this.miv=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
         }
         if(this.breath_<=UserConfig.dilecamad)
         {
            _loc6_=(UserConfig.dilecamad-this.breath_)/UserConfig.dilecamad;
            this.wel.color=MoreColorUtil.subyhyku(5526612,16711680,Math.abs(Math.sin(param2/300))*_loc6_);
         }
         else
         {
            this.wel.color=5526612;
         }
         var _loc3_:* = 20;
         var _loc4_:* = 4;
         var _loc5_:* = 6;
         this.joqyri.data.length=0;
         this.joqyri.data.push(kiwujacam[0]-_loc3_,kiwujacam[1]+_loc4_,kiwujacam[0]+_loc3_,kiwujacam[1]+_loc4_,kiwujacam[0]+_loc3_,kiwujacam[1]+_loc4_+_loc5_,kiwujacam[0]-_loc3_,kiwujacam[1]+_loc4_+_loc5_);
         param1.push(this.wel);
         param1.push(this.joqyri);
         param1.push(Tizulo.END_FILL);
         if(this.breath_>0)
         {
            _loc7_=this.breath_/100*2*_loc3_;
            this.miv.data.length=0;
            this.miv.data.push(kiwujacam[0]-_loc3_,kiwujacam[1]+_loc4_,kiwujacam[0]-_loc3_+_loc7_,kiwujacam[1]+_loc4_,kiwujacam[0]-_loc3_+_loc7_,kiwujacam[1]+_loc4_+_loc5_,kiwujacam[0]-_loc3_,kiwujacam[1]+_loc4_+_loc5_);
            param1.push(this.tise);
            param1.push(this.miv);
            param1.push(Tizulo.END_FILL);
         }
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super.draw(param1,param2,param3);
         if(this!=map_.player_)
         {
            if(!UserConfig.gyry)
            {
               tuvoc(param1,param2);
            }
         }
         else
         {
            if(this.breath_>=0)
            {
               this.qicupobuw(param1,param3);
            }
         }
         return;
      }

      private function bezi() : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(vur())
         {
            return wyvuqad*this.pupiqafo;
         }
         var _loc1_:Number = wyvuqad+this.speed_/75*(mibowoke-wyvuqad);
         if((hufekub())||(tynewobu()))
         {
            _loc1_=_loc1_*1.5;
         }
         _loc1_=_loc1_*this.pupiqafo;
         return _loc1_;
      }

      public function zep() : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(tibupot())
         {
            return wyzobag;
         }
         var _loc1_:Number = wyzobag+this.zegikefa/75*(lejyqigug-wyzobag);
         if(quwi())
         {
            _loc1_=_loc1_*1.5;
         }
         return _loc1_;
      }

      private function gytanikar() : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(cagy())
         {
            return qes;
         }
         var _loc1_:Number = qes+this.vybe/75*(gakuquje-qes);
         if(ketejifu())
         {
            _loc1_=_loc1_*1.5;
         }
         return _loc1_;
      }

      private function godohuk() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Biloqu = this.skin.imageFromAngle(0,Zuwomuguk.pazyladar,0);
         saqizy=this.skin;
         texture_=_loc1_.image_;
         mask_=_loc1_.mask_;
         this.tijusu=true;
         return;
      }

      private function hipedacec() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Vector.<XML> = ObjectLibrary.fekeqos;
         var _loc2_:uint = Math.floor(Math.random()*_loc1_.length);
         var _loc3_:int = _loc1_[_loc2_].@type;
         var _loc4_:Sirador = ObjectLibrary.wotoga[_loc3_];
         texture_=_loc4_.texture_;
         mask_=_loc4_.mask_;
         saqizy=_loc4_.saqizy;
         this.tijusu=false;
         return;
      }

      override protected function getTexture(param1:Wypyj, param2:int) : BitmapData {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc5_:Biloqu = null;
         var _loc10_:* = 0;
         var _loc11_:Dictionary = null;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:ColorTransform = null;
         var _loc3_:Number = 0;
         var _loc4_:int = Zuwomuguk.pazyladar;
         if((this.qibe)||param2<tegudoh+this.dili)
         {
            vumubajap=qoj;
            _loc3_=(param2-tegudoh)%this.dili/this.dili;
            _loc4_=Zuwomuguk.razyz;
         }
         else
         {
            if(!(moveVec_.x==0)||!(moveVec_.y==0))
            {
               _loc10_=3.5/this.bezi();
               if(!(moveVec_.y==0)||!(moveVec_.x==0))
               {
                  vumubajap=Math.atan2(moveVec_.y,moveVec_.x);
               }
               _loc3_=param2%_loc10_/_loc10_;
               _loc4_=Zuwomuguk.qasygareq;
            }
         }
         if(this.cimi())
         {
         }
         else
         {
            if(!this.tijusu)
            {
               this.godohuk();
            }
         }
         if(param1.sypefidun)
         {
            _loc5_=new Biloqu(libi(),null);
         }
         else
         {
            _loc5_=saqizy.imageFromFacing(vumubajap,param1,_loc4_,_loc3_);
         }
         var _loc6_:int = tex1Id_;
         var _loc7_:int = tex2Id_;
         var _loc8_:BitmapData = null;
         if(this.rojoneric)
         {
            _loc11_=keg[this.rojoneric];
            if(_loc11_==null)
            {
               keg[this.rojoneric]=new Dictionary();
            }
            else
            {
               _loc8_=_loc11_[_loc5_];
            }
            _loc6_=this.rojoneric.getTex1Id(tex1Id_);
            _loc7_=this.rojoneric.getTex2Id(tex2Id_);
         }
         else
         {
            _loc8_=keg[_loc5_];
         }
         if(_loc8_==null)
         {
            _loc8_=TextureRedrawer.resize(_loc5_.image_,_loc5_.mask_,size_,false,_loc6_,_loc7_);
            if(this.rojoneric!=null)
            {
               keg[this.rojoneric][_loc5_]=_loc8_;
            }
            else
            {
               keg[_loc5_]=_loc8_;
            }
         }
         if(ryqi<ruguj*0.2)
         {
            _loc12_=int(Math.abs(Math.sin(param2/200))*10)/10;
            _loc13_=128;
            _loc14_=new ColorTransform(1,1,1,1,_loc12_*_loc13_,-_loc12_*_loc13_,-_loc12_*_loc13_);
            _loc8_=Zet.juwyc(_loc8_,_loc14_);
         }
         var _loc9_:BitmapData = keg[_loc8_];
         if(_loc9_==null)
         {
            _loc9_=TextureRedrawer.outlineGlow(_loc8_,0,this.lozinu==-1?0:16711680);
            keg[_loc8_]=_loc9_;
         }
         if((isPaused())||(cyhyfu()))
         {
            _loc9_=Zet.soduve(_loc9_,vaf);
         }
         else
         {
            if(qynudu())
            {
               _loc9_=Zet.waliwaci(_loc9_,0.4);
            }
         }
         return _loc9_;
      }

      override public function getPortrait() : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Biloqu = null;
         var _loc2_:* = 0;
         if(sypewe==null)
         {
            _loc1_=saqizy.imageFromDir(Zuwomuguk.RIGHT,Zuwomuguk.pazyladar,0);
            _loc2_=4/_loc1_.image_.width*100;
            sypewe=TextureRedrawer.resize(_loc1_.image_,_loc1_.mask_,_loc2_,true,tex1Id_,tex2Id_);
            sypewe=TextureRedrawer.outlineGlow(sypewe,0,0);
         }
         return sypewe;
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
         var _loc4_:int = jevuqike[1];
         if(_loc4_==-1)
         {
            return false;
         }
         var _loc5_:XML = ObjectLibrary.tem[_loc4_];
         if(_loc5_==null||!_loc5_.hasOwnProperty("Usable"))
         {
            return false;
         }
         var _loc6_:Point = map_.pSTopW(param1,param2);
         if(_loc6_==null)
         {
            Pozunubu.play("error");
            return false;
         }
         for each (_loc7_ in _loc5_.Activate)
         {
            if(_loc7_.toString()==Tibapyqy.TELEPORT)
            {
               if(!this.tisaquv(_loc6_.x,_loc6_.y))
               {
                  Pozunubu.play("error");
                  return false;
               }
            }
         }
         _loc8_=getTimer();
         if(param3==Rula.qurynis)
         {
            if(_loc8_<this.hocoku)
            {
               Pozunubu.play("error");
               return false;
            }
            _loc10_=int(_loc5_.MpCost);
            if(_loc10_>this.zamonoca)
            {
               Pozunubu.play("no_mana");
               return false;
            }
            _loc11_=500;
            if(_loc5_.hasOwnProperty("Cooldown"))
            {
               _loc11_=Number(_loc5_.Cooldown)*1000;
            }
            this.hocoku=_loc8_+_loc11_;
            map_.gs_.gsc_.useItem(_loc8_,objectId_,1,_loc4_,_loc6_.x,_loc6_.y,param3);
            if(_loc5_.Activate==Tibapyqy.SHOOT)
            {
               _loc9_=Math.atan2(param2,param1);
               this.mib(_loc8_,_loc4_,_loc5_,UserConfig.data_.cameraAngle+_loc9_,false);
            }
         }
         else
         {
            if(_loc5_.hasOwnProperty("MultiPhase"))
            {
               map_.gs_.gsc_.useItem(_loc8_,objectId_,1,_loc4_,_loc6_.x,_loc6_.y,param3);
               _loc10_=int(_loc5_.MpEndCost);
               if(_loc10_<=this.zamonoca)
               {
                  _loc9_=Math.atan2(param2,param1);
                  this.mib(_loc8_,_loc4_,_loc5_,UserConfig.data_.cameraAngle+_loc9_,false);
               }
            }
         }
         return true;
      }

      public function besec(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.shoot(UserConfig.data_.cameraAngle+param1);
         return;
      }

      override public function setAttack(param1:int, param2:Number) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:XML = ObjectLibrary.tem[param1];
         if(_loc3_==null||!_loc3_.hasOwnProperty("RateOfFire"))
         {
            return;
         }
         var _loc4_:Number = Number(_loc3_.RateOfFire);
         this.dili=1/this.zep()*1/_loc4_;
         super.setAttack(param1,param2);
         return;
      }

      private function shoot(param1:Number) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(map_==null||(fyfovake())||(isPaused()))
         {
            return;
         }
         var _loc2_:int = jevuqike[0];
         if(_loc2_==-1)
         {
            this.fyve.dispatch(Depagy.make(UserConfig.gez,I18nKeys.wytycal));
            return;
         }
         var _loc3_:XML = ObjectLibrary.tem[_loc2_];
         var _loc4_:int = getTimer();
         var _loc5_:Number = Number(_loc3_.RateOfFire);
         this.dili=1/this.zep()*1/_loc5_;
         if(_loc4_<tegudoh+this.dili)
         {
            return;
         }
         doneAction(map_.gs_,Tutorial.gepud);
         qoj=param1;
         tegudoh=_loc4_;
         this.mib(tegudoh,_loc2_,_loc3_,qoj,true);
         return;
      }

      private function mib(param1:int, param2:int, param3:XML, param4:Number, param5:Boolean) : void {
         var _loc17_:* = false;
         var _loc18_:* = true;
         var _loc11_:uint = 0;
         var _loc12_:Projectile = null;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:* = 0;
         var _loc6_:int = param3.hasOwnProperty("NumProjectiles")?int(param3.NumProjectiles):1;
         var _loc7_:Number = (param3.hasOwnProperty("ArcGap")?Number(param3.ArcGap):11.25)*Trig.byjik;
         var _loc8_:Number = _loc7_*(_loc6_-1);
         var _loc9_:Number = param4-_loc8_/2;
         this.qibe=true;
         var _loc10_:* = 0;
         while(_loc10_<_loc6_)
         {
            _loc11_=kowyfoses();
            _loc12_=Hidad.mapego(Projectile) as Projectile;
            _loc12_.reset(param2,0,objectId_,_loc11_,_loc9_,param1);
            _loc13_=int(_loc12_.dil.minDamage_);
            _loc14_=int(_loc12_.dil.maxDamage_);
            _loc15_=param5?this.gytanikar():1;
            _loc16_=map_.gs_.gsc_.getNextDamage(_loc13_,_loc14_)*_loc15_;
            if(param1>map_.gs_.moveRecords_.lastClearTime_+600)
            {
               _loc16_=0;
            }
            _loc12_.zacuz(_loc16_);
            if(!(_loc12_.wucu==null))
            {
               Pozunubu.play(_loc12_.wucu,0.75,false);
            }
            map_.addObj(_loc12_,x_+Math.cos(param4)*0.3,y_+Math.sin(param4)*0.3);
            map_.gs_.gsc_.playerShoot(param1,_loc12_);
            _loc9_=_loc9_+_loc7_;
            _loc10_++;
         }
         return;
      }

      public function cimi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((condition_&ConditionEffect.hyheqafis)==0);
      }

      public function sibuhydub() : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = jevuqike.length;
         var _loc2_:uint = 4;
         while(_loc2_<_loc1_)
         {
            if(jevuqike[_loc2_]<=0)
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
         var _loc1_:int = this.jisoh?jevuqike.length:jevuqike.length-Lekakyry.mucitify;
         var _loc2_:uint = 4;
         while(_loc2_<_loc1_)
         {
            if(jevuqike[_loc2_]<=0)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }

      public function swapInventoryIndex(param1:String) : int {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         if(!this.jisoh)
         {
            return -1;
         }
         if(param1==Lihivak.vosuqezem)
         {
            _loc2_=Lekakyry.bibole;
            _loc3_=Lekakyry.bibole+Lekakyry.mucitify;
         }
         else
         {
            _loc2_=Lekakyry.bibole+Lekakyry.mucitify;
            _loc3_=jevuqike.length;
         }
         var _loc4_:uint = _loc2_;
         while(_loc4_<_loc3_)
         {
            if(jevuqike[_loc4_]<=0)
            {
               return _loc4_;
            }
            _loc4_++;
         }
         return -1;
      }

      public function getPotionCount(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(param1)
         {
            case Dewydo.mokikeqa:
               return this.kezyzys;
            case Dewydo.rywihuh:
               return this.basonuhe;
            default:
               return 0;
         }
      }
   }

}