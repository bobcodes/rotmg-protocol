package com.company.assembleegameclient.objects
{
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.util.ConditionEffect;
   import com.company.util.MoreColorUtil;
   import flash.display.BitmapData;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import pufupav.Lohanyruq;
   import com.company.assembleegameclient.util.Jiqefatok;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.engine3d.Vutyrut;
   import pufupav.Miwimemo;
   import zijyq.Animations;
   import flash.utils.Dictionary;
   import dorepoji.Kadido;
   import com.company.util.BitmapUtil;
   import dasefezy.Rimukiz;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.map.Square;
   import sudiba.Fozinomu;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.assembleegameclient.util.Sur;
   import pufupav.ExplosionEffect;
   import pufupav.HitEffect;
   import jediwip.Vofezuzy;
   import jediwip.Tunyhazo;
   import sijizoh.Duq;
   import hivysif.Pyzykyj;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.util.Dyrejocu;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.util.Zurawi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.utils.getTimer;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.display.GraphicsGradientFill;
   import flash.display.GradientType;
   import flash.utils.getQualifiedClassName;
   import com.company.assembleegameclient.engine3d.Wucazad;
   import zijyq.Zoq;
   import com.company.util.ConversionUtil;


   public class GameObject extends BasicObject
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function GameObject(param1:XML) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = 0;
         this.props_=ObjectLibrary.metocu;
         this.joqyf=new Point();
         this.dakejo=new Point();
         this.moveVec_=new Vector3D();
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Dyrejocu.capuz,null);
         this.vS_=new Vector.<Number>();
         this.gocabe=new Vector.<Number>();
         this.puval=new Matrix();
         super();
         if(param1==null)
         {
            return;
         }
         this.objectType_=int(param1.@type);
         this.props_=ObjectLibrary.zupucuwum[this.objectType_];
         budav=this.props_.nyn>0;
         var _loc2_:Sep = ObjectLibrary.fyri[this.objectType_];
         this.texture_=_loc2_.texture_;
         this.mask_=_loc2_.mask_;
         this.bisyfewyt=_loc2_.bisyfewyt;
         this.diqatocos=_loc2_.diqatocos;
         if(_loc2_.pyzusod!=null)
         {
            this.effect_=Miwimemo.wumupij(_loc2_.pyzusod,this);
         }
         if(this.texture_!=null)
         {
            this.lukiri=this.texture_.height/8;
         }
         if(param1.hasOwnProperty("Model"))
         {
            this.gikasy=Wucazad.law(String(param1.Model));
         }
         var _loc3_:Zoq = ObjectLibrary.homisar[this.objectType_];
         if(_loc3_!=null)
         {
            this.paparawad=new Animations(_loc3_);
         }
         z_=this.props_.z_;
         this.flying_=this.props_.flying_;
         if(param1.hasOwnProperty("MaxHitPoints"))
         {
            this.vypo=this.kukigim=int(param1.MaxHitPoints);
         }
         if(param1.hasOwnProperty("Defense"))
         {
            this.senajawec=int(param1.Defense);
         }
         if(param1.hasOwnProperty("SlotTypes"))
         {
            this.bizysuhy=ConversionUtil.zyhelokub(param1.SlotTypes);
            this.zosig=new Vector.<int>(this.bizysuhy.length);
            _loc4_=0;
            while(_loc4_<this.zosig.length)
            {
               this.zosig[_loc4_]=-1;
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
         this.props_.qeti();
         return;
      }

      protected static const mopiby:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.fuguwo);

      protected static const begatywy:Matrix = new Matrix();

      private static const pehagoqi:Number = 1.0E-5;

      private static const merowicun:Number = -pehagoqi;

      public static function ger(param1:int, param2:int, param3:Boolean, param4:int) : int {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:int = param2;
         if((param3)||!((param4&ConditionEffect.vyrugi)==0))
         {
            _loc5_=0;
         }
         else
         {
            if((param4&ConditionEffect.fev)!=0)
            {
               _loc5_=_loc5_*2;
            }
         }
         var _loc6_:int = param1*3/20;
         var _loc7_:int = Math.max(_loc6_,param1-_loc5_);
         if((param4&ConditionEffect.hiciwe)!=0)
         {
            _loc7_=0;
         }
         return _loc7_;
      }

      public static const wyleky:int = 300;

      public var mazivyvab:BitmapData = null;

      private var sugal:GraphicsBitmapFill = null;

      private var roneret:GraphicsPath = null;

      public var sagisum:Lohanyruq;

      private var dijejoqyb:Boolean;

      private var misusibu:Boolean = false;

      private var lizoq:Boolean;

      private var negawefe:Boolean = false;

      public var props_:ObjectProperties;

      public var name_:String;

      public var radius_:Number = 0.5;

      public var susov:Number = 0;

      public var flying_:Boolean = false;

      public var poviz:Number = 0;

      public var fofes:int = 0;

      public var bisyfewyt:Jiqefatok = null;

      public var texture_:BitmapData = null;

      public var mask_:BitmapData = null;

      public var diqatocos:Vector.<Sep> = null;

      public var gikasy:Vutyrut = null;

      public var effect_:Miwimemo = null;

      public var paparawad:Animations = null;

      public var logi:Boolean = false;

      protected var kacezy:BitmapData = null;

      protected var firevowad:Dictionary = null;

      public var kukigim:int = 200;

      public var vypo:int = 200;

      public var size_:int = 100;

      public var kanifivi:int = -1;

      public var senajawec:int = 0;

      public var bizysuhy:Vector.<int> = null;

      public var zosig:Vector.<int> = null;

      public var condition_:uint = 0;

      protected var tex1Id_:int = 0;

      protected var tex2Id_:int = 0;

      public var bura:Boolean = false;

      public var objectType_:int;

      private var fytovivov:uint = 1;

      private var lukiri:Number = 1;

      public var siqod:int = 0;

      public var sitecagoz:BitmapData = null;

      public var deko:Hydihu = null;

      public var nojigyroc:int = -1;

      public function setObjectId(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sep = null;
         objectId_=param1;
         if(this.diqatocos!=null)
         {
            _loc2_=this.diqatocos[objectId_%this.diqatocos.length];
            this.texture_=_loc2_.texture_;
            this.mask_=_loc2_.mask_;
            this.bisyfewyt=_loc2_.bisyfewyt;
         }
         return;
      }

      public function heceve(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Sep = null;
         var _loc2_:Sep = ObjectLibrary.fyri[this.objectType_];
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
         this.bisyfewyt=_loc3_.bisyfewyt;
         if(this.effect_!=null)
         {
            map_.removeObj(this.effect_.objectId_);
            this.effect_=null;
         }
         if(_loc3_.pyzusod!=null)
         {
            this.effect_=Miwimemo.wumupij(_loc3_.pyzusod,this);
            if(map_!=null)
            {
               map_.addObj(this.effect_,x_,y_);
            }
         }
         return;
      }

      public function setTex1(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.tex1Id_)
         {
            return;
         }
         this.tex1Id_=param1;
         this.firevowad=new Dictionary();
         this.kacezy=null;
         return;
      }

      public function setTex2(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.tex2Id_)
         {
            return;
         }
         this.tex2Id_=param1;
         this.firevowad=new Dictionary();
         this.kacezy=null;
         return;
      }

      public function nary(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Kadido.play(this.props_.logodeky[param1]);
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
         if(this.kacezy!=null)
         {
            this.kacezy.dispose();
            this.kacezy=null;
         }
         if(this.firevowad!=null)
         {
            for each (_loc1_ in this.firevowad)
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
            this.firevowad=null;
         }
         if(this.gikasy!=null)
         {
            this.gikasy.dispose();
            this.gikasy=null;
         }
         this.bizysuhy=null;
         this.zosig=null;
         if(this.mazivyvab!=null)
         {
            this.mazivyvab.dispose();
            this.mazivyvab=null;
         }
         this.sugal=null;
         this.roneret=null;
         this.bitmapFill_=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.vS_=null;
         this.gocabe=null;
         this.puval=null;
         this.huqef=null;
         this.hic=null;
         this.sojip=null;
         this.sip=null;
         if(this.gudisy!=null)
         {
            this.gudisy.commands=null;
            this.gudisy.data=null;
            this.gudisy=null;
         }
         return;
      }

      public function mubekos() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.miryb)==0);
      }

      public function hicypucuf() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.haruvod)==0);
      }

      public function fyj() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.guc)==0);
      }

      public function big() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.wed)==0);
      }

      public function myp() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.bidufiva)==0);
      }

      public function fyno() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.kaquqeb)==0);
      }

      public function isBlind() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.mutuvyb)==0);
      }

      public function isDrunk() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.wiq)==0);
      }

      public function zawyjen() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.paguvohy)==0);
      }

      public function bovakazir() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.lafuluf)==0);
      }

      public function qetyz() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.bazalidos)==0);
      }

      public function vuja() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.fofaruqi)==0);
      }

      public function nowa() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.lebofyhy)==0);
      }

      public function dori() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.sinos)==0);
      }

      public function nomico() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.zuwuqo)==0);
      }

      public function depywipi() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.kohiwet)==0);
      }

      public function dylybun() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.zobujuq)==0);
      }

      public function ricideg() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.fuwuby)==0);
      }

      public function isPaused() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.futupuw)==0);
      }

      public function rokumyral() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.cumyku)==0);
      }

      public function zonocor() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.socyv)==0);
      }

      public function koqajuvev() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.hiciwe)==0);
      }

      public function ruqe() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.fev)==0);
      }

      public function dobywem() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.vyrugi)==0);
      }

      public function wulic(param1:int=20) : Boolean {
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
         return this.name_==null||this.name_==""?ObjectLibrary.kipanudad[this.objectType_]:this.name_;
      }

      public function getColor() : uint {
         return BitmapUtil.jemirus(this.texture_);
      }

      public function folohip() : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:uint = this.fytovivov;
         this.fytovivov=(this.fytovivov+1)%128;
         return _loc1_;
      }

      public function kam(param1:Rimukiz) : Number {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Number = param1.x_-x_;
         var _loc3_:Number = param1.y_-y_;
         return Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
      }

      public function ciweqotas(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.dijejoqyb=true;
         }
         else
         {
            this.dijejoqyb=false;
            this.misusibu=false;
         }
         return;
      }

      public function bubot(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1)
         {
            this.lizoq=true;
         }
         else
         {
            this.lizoq=false;
            this.negawefe=false;
         }
         return;
      }

      protected var quwezape:int = 0;

      protected var hyruly:int = -1;

      protected var joqyf:Point;

      protected var dakejo:Point;

      protected var moveVec_:Vector3D;

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         map_=param1;
         this.joqyf.x=this.dakejo.x=param2;
         this.joqyf.y=this.dakejo.y=param3;
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         if((this.props_.static_)&&!(mizuky==null))
         {
            if(mizuky.obj_==this)
            {
               mizuky.obj_=null;
            }
            mizuky=null;
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
            if(mizuky!=null)
            {
               mizuky.obj_=null;
            }
            _loc3_.obj_=this;
         }
         mizuky=_loc3_;
         if(this.gikasy!=null)
         {
            this.gikasy.setPosition(x_,y_,0,this.props_.rotation_);
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
            if(this.hyruly<map_.gs_.gsc_.lastTickId_)
            {
               this.moveVec_.x=0.0;
               this.moveVec_.y=0.0;
               this.moveTo(this.dakejo.x,this.dakejo.y);
            }
            else
            {
               _loc4_=param1-this.quwezape;
               _loc5_=this.joqyf.x+_loc4_*this.moveVec_.x;
               _loc6_=this.joqyf.y+_loc4_*this.moveVec_.y;
               this.moveTo(_loc5_,_loc6_);
               _loc3_=true;
            }
         }
         if(this.props_.fykuzomic!=null)
         {
            if(!_loc3_)
            {
               z_=this.props_.z_;
               this.flying_=this.props_.flying_;
            }
            else
            {
               z_=this.props_.fykuzomic.z_;
               this.flying_=this.props_.fykuzomic.flying_;
            }
         }
         return true;
      }

      public function zebojuzof(param1:Number, param2:Number, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.moveTo(param1,param2);
         this.quwezape=param3;
         this.dakejo.x=param1;
         this.dakejo.y=param2;
         this.joqyf.x=param1;
         this.joqyf.y=param2;
         this.moveVec_.x=0;
         this.moveVec_.y=0;
         return;
      }

      public function kevenyruv(param1:Number, param2:Number, param3:int, param4:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(this.hyruly<map_.gs_.gsc_.lastTickId_)
         {
            this.moveTo(this.dakejo.x,this.dakejo.y);
         }
         this.quwezape=map_.gs_.lastUpdate_;
         this.dakejo.x=param1;
         this.dakejo.y=param2;
         this.joqyf.x=x_;
         this.joqyf.y=y_;
         this.moveVec_.x=(this.dakejo.x-this.joqyf.x)/param3;
         this.moveVec_.y=(this.dakejo.y-this.joqyf.y)/param3;
         this.hyruly=param4;
         return;
      }

      public function damage(param1:int, param2:int, param3:Vector.<uint>, param4:Boolean, param5:Projectile) : void {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc7_:* = 0;
         var _loc8_:uint = 0;
         var _loc9_:ConditionEffect = null;
         var _loc10_:Fozinomu = null;
         var _loc11_:String = null;
         var _loc12_:* = false;
         if(param4)
         {
            this.logi=true;
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
                     case ConditionEffect.loqe:
                        break;
                     case ConditionEffect.dele:
                     case ConditionEffect.pusosu:
                     case ConditionEffect.pokuko:
                     case ConditionEffect.tikofut:
                     case ConditionEffect.wujeto:
                     case ConditionEffect.humuru:
                     case ConditionEffect.bewa:
                     case ConditionEffect.nokicitoj:
                     case ConditionEffect.kimejek:
                     case ConditionEffect.jeke:
                     case ConditionEffect.den:
                     case ConditionEffect.laki:
                     case ConditionEffect.sikucahid:
                     case ConditionEffect.cyl:
                     case ConditionEffect.dakazev:
                     case ConditionEffect.vybamaje:
                     case ConditionEffect.zuf:
                     case ConditionEffect.pup:
                        _loc9_=ConditionEffect.effects_[_loc8_];
                        break;
                     case ConditionEffect.wero:
                        if(this.bovakazir())
                        {
                           _loc10_=new Fozinomu(this,16711680,3000);
                           _loc10_.setStringBuilder(new Kybidu().setParams(Vibemod.gofiwysyj));
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
                        _loc11_=_loc9_.damalycyw;
                        this.jigibubi(_loc7_,_loc11_);
                        _loc7_=_loc7_+500;
                     }
                  }
               }
            }
         }
         var _loc6_:Vector.<uint> = Sur.kobuluqoz(this.objectType_,this.texture_,this.props_.zamybycu,this.props_.kecegahu);
         if(this.logi)
         {
            map_.addObj(new ExplosionEffect(_loc6_,this.size_,30),x_,y_);
         }
         else
         {
            if(param5!=null)
            {
               map_.addObj(new HitEffect(_loc6_,this.size_,10,param5.angle_,param5.ratucobu.speed_),x_,y_);
            }
            else
            {
               map_.addObj(new ExplosionEffect(_loc6_,this.size_,10),x_,y_);
            }
         }
         if(param2>0)
         {
            _loc12_=(this.dobywem())||!(param5==null)&&(param5.ratucobu.mecejy);
            this.tedewagaha(param2,_loc12_);
         }
         return;
      }

      public function jigibubi(param1:int, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Fozinomu = new Fozinomu(this,16711680,3000,param1);
         _loc3_.setStringBuilder(new Kybidu().setParams(param2));
         map_.mapOverlay_.addStatusText(_loc3_);
         return;
      }

      public function tedewagaha(param1:int, param2:Boolean) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:String = "-"+param1;
         var _loc4_:Fozinomu = new Fozinomu(this,param2?9437439:16711680,1000);
         _loc4_.setStringBuilder(new Vofezuzy(_loc3_));
         map_.mapOverlay_.addStatusText(_loc4_);
         return;
      }

      protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Tunyhazo = new Vofezuzy(this.name_);
         var _loc2_:Pyzykyj = Duq.pamazo().getInstance(Pyzykyj);
         return _loc2_.make(_loc1_,16,16777215,true,begatywy,true);
      }

      public function tevacuzil(param1:Vector.<IGraphicsData>, param2:Qawosiwi) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(this.mazivyvab==null)
         {
            this.mazivyvab=this.makeNameBitmapData();
            this.sugal=new GraphicsBitmapFill(null,new Matrix(),false,false);
            this.roneret=new GraphicsPath(Dyrejocu.capuz,new Vector.<Number>());
         }
         var _loc3_:int = this.mazivyvab.width/2+1;
         var _loc4_:* = 30;
         var _loc5_:Vector.<Number> = this.roneret.data;
         _loc5_.length=0;
         _loc5_.push(witog[0]-_loc3_,witog[1],witog[0]+_loc3_,witog[1],witog[0]+_loc3_,witog[1]+_loc4_,witog[0]-_loc3_,witog[1]+_loc4_);
         this.sugal.bitmapData=this.mazivyvab;
         var _loc6_:Matrix = this.sugal.matrix;
         _loc6_.identity();
         _loc6_.translate(_loc5_[0],_loc5_[1]);
         param1.push(this.sugal);
         param1.push(this.roneret);
         param1.push(Dyrejocu.END_FILL);
         return;
      }

      protected function fek() : BitmapData {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.sitecagoz==null)
         {
            this.sitecagoz=AssetLibrary.tem("lofiChar8x8",int(Math.random()*239));
         }
         return this.sitecagoz;
      }

      protected function getTexture(param1:Qawosiwi, param2:int) : BitmapData {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:Kebinuhi = null;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:* = 0;
         var _loc12_:BitmapData = null;
         var _loc3_:BitmapData = this.texture_;
         var _loc4_:int = this.size_;
         var _loc5_:BitmapData = null;
         if(this.bisyfewyt!=null)
         {
            _loc6_=0;
            _loc7_=Jiqefatok.radev;
            if(param2<this.fofes+wyleky)
            {
               if(!this.props_.zyvazufop)
               {
                  this.susov=this.poviz;
               }
               _loc6_=(param2-this.fofes)%wyleky/wyleky;
               _loc7_=Jiqefatok.fomosypy;
            }
            else
            {
               if(!(this.moveVec_.x==0)||!(this.moveVec_.y==0))
               {
                  _loc9_=0.5/this.moveVec_.length;
                  _loc9_=_loc9_+(400-_loc9_%400);
                  if(this.moveVec_.x>pehagoqi||this.moveVec_.x<merowicun||this.moveVec_.y>pehagoqi||this.moveVec_.y<merowicun)
                  {
                     this.susov=Math.atan2(this.moveVec_.y,this.moveVec_.x);
                     _loc7_=Jiqefatok.dywala;
                  }
                  else
                  {
                     _loc7_=Jiqefatok.radev;
                  }
                  _loc6_=param2%_loc9_/_loc9_;
               }
            }
            _loc8_=this.bisyfewyt.imageFromFacing(this.susov,param1,_loc7_,_loc6_);
            _loc3_=_loc8_.image_;
            _loc5_=_loc8_.mask_;
         }
         else
         {
            if(this.paparawad!=null)
            {
               _loc10_=this.paparawad.getTexture(param2);
               if(_loc10_!=null)
               {
                  _loc3_=_loc10_;
               }
            }
         }
         if((this.props_.cifydas)||!(this.gikasy==null))
         {
            return _loc3_;
         }
         if(param1.syce)
         {
            _loc11_=_loc3_==null?8:_loc3_.width;
            _loc3_=this.fek();
            _loc5_=null;
            _loc4_=this.size_*Math.min(1.5,_loc11_/_loc3_.width);
         }
         if(this.rokumyral())
         {
            _loc3_=Zurawi.hohizukip(_loc3_,mopiby);
         }
         if(this.deko!=null)
         {
            if(!this.deko.zezip(param2))
            {
               _loc3_=this.deko.apply(_loc3_,param2);
            }
            else
            {
               this.deko=null;
            }
         }
         if(this.tex1Id_==0&&this.tex2Id_==0)
         {
            _loc3_=TextureRedrawer.redraw(_loc3_,_loc4_,false,0,0);
         }
         else
         {
            _loc12_=null;
            if(this.firevowad==null)
            {
               this.firevowad=new Dictionary();
            }
            else
            {
               _loc12_=this.firevowad[_loc3_];
            }
            if(_loc12_==null)
            {
               _loc12_=TextureRedrawer.resize(_loc3_,_loc5_,_loc4_,false,this.tex1Id_,this.tex2Id_);
               _loc12_=TextureRedrawer.outlineGlow(_loc12_,0,0);
               this.firevowad[_loc3_]=_loc12_;
            }
            _loc3_=_loc12_;
         }
         return _loc3_;
      }

      public function pizadaki(param1:String, param2:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.texture_=AssetLibrary.tem(param1,param2);
         this.lukiri=this.texture_.height/8;
         return;
      }

      public function getPortrait() : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:BitmapData = null;
         var _loc2_:* = 0;
         if(this.kacezy==null)
         {
            _loc1_=this.props_.kacezy!=null?this.props_.kacezy.getTexture():this.texture_;
            _loc2_=4/_loc1_.width*100;
            this.kacezy=TextureRedrawer.resize(_loc1_,this.mask_,_loc2_,true,this.tex1Id_,this.tex2Id_);
            this.kacezy=TextureRedrawer.outlineGlow(this.kacezy,0,0);
         }
         return this.kacezy;
      }

      public function setAttack(param1:int, param2:Number) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.poviz=param2;
         this.fofes=getTimer();
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var gocabe:Vector.<Number>;

      protected var puval:Matrix;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:BitmapData = null;
         var _loc4_:BitmapData = this.getTexture(param2,param3);
         if(this.props_.cifydas)
         {
            if(mizuky.faces_.length==0)
            {
               return;
            }
            this.path_.data=mizuky.faces_[0].face_.vout_;
            this.bitmapFill_.bitmapData=_loc4_;
            mizuky.baseTexMatrix_.calculateTextureMatrix(this.path_.data);
            this.bitmapFill_.matrix=mizuky.baseTexMatrix_.tToS_;
            param1.push(this.bitmapFill_);
            param1.push(this.path_);
            param1.push(Dyrejocu.END_FILL);
            return;
         }
         if(this.gikasy!=null)
         {
            this.gikasy.draw(param1,param2,this.props_.color_,_loc4_);
            return;
         }
         var _loc5_:int = _loc4_.width;
         var _loc6_:int = _loc4_.height;
         var _loc7_:int = mizuky.sink_+this.siqod;
         if(_loc7_>0&&((this.flying_)||!(mizuky.obj_==null)&&(mizuky.obj_.props_.protectFromSink_)))
         {
            _loc7_=0;
         }
         this.vS_.length=0;
         this.vS_.push(witog[3]-_loc5_/2,witog[4]-_loc6_+_loc7_,witog[3]+_loc5_/2,witog[4]-_loc6_+_loc7_,witog[3]+_loc5_/2,witog[4],witog[3]-_loc5_/2,witog[4]);
         this.path_.data=this.vS_;
         if((this.dijejoqyb)&&!this.misusibu)
         {
            _loc8_=_loc4_.clone();
            _loc8_.colorTransform(_loc8_.rect,new ColorTransform(-1,-1,-1,1,255,255,255,0));
            _loc8_=Zurawi.hohizukip(_loc8_,new ColorMatrixFilter(MoreColorUtil.fuguwo));
            _loc4_=_loc8_;
            this.misusibu=true;
         }
         if((this.lizoq)&&!this.negawefe)
         {
            _loc8_=_loc4_.clone();
            _loc8_.colorTransform(_loc8_.rect,new ColorTransform(1,1,1,1,255,255,255,0));
            _loc4_=_loc8_;
            this.negawefe=true;
         }
         this.bitmapFill_.bitmapData=_loc4_;
         this.puval.identity();
         this.puval.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.puval;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Dyrejocu.END_FILL);
         if((!this.isPaused())&&(this.condition_)&&!Parameters.womo)
         {
            this.poliniru(param1,param2,param3);
         }
         if((this.props_.lysyvanec)&&!(this.name_==null)&&!(this.name_.length==0))
         {
            this.tevacuzil(param1,param2);
         }
         return;
      }

      private var huqef:Vector.<BitmapData> = null;

      private var hic:Vector.<GraphicsBitmapFill> = null;

      private var sojip:Vector.<GraphicsPath> = null;

      public function poliniru(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc9_:BitmapData = null;
         var _loc10_:GraphicsBitmapFill = null;
         var _loc11_:GraphicsPath = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Matrix = null;
         if(this.huqef==null)
         {
            this.huqef=new Vector.<BitmapData>();
            this.hic=new Vector.<GraphicsBitmapFill>();
            this.sojip=new Vector.<GraphicsPath>();
         }
         this.huqef.length=0;
         var _loc4_:int = param3/500;
         ConditionEffect.sypywyhuh(this.condition_,this.huqef,_loc4_);
         var _loc5_:Number = witog[3];
         var _loc6_:Number = this.vS_[1];
         var _loc7_:int = this.huqef.length;
         var _loc8_:* = 0;
         while(_loc8_<_loc7_)
         {
            _loc9_=this.huqef[_loc8_];
            if(_loc8_>=this.hic.length)
            {
               this.hic.push(new GraphicsBitmapFill(null,new Matrix(),false,false));
               this.sojip.push(new GraphicsPath(Dyrejocu.capuz,new Vector.<Number>()));
            }
            _loc10_=this.hic[_loc8_];
            _loc11_=this.sojip[_loc8_];
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
            param1.push(Dyrejocu.END_FILL);
            _loc8_++;
         }
         return;
      }

      protected var sip:GraphicsGradientFill = null;

      protected var gudisy:GraphicsPath = null;

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(this.sip==null)
         {
            this.sip=new GraphicsGradientFill(GradientType.RADIAL,[this.props_.vucylunar,this.props_.vucylunar],[0.5,0],null,new Matrix());
            this.gudisy=new GraphicsPath(Dyrejocu.capuz,new Vector.<Number>());
         }
         var _loc4_:Number = this.size_/100*this.props_.nyn/100*this.lukiri;
         var _loc5_:Number = 30*_loc4_;
         var _loc6_:Number = 15*_loc4_;
         this.sip.matrix.createGradientBox(_loc5_*2,_loc6_*2,0,witog[0]-_loc5_,witog[1]-_loc6_);
         param1.push(this.sip);
         this.gudisy.data.length=0;
         this.gudisy.data.push(witog[0]-_loc5_,witog[1]-_loc6_,witog[0]+_loc5_,witog[1]-_loc6_,witog[0]+_loc5_,witog[1]+_loc6_,witog[0]-_loc5_,witog[1]+_loc6_);
         param1.push(this.gudisy);
         param1.push(Dyrejocu.END_FILL);
         return;
      }

      public function toString() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return "["+getQualifiedClassName(this)+" id: "+objectId_+" type: "+ObjectLibrary.kipanudad[this.objectType_]+" pos: "+x_+", "+y_+"]";
      }
   }

}