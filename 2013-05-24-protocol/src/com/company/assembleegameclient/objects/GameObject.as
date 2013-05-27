package com.company.assembleegameclient.objects
{
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.util.ConditionEffect;
   import com.company.util.MoreColorUtil;
   import flash.display.BitmapData;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import moryzis.Hetimyhel;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.engine3d.Gokot;
   import moryzis.Jil;
   import ledegasy.Animations;
   import flash.utils.Dictionary;
   import vozireni.Pozunubu;
   import com.company.util.BitmapUtil;
   import cypujavop.Wakudava;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.map.Square;
   import wyrovu.Cici;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.util.Befiset;
   import moryzis.ExplosionEffect;
   import moryzis.HitEffect;
   import nec.Nara;
   import nec.Zirewe;
   import jag.Giq;
   import movimet.Jetadopuc;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;
   import com.company.util.Tizulo;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.util.Zet;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.utils.getTimer;
   import flash.geom.ColorTransform;
   import aaa.rotmg.config.UserConfig;
   import flash.display.GraphicsGradientFill;
   import flash.display.GradientType;
   import flash.utils.getQualifiedClassName;
   import com.company.assembleegameclient.engine3d.Hivehihil;
   import ledegasy.Hiq;
   import com.company.util.ConversionUtil;


   public class GameObject extends BasicObject
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function GameObject(param1:XML) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         this.props_=ObjectLibrary.taqobilug;
         this.myracufam=new Point();
         this.fifylu=new Point();
         this.moveVec_=new Vector3D();
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Tizulo.hyz,null);
         this.vS_=new Vector.<Number>();
         this.savoc=new Vector.<Number>();
         this.zez=new Matrix();
         super();
         if(param1==null)
         {
            return;
         }
         this.objectType_=int(param1.@type);
         this.props_=ObjectLibrary.lego[this.objectType_];
         kyjon=this.props_.kehypu>0;
         var _loc2_:Sirador = ObjectLibrary.wotoga[this.objectType_];
         this.texture_=_loc2_.texture_;
         this.mask_=_loc2_.mask_;
         this.saqizy=_loc2_.saqizy;
         this.qeferew=_loc2_.qeferew;
         if(_loc2_.dez!=null)
         {
            this.effect_=Jil.qecuri(_loc2_.dez,this);
         }
         if(this.texture_!=null)
         {
            this.kodivos=this.texture_.height/8;
         }
         if(param1.hasOwnProperty("Model"))
         {
            this.moc=Hivehihil.gykejehyd(String(param1.Model));
         }
         var _loc3_:Hiq = ObjectLibrary.nucyto[this.objectType_];
         if(_loc3_!=null)
         {
            this.jizatoqym=new Animations(_loc3_);
         }
         z_=this.props_.z_;
         this.flying_=this.props_.flying_;
         if(param1.hasOwnProperty("MaxHitPoints"))
         {
            this.ryqi=this.ruguj=int(param1.MaxHitPoints);
         }
         if(param1.hasOwnProperty("Defense"))
         {
            this.giwiw=int(param1.Defense);
         }
         if(param1.hasOwnProperty("SlotTypes"))
         {
            this.nigy=ConversionUtil.pasywe(param1.SlotTypes);
            this.jevuqike=new Vector.<int>(this.nigy.length);
            _loc4_=0;
            while(_loc4_<this.jevuqike.length)
            {
               this.jevuqike[_loc4_]=-1;
               _loc4_++;
            }
         }
         if(param1.hasOwnProperty("Tex1"))
         {
            this.tex1Id_=int(param1.Tex1);
         }
         if(param1.hasOwnProperty("Tex2"))
         {
            this.tex2Id_=int(param1.Tex2);
         }
         this.props_.galopy();
         return;
      }

      protected static const vaf:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.lyheq);

      protected static const qafywo:Matrix = new Matrix();

      private static const qeluvet:Number = 1.0E-5;

      private static const dateni:Number = -qeluvet;

      public static function nihek(param1:int, param2:int, param3:Boolean, param4:int) : int {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:int = param2;
         if((param3)||!((param4&ConditionEffect.lymilaq)==0))
         {
            _loc5_=0;
         }
         else
         {
            if((param4&ConditionEffect.raf)!=0)
            {
               _loc5_=_loc5_*2;
            }
         }
         var _loc6_:int = param1*3/20;
         var _loc7_:int = Math.max(_loc6_,param1-_loc5_);
         if((param4&ConditionEffect.ceryp)!=0)
         {
            _loc7_=0;
         }
         return _loc7_;
      }

      public static const nanemagy:int = 300;

      public var vihyg:BitmapData = null;

      private var vitefi:GraphicsBitmapFill = null;

      private var wypejalaz:GraphicsPath = null;

      public var dodekymot:Hetimyhel;

      private var gumejahig:Boolean;

      private var lazyhuj:Boolean = false;

      private var walolu:Boolean;

      private var libywiv:Boolean = false;

      public var props_:ObjectProperties;

      public var name_:String;

      public var radius_:Number = 0.5;

      public var vumubajap:Number = 0;

      public var flying_:Boolean = false;

      public var qoj:Number = 0;

      public var tegudoh:int = 0;

      public var saqizy:Zuwomuguk = null;

      public var texture_:BitmapData = null;

      public var mask_:BitmapData = null;

      public var qeferew:Vector.<Sirador> = null;

      public var moc:Gokot = null;

      public var effect_:Jil = null;

      public var jizatoqym:Animations = null;

      public var hojucope:Boolean = false;

      protected var sypewe:BitmapData = null;

      protected var keg:Dictionary = null;

      public var ruguj:int = 200;

      public var ryqi:int = 200;

      public var size_:int = 100;

      public var komolevy:int = -1;

      public var giwiw:int = 0;

      public var nigy:Vector.<int> = null;

      public var jevuqike:Vector.<int> = null;

      public var condition_:uint = 0;

      protected var tex1Id_:int = 0;

      protected var tex2Id_:int = 0;

      public var tar:Boolean = false;

      public var objectType_:int;

      private var potim:uint = 1;

      private var kodivos:Number = 1;

      public var lela:int = 0;

      public var gityqig:BitmapData = null;

      public var kyfo:Daluwe = null;

      public var sowej:int = -1;

      public function setObjectId(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sirador = null;
         objectId_=param1;
         if(this.qeferew!=null)
         {
            _loc2_=this.qeferew[objectId_%this.qeferew.length];
            this.texture_=_loc2_.texture_;
            this.mask_=_loc2_.mask_;
            this.saqizy=_loc2_.saqizy;
         }
         return;
      }

      public function secibojyqi(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Sirador = null;
         var _loc2_:Sirador = ObjectLibrary.wotoga[this.objectType_];
         if(param1==0)
         {
            _loc3_=_loc2_;
         }
         else
         {
            _loc3_=_loc2_.getAltTextureData(param1);
            if(_loc3_==null)
            {
               return;
            }
         }
         this.texture_=_loc3_.texture_;
         this.mask_=_loc3_.mask_;
         this.saqizy=_loc3_.saqizy;
         if(this.effect_!=null)
         {
            map_.removeObj(this.effect_.objectId_);
            this.effect_=null;
         }
         if(_loc3_.dez!=null)
         {
            this.effect_=Jil.qecuri(_loc3_.dez,this);
            if(map_!=null)
            {
               map_.addObj(this.effect_,x_,y_);
            }
         }
         return;
      }

      public function setTex1(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.tex1Id_)
         {
            return;
         }
         this.tex1Id_=param1;
         this.keg=new Dictionary();
         this.sypewe=null;
         return;
      }

      public function setTex2(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.tex2Id_)
         {
            return;
         }
         this.tex2Id_=param1;
         this.keg=new Dictionary();
         this.sypewe=null;
         return;
      }

      public function ruzy(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Pozunubu.play(this.props_.qecolune[param1]);
         return;
      }

      override public function dispose() : void {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc1_:Object = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Dictionary = null;
         var _loc4_:Object = null;
         var _loc5_:BitmapData = null;
         super.dispose();
         this.texture_=null;
         if(this.sypewe!=null)
         {
            this.sypewe.dispose();
            this.sypewe=null;
         }
         if(this.keg!=null)
         {
            for each (_loc1_ in this.keg)
            {
               _loc2_=_loc1_ as BitmapData;
               if(_loc2_!=null)
               {
                  _loc2_.dispose();
               }
               else
               {
                  _loc3_=_loc1_ as Dictionary;
                  for each (_loc4_ in _loc3_)
                  {
                     _loc5_=_loc4_ as BitmapData;
                     if(_loc5_!=null)
                     {
                        _loc5_.dispose();
                     }
                  }
               }
            }
            this.keg=null;
         }
         if(this.moc!=null)
         {
            this.moc.dispose();
            this.moc=null;
         }
         this.nigy=null;
         this.jevuqike=null;
         if(this.vihyg!=null)
         {
            this.vihyg.dispose();
            this.vihyg=null;
         }
         this.vitefi=null;
         this.wypejalaz=null;
         this.bitmapFill_=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.vS_=null;
         this.savoc=null;
         this.zez=null;
         this.lylefy=null;
         this.hatalufic=null;
         this.qatu=null;
         this.ged=null;
         if(this.lagefojul!=null)
         {
            this.lagefojul.commands=null;
            this.lagefojul.data=null;
            this.lagefojul=null;
         }
         return;
      }

      public function jabycorum() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.qec)==0);
      }

      public function cagy() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.nasopej)==0);
      }

      public function vur() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.jusime)==0);
      }

      public function jyqozafa() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.ditaj)==0);
      }

      public function tibupot() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.nenake)==0);
      }

      public function fyfovake() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.qyr)==0);
      }

      public function isBlind() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.kusihe)==0);
      }

      public function isDrunk() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.fatumuzac)==0);
      }

      public function canajutik() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.wihu)==0);
      }

      public function maviz() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.wone)==0);
      }

      public function qynudu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.puzefap)==0);
      }

      public function mos() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.bizi)==0);
      }

      public function hufekub() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.pecyq)==0);
      }

      public function tynewobu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.wuk)==0);
      }

      public function ridyso() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.leny)==0);
      }

      public function ropubiwa() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.bamazybyn)==0);
      }

      public function ketejifu() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.girobuqup)==0);
      }

      public function quwi() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.rigej)==0);
      }

      public function isPaused() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.gyceku)==0);
      }

      public function cyhyfu() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.birenuje)==0);
      }

      public function voq() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.sisyn)==0);
      }

      public function quniketip() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.ceryp)==0);
      }

      public function lety() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.raf)==0);
      }

      public function naju() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.lymilaq)==0);
      }

      public function hyhyl(param1:int=20) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:GameObject = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         for each (_loc2_ in map_.goDict_)
         {
            if(_loc2_ is Character&&(_loc2_.props_.isEnemy_))
            {
               _loc3_=x_>_loc2_.x_?x_-_loc2_.x_:_loc2_.x_-x_;
               _loc4_=y_>_loc2_.y_?y_-_loc2_.y_:_loc2_.y_-y_;
               if(_loc3_<param1&&_loc4_<param1)
               {
                  return false;
               }
            }
         }
         return true;
      }

      public function getName() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.name_==null||this.name_==""?ObjectLibrary.fajocyd[this.objectType_]:this.name_;
      }

      public function getColor() : uint {
         return BitmapUtil.hitav(this.texture_);
      }

      public function kowyfoses() : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:uint = this.potim;
         this.potim=(this.potim+1)%128;
         return _loc1_;
      }

      public function vyfaveri(param1:Wakudava) : Number {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = param1.x_-x_;
         var _loc3_:Number = param1.y_-y_;
         return Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
      }

      public function lonic(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.gumejahig=true;
         }
         else
         {
            this.gumejahig=false;
            this.lazyhuj=false;
         }
         return;
      }

      public function rogoj(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.walolu=true;
         }
         else
         {
            this.walolu=false;
            this.libywiv=false;
         }
         return;
      }

      protected var tup:int = 0;

      protected var qyz:int = -1;

      protected var myracufam:Point;

      protected var fifylu:Point;

      protected var moveVec_:Vector3D;

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         map_=param1;
         this.myracufam.x=this.fifylu.x=param2;
         this.myracufam.y=this.fifylu.y=param3;
         if(!this.moveTo(param2,param3))
         {
            map_=null;
            return false;
         }
         if(this.effect_!=null)
         {
            map_.addObj(this.effect_,param2,param3);
         }
         return true;
      }

      override public function removeFromMap() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.props_.static_)&&!(garatecif==null))
         {
            if(garatecif.obj_==this)
            {
               garatecif.obj_=null;
            }
            garatecif=null;
         }
         if(this.effect_!=null)
         {
            map_.removeObj(this.effect_.objectId_);
         }
         super.removeFromMap();
         this.dispose();
         return;
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
         if(this.props_.static_)
         {
            if(garatecif!=null)
            {
               garatecif.obj_=null;
            }
            _loc3_.obj_=this;
         }
         garatecif=_loc3_;
         if(this.moc!=null)
         {
            this.moc.setPosition(x_,y_,0,this.props_.rotation_);
         }
         return true;
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc3_:* = false;
         if(this.moveVec_.x==0.0&&this.moveVec_.y==0.0)
         {
         }
         else
         {
            if(this.qyz<map_.gs_.gsc_.lastTickId_)
            {
               this.moveVec_.x=0.0;
               this.moveVec_.y=0.0;
               this.moveTo(this.fifylu.x,this.fifylu.y);
            }
            else
            {
               _loc4_=param1-this.tup;
               _loc5_=this.myracufam.x+_loc4_*this.moveVec_.x;
               _loc6_=this.myracufam.y+_loc4_*this.moveVec_.y;
               this.moveTo(_loc5_,_loc6_);
               _loc3_=true;
            }
         }
         if(this.props_.giqacod!=null)
         {
            if(!_loc3_)
            {
               z_=this.props_.z_;
               this.flying_=this.props_.flying_;
            }
            else
            {
               z_=this.props_.giqacod.z_;
               this.flying_=this.props_.giqacod.flying_;
            }
         }
         return true;
      }

      public function jihaweky(param1:Number, param2:Number, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.moveTo(param1,param2);
         this.tup=param3;
         this.fifylu.x=param1;
         this.fifylu.y=param2;
         this.myracufam.x=param1;
         this.myracufam.y=param2;
         this.moveVec_.x=0;
         this.moveVec_.y=0;
         return;
      }

      public function zotuw(param1:Number, param2:Number, param3:int, param4:int) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(this.qyz<map_.gs_.gsc_.lastTickId_)
         {
            this.moveTo(this.fifylu.x,this.fifylu.y);
         }
         this.tup=map_.gs_.lastUpdate_;
         this.fifylu.x=param1;
         this.fifylu.y=param2;
         this.myracufam.x=x_;
         this.myracufam.y=y_;
         this.moveVec_.x=(this.fifylu.x-this.myracufam.x)/param3;
         this.moveVec_.y=(this.fifylu.y-this.myracufam.y)/param3;
         this.qyz=param4;
         return;
      }

      public function damage(param1:int, param2:int, param3:Vector.<uint>, param4:Boolean, param5:Projectile) : void {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc7_:* = 0;
         var _loc8_:uint = 0;
         var _loc9_:ConditionEffect = null;
         var _loc10_:Cici = null;
         var _loc11_:String = null;
         var _loc12_:* = false;
         if(param4)
         {
            this.hojucope=true;
         }
         else
         {
            if(param3!=null)
            {
               _loc7_=0;
               for each (_loc8_ in param3)
               {
                  _loc9_=null;
                  switch(_loc8_)
                  {
                     case ConditionEffect.rirudewy:
                        break;
                     case ConditionEffect.lerowu:
                     case ConditionEffect.riroz:
                     case ConditionEffect.mofub:
                     case ConditionEffect.boj:
                     case ConditionEffect.debyk:
                     case ConditionEffect.jaluw:
                     case ConditionEffect.qul:
                     case ConditionEffect.hibal:
                     case ConditionEffect.wicyteqa:
                     case ConditionEffect.havihi:
                     case ConditionEffect.gisalu:
                     case ConditionEffect.huhi:
                     case ConditionEffect.ziho:
                     case ConditionEffect.qutymu:
                     case ConditionEffect.ruli:
                     case ConditionEffect.tugujamo:
                     case ConditionEffect.qisipor:
                     case ConditionEffect.susaq:
                        _loc9_=ConditionEffect.effects_[_loc8_];
                        break;
                     case ConditionEffect.qil:
                        if(this.maviz())
                        {
                           _loc10_=new Cici(this,16711680,3000);
                           _loc10_.setStringBuilder(new Sire().setParams(I18nKeys.nivewu));
                           map_.mapOverlay_.addStatusText(_loc10_);
                        }
                        else
                        {
                           _loc9_=ConditionEffect.effects_[_loc8_];
                        }
                        break;
                  }
                  if(_loc9_!=null)
                  {
                     if((this.condition_|_loc9_.bit_)==this.condition_)
                     {
                     }
                     else
                     {
                        this.condition_=this.condition_|_loc9_.bit_;
                        _loc11_=_loc9_.hopogy;
                        this.hiqobygu(_loc7_,_loc11_);
                        _loc7_=_loc7_+500;
                     }
                  }
               }
            }
         }
         var _loc6_:Vector.<uint> = Befiset.bamotinug(this.objectType_,this.texture_,this.props_.woquto,this.props_.dasigily);
         if(this.hojucope)
         {
            map_.addObj(new ExplosionEffect(_loc6_,this.size_,30),x_,y_);
         }
         else
         {
            if(param5!=null)
            {
               map_.addObj(new HitEffect(_loc6_,this.size_,10,param5.angle_,param5.dil.speed_),x_,y_);
            }
            else
            {
               map_.addObj(new ExplosionEffect(_loc6_,this.size_,10),x_,y_);
            }
         }
         if(param2>0)
         {
            _loc12_=(this.naju())||!(param5==null)&&(param5.dil.moqu);
            this.jatidoro(param2,_loc12_);
         }
         return;
      }

      public function hiqobygu(param1:int, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Cici = new Cici(this,16711680,3000,param1);
         _loc3_.setStringBuilder(new Sire().setParams(param2));
         map_.mapOverlay_.addStatusText(_loc3_);
         return;
      }

      public function jatidoro(param1:int, param2:Boolean) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = "-"+param1;
         var _loc4_:Cici = new Cici(this,param2?9437439:16711680,1000);
         _loc4_.setStringBuilder(new Nara(_loc3_));
         map_.mapOverlay_.addStatusText(_loc4_);
         return;
      }

      protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Zirewe = new Nara(this.name_);
         var _loc2_:Jetadopuc = Giq.kid().getInstance(Jetadopuc);
         return _loc2_.make(_loc1_,16,16777215,true,qafywo,true);
      }

      public function tuvoc(param1:Vector.<IGraphicsData>, param2:Wypyj) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.vihyg==null)
         {
            this.vihyg=this.makeNameBitmapData();
            this.vitefi=new GraphicsBitmapFill(null,new Matrix(),false,false);
            this.wypejalaz=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
         }
         var _loc3_:int = this.vihyg.width/2+1;
         var _loc4_:* = 30;
         var _loc5_:Vector.<Number> = this.wypejalaz.data;
         _loc5_.length=0;
         _loc5_.push(kiwujacam[0]-_loc3_,kiwujacam[1],kiwujacam[0]+_loc3_,kiwujacam[1],kiwujacam[0]+_loc3_,kiwujacam[1]+_loc4_,kiwujacam[0]-_loc3_,kiwujacam[1]+_loc4_);
         this.vitefi.bitmapData=this.vihyg;
         var _loc6_:Matrix = this.vitefi.matrix;
         _loc6_.identity();
         _loc6_.translate(_loc5_[0],_loc5_[1]);
         param1.push(this.vitefi);
         param1.push(this.wypejalaz);
         param1.push(Tizulo.END_FILL);
         return;
      }

      protected function libi() : BitmapData {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.gityqig==null)
         {
            this.gityqig=AssetLibrary.jeqycu("lofiChar8x8",int(Math.random()*239));
         }
         return this.gityqig;
      }

      protected function getTexture(param1:Wypyj, param2:int) : BitmapData {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:Biloqu = null;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:* = 0;
         var _loc12_:BitmapData = null;
         var _loc3_:BitmapData = this.texture_;
         var _loc4_:int = this.size_;
         var _loc5_:BitmapData = null;
         if(this.saqizy!=null)
         {
            _loc6_=0;
            _loc7_=Zuwomuguk.pazyladar;
            if(param2<this.tegudoh+nanemagy)
            {
               if(!this.props_.tiqo)
               {
                  this.vumubajap=this.qoj;
               }
               _loc6_=(param2-this.tegudoh)%nanemagy/nanemagy;
               _loc7_=Zuwomuguk.razyz;
            }
            else
            {
               if(!(this.moveVec_.x==0)||!(this.moveVec_.y==0))
               {
                  _loc9_=0.5/this.moveVec_.length;
                  _loc9_=_loc9_+(400-_loc9_%400);
                  if(this.moveVec_.x>qeluvet||this.moveVec_.x<dateni||this.moveVec_.y>qeluvet||this.moveVec_.y<dateni)
                  {
                     this.vumubajap=Math.atan2(this.moveVec_.y,this.moveVec_.x);
                     _loc7_=Zuwomuguk.qasygareq;
                  }
                  else
                  {
                     _loc7_=Zuwomuguk.pazyladar;
                  }
                  _loc6_=param2%_loc9_/_loc9_;
               }
            }
            _loc8_=this.saqizy.imageFromFacing(this.vumubajap,param1,_loc7_,_loc6_);
            _loc3_=_loc8_.image_;
            _loc5_=_loc8_.mask_;
         }
         else
         {
            if(this.jizatoqym!=null)
            {
               _loc10_=this.jizatoqym.getTexture(param2);
               if(_loc10_!=null)
               {
                  _loc3_=_loc10_;
               }
            }
         }
         if((this.props_.gevonob)||!(this.moc==null))
         {
            return _loc3_;
         }
         if(param1.sypefidun)
         {
            _loc11_=_loc3_==null?8:_loc3_.width;
            _loc3_=this.libi();
            _loc5_=null;
            _loc4_=this.size_*Math.min(1.5,_loc11_/_loc3_.width);
         }
         if(this.cyhyfu())
         {
            _loc3_=Zet.soduve(_loc3_,vaf);
         }
         if(this.kyfo!=null)
         {
            if(!this.kyfo.zudeqev(param2))
            {
               _loc3_=this.kyfo.apply(_loc3_,param2);
            }
            else
            {
               this.kyfo=null;
            }
         }
         if(this.tex1Id_==0&&this.tex2Id_==0)
         {
            _loc3_=TextureRedrawer.redraw(_loc3_,_loc4_,false,0,0);
         }
         else
         {
            _loc12_=null;
            if(this.keg==null)
            {
               this.keg=new Dictionary();
            }
            else
            {
               _loc12_=this.keg[_loc3_];
            }
            if(_loc12_==null)
            {
               _loc12_=TextureRedrawer.resize(_loc3_,_loc5_,_loc4_,false,this.tex1Id_,this.tex2Id_);
               _loc12_=TextureRedrawer.outlineGlow(_loc12_,0,0);
               this.keg[_loc3_]=_loc12_;
            }
            _loc3_=_loc12_;
         }
         return _loc3_;
      }

      public function wyq(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.texture_=AssetLibrary.jeqycu(param1,param2);
         this.kodivos=this.texture_.height/8;
         return;
      }

      public function getPortrait() : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:BitmapData = null;
         var _loc2_:* = 0;
         if(this.sypewe==null)
         {
            _loc1_=this.props_.sypewe!=null?this.props_.sypewe.getTexture():this.texture_;
            _loc2_=4/_loc1_.width*100;
            this.sypewe=TextureRedrawer.resize(_loc1_,this.mask_,_loc2_,true,this.tex1Id_,this.tex2Id_);
            this.sypewe=TextureRedrawer.outlineGlow(this.sypewe,0,0);
         }
         return this.sypewe;
      }

      public function setAttack(param1:int, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qoj=param2;
         this.tegudoh=getTimer();
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var savoc:Vector.<Number>;

      protected var zez:Matrix;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:BitmapData = null;
         var _loc4_:BitmapData = this.getTexture(param2,param3);
         if(this.props_.gevonob)
         {
            if(garatecif.faces_.length==0)
            {
               return;
            }
            this.path_.data=garatecif.faces_[0].face_.vout_;
            this.bitmapFill_.bitmapData=_loc4_;
            garatecif.baseTexMatrix_.calculateTextureMatrix(this.path_.data);
            this.bitmapFill_.matrix=garatecif.baseTexMatrix_.tToS_;
            param1.push(this.bitmapFill_);
            param1.push(this.path_);
            param1.push(Tizulo.END_FILL);
            return;
         }
         if(this.moc!=null)
         {
            this.moc.draw(param1,param2,this.props_.color_,_loc4_);
            return;
         }
         var _loc5_:int = _loc4_.width;
         var _loc6_:int = _loc4_.height;
         var _loc7_:int = garatecif.sink_+this.lela;
         if(_loc7_>0&&((this.flying_)||!(garatecif.obj_==null)&&(garatecif.obj_.props_.protectFromSink_)))
         {
            _loc7_=0;
         }
         this.vS_.length=0;
         this.vS_.push(kiwujacam[3]-_loc5_/2,kiwujacam[4]-_loc6_+_loc7_,kiwujacam[3]+_loc5_/2,kiwujacam[4]-_loc6_+_loc7_,kiwujacam[3]+_loc5_/2,kiwujacam[4],kiwujacam[3]-_loc5_/2,kiwujacam[4]);
         this.path_.data=this.vS_;
         if((this.gumejahig)&&!this.lazyhuj)
         {
            _loc8_=_loc4_.clone();
            _loc8_.colorTransform(_loc8_.rect,new ColorTransform(-1,-1,-1,1,255,255,255,0));
            _loc8_=Zet.soduve(_loc8_,new ColorMatrixFilter(MoreColorUtil.lyheq));
            _loc4_=_loc8_;
            this.lazyhuj=true;
         }
         if((this.walolu)&&!this.libywiv)
         {
            _loc8_=_loc4_.clone();
            _loc8_.colorTransform(_loc8_.rect,new ColorTransform(1,1,1,1,255,255,255,0));
            _loc4_=_loc8_;
            this.libywiv=true;
         }
         this.bitmapFill_.bitmapData=_loc4_;
         this.zez.identity();
         this.zez.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.zez;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Tizulo.END_FILL);
         if((!this.isPaused())&&(this.condition_)&&!UserConfig.gyry)
         {
            this.ginum(param1,param2,param3);
         }
         if((this.props_.jobitam)&&!(this.name_==null)&&!(this.name_.length==0))
         {
            this.tuvoc(param1,param2);
         }
         return;
      }

      private var lylefy:Vector.<BitmapData> = null;

      private var hatalufic:Vector.<GraphicsBitmapFill> = null;

      private var qatu:Vector.<GraphicsPath> = null;

      public function ginum(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc9_:BitmapData = null;
         var _loc10_:GraphicsBitmapFill = null;
         var _loc11_:GraphicsPath = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Matrix = null;
         if(this.lylefy==null)
         {
            this.lylefy=new Vector.<BitmapData>();
            this.hatalufic=new Vector.<GraphicsBitmapFill>();
            this.qatu=new Vector.<GraphicsPath>();
         }
         this.lylefy.length=0;
         var _loc4_:int = param3/500;
         ConditionEffect.vivumec(this.condition_,this.lylefy,_loc4_);
         var _loc5_:Number = kiwujacam[3];
         var _loc6_:Number = this.vS_[1];
         var _loc7_:int = this.lylefy.length;
         var _loc8_:* = 0;
         while(_loc8_<_loc7_)
         {
            _loc9_=this.lylefy[_loc8_];
            if(_loc8_>=this.hatalufic.length)
            {
               this.hatalufic.push(new GraphicsBitmapFill(null,new Matrix(),false,false));
               this.qatu.push(new GraphicsPath(Tizulo.hyz,new Vector.<Number>()));
            }
            _loc10_=this.hatalufic[_loc8_];
            _loc11_=this.qatu[_loc8_];
            _loc10_.bitmapData=_loc9_;
            _loc12_=_loc5_-_loc9_.width*_loc7_/2+_loc8_*_loc9_.width;
            _loc13_=_loc6_-_loc9_.height/2;
            _loc11_.data.length=0;
            _loc11_.data.push(_loc12_,_loc13_,_loc12_+_loc9_.width,_loc13_,_loc12_+_loc9_.width,_loc13_+_loc9_.height,_loc12_,_loc13_+_loc9_.height);
            _loc14_=_loc10_.matrix;
            _loc14_.identity();
            _loc14_.translate(_loc12_,_loc13_);
            param1.push(_loc10_);
            param1.push(_loc11_);
            param1.push(Tizulo.END_FILL);
            _loc8_++;
         }
         return;
      }

      protected var ged:GraphicsGradientFill = null;

      protected var lagefojul:GraphicsPath = null;

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.ged==null)
         {
            this.ged=new GraphicsGradientFill(GradientType.RADIAL,[this.props_.soh,this.props_.soh],[0.5,0],null,new Matrix());
            this.lagefojul=new GraphicsPath(Tizulo.hyz,new Vector.<Number>());
         }
         var _loc4_:Number = this.size_/100*this.props_.kehypu/100*this.kodivos;
         var _loc5_:Number = 30*_loc4_;
         var _loc6_:Number = 15*_loc4_;
         this.ged.matrix.createGradientBox(_loc5_*2,_loc6_*2,0,kiwujacam[0]-_loc5_,kiwujacam[1]-_loc6_);
         param1.push(this.ged);
         this.lagefojul.data.length=0;
         this.lagefojul.data.push(kiwujacam[0]-_loc5_,kiwujacam[1]-_loc6_,kiwujacam[0]+_loc5_,kiwujacam[1]-_loc6_,kiwujacam[0]+_loc5_,kiwujacam[1]+_loc6_,kiwujacam[0]-_loc5_,kiwujacam[1]+_loc6_);
         param1.push(this.lagefojul);
         param1.push(Tizulo.END_FILL);
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "["+getQualifiedClassName(this)+" id: "+objectId_+" type: "+ObjectLibrary.fajocyd[this.objectType_]+" pos: "+x_+", "+y_+"]";
      }
   }

}