package com.company.assembleegameclient.objects
{
[CLASS860]   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.util.ConditionEffect;
   import com.company.util.MoreColorUtil;
   import flash.display.BitmapData;
   import flash.display.GraphicsBitmapFill;
   import flash.display.GraphicsPath;
   import mejowozy.Qohutuvob;
   import com.company.assembleegameclient.util.Huroj;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.engine3d.Daburap;
   import mejowozy.Ryf;
   import sakopame.Animations;
   import flash.utils.Dictionary;
   import gawulu.Cuqicyh;
   import com.company.util.BitmapUtil;
   import jyz.Tyji;
   import flash.geom.Point;
   import flash.geom.Vector3D;
   import com.company.assembleegameclient.map.Map;
   import com.company.assembleegameclient.map.Square;
   import wiwojaz.Hymefit;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.util.Qafa;
   import mejowozy.ExplosionEffect;
   import mejowozy.HitEffect;
   import totuhare.Javo;
   import totuhare.Qebar;
   import jutesesel.Qibigagal;
   import pudev.Sinobyf;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.util.Nosupygu;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.util.Dyzonoto;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.utils.getTimer;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.display.GraphicsGradientFill;
   import flash.display.GradientType;
   import flash.utils.getQualifiedClassName;
   import com.company.assembleegameclient.engine3d.Pyhotuni;
   import sakopame.Kykike;
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
         this.props_=ObjectLibrary.gebyjyri;
         this.kuca=new Point();
         this.zogosal=new Point();
         this.moveVec_=new Vector3D();
         this.bitmapFill_=new GraphicsBitmapFill(null,null,false,false);
         this.path_=new GraphicsPath(Nosupygu.quk,null);
         this.vS_=new Vector.<Number>();
         this.megew=new Vector.<Number>();
         this.wyrerevo=new Matrix();
         super();
         if(param1==null)
         {
            return;
         }
         this.objectType_=int(param1.@type);
         this.props_=ObjectLibrary.teqot[this.objectType_];
         tovemamic=this.props_.vitaqiwos>0;
         var _loc2_:Qeh = ObjectLibrary.kusuj[this.objectType_];
         this.texture_=_loc2_.texture_;
         this.mask_=_loc2_.mask_;
         this.haci=_loc2_.haci;
         this.duj=_loc2_.duj;
         if(_loc2_.jepinuroh!=null)
         {
            this.effect_=Ryf.mipuzepe(_loc2_.jepinuroh,this);
         }
         if(this.texture_!=null)
         {
            this.folenew=this.texture_.height/8;
         }
         if(param1.hasOwnProperty("Model"))
         {
            this.ryloby=Pyhotuni.timaf(String(param1.Model));
         }
         var _loc3_:Kykike = ObjectLibrary.gacyb[this.objectType_];
         if(_loc3_!=null)
         {
            this.qugabyjev=new Animations(_loc3_);
         }
         z_=this.props_.z_;
         this.flying_=this.props_.flying_;
         if(param1.hasOwnProperty("MaxHitPoints"))
         {
            this.qyhefanyk=this.liq=int(param1.MaxHitPoints);
         }
         if(param1.hasOwnProperty("Defense"))
         {
            this.gas=int(param1.Defense);
         }
         if(param1.hasOwnProperty("SlotTypes"))
         {
            this.panel=ConversionUtil.dapani(param1.SlotTypes);
            this.wasidu=new Vector.<int>(this.panel.length);
            _loc4_=0;
            while(_loc4_<this.wasidu.length)
            {
               this.wasidu[_loc4_]=-1;
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
         this.props_.kanywynid();
         return;
      }

      protected static const sumyret:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.calysymes);

      protected static const subaquzi:Matrix = new Matrix();

      private static const hevocedih:Number = 1.0E-5;

      private static const kobecof:Number = -hevocedih;

      public static function rodudawy(param1:int, param2:int, param3:Boolean, param4:int) : int {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:int = param2;
         if((param3)||!((param4&ConditionEffect.qoqusos)==0))
         {
            _loc5_=0;
         }
         else
         {
            if((param4&ConditionEffect.korekaq)!=0)
            {
               _loc5_=_loc5_*2;
            }
         }
         var _loc6_:int = param1*3/20;
         var _loc7_:int = Math.max(_loc6_,param1-_loc5_);
         if((param4&ConditionEffect.zoqeviz)!=0)
         {
            _loc7_=0;
         }
         return _loc7_;
      }

      public static const nygit:int = 300;

      public var quferuca:BitmapData = null;

      private var disorub:GraphicsBitmapFill = null;

      private var mok:GraphicsPath = null;

      public var vyhiviha:Qohutuvob;

      private var gavuvo:Boolean;

      private var faqilyhu:Boolean = false;

      private var giwufuq:Boolean;

      private var kerilym:Boolean = false;

      public var props_:ObjectProperties;

      public var name_:String;

      public var radius_:Number = 0.5;

      public var latu:Number = 0;

      public var flying_:Boolean = false;

      public var himiz:Number = 0;

      public var vof:int = 0;

      public var haci:Huroj = null;

      public var texture_:BitmapData = null;

      public var mask_:BitmapData = null;

      public var duj:Vector.<Qeh> = null;

      public var ryloby:Daburap = null;

      public var effect_:Ryf = null;

      public var qugabyjev:Animations = null;

      public var cesulo:Boolean = false;

      protected var sedi:BitmapData = null;

      protected var wikesot:Dictionary = null;

      public var liq:int = 200;

      public var qyhefanyk:int = 200;

      public var size_:int = 100;

      public var jepe:int = -1;

      public var gas:int = 0;

      public var panel:Vector.<int> = null;

      public var wasidu:Vector.<int> = null;

      public var condition_:uint = 0;

      protected var tex1Id_:int = 0;

      protected var tex2Id_:int = 0;

      public var wywag:Boolean = false;

      public var objectType_:int;

      private var jywehu:uint = 1;

      private var folenew:Number = 1;

      public var wytavaf:int = 0;

      public var zyvasik:BitmapData = null;

      public var sawinig:Qegaqon = null;

      public var jagodo:int = -1;

      public function setObjectId(param1:int) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Qeh = null;
         objectId_=param1;
         if(this.duj!=null)
         {
            _loc2_=this.duj[objectId_%this.duj.length];
            this.texture_=_loc2_.texture_;
            this.mask_=_loc2_.mask_;
            this.haci=_loc2_.haci;
         }
         return;
      }

      public function qenabal(param1:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Qeh = null;
         var _loc2_:Qeh = ObjectLibrary.kusuj[this.objectType_];
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
         this.haci=_loc3_.haci;
         if(this.effect_!=null)
         {
            map_.removeObj(this.effect_.objectId_);
            this.effect_=null;
         }
         if(_loc3_.jepinuroh!=null)
         {
            this.effect_=Ryf.mipuzepe(_loc3_.jepinuroh,this);
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
         this.wikesot=new Dictionary();
         this.sedi=null;
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
         this.wikesot=new Dictionary();
         this.sedi=null;
         return;
      }

      public function vuhubi(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Cuqicyh.play(this.props_.penusir[param1]);
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
         if(this.sedi!=null)
         {
            this.sedi.dispose();
            this.sedi=null;
         }
         if(this.wikesot!=null)
         {
            for each (_loc1_ in this.wikesot)
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
            this.wikesot=null;
         }
         if(this.ryloby!=null)
         {
            this.ryloby.dispose();
            this.ryloby=null;
         }
         this.panel=null;
         this.wasidu=null;
         if(this.quferuca!=null)
         {
            this.quferuca.dispose();
            this.quferuca=null;
         }
         this.disorub=null;
         this.mok=null;
         this.bitmapFill_=null;
         this.path_.commands=null;
         this.path_.data=null;
         this.vS_=null;
         this.megew=null;
         this.wyrerevo=null;
         this.rakywejag=null;
         this.dihag=null;
         this.nanuva=null;
         this.gunuhok=null;
         if(this.ruka!=null)
         {
            this.ruka.commands=null;
            this.ruka.data=null;
            this.ruka=null;
         }
         return;
      }

      public function bujiqir() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.syc)==0);
      }

      public function ceqiheku() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.qegowi)==0);
      }

      public function coceket() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.motajug)==0);
      }

      public function kytidyhu() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.pecapo)==0);
      }

      public function kubylud() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.byduh)==0);
      }

      public function direzat() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.wim)==0);
      }

      public function isBlind() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.vulyp)==0);
      }

      public function isDrunk() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.binitide)==0);
      }

      public function rigo() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.vivoves)==0);
      }

      public function hysyq() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.cidoviwud)==0);
      }

      public function qyzol() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.piwyc)==0);
      }

      public function dyc() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.jojafy)==0);
      }

      public function savepeneg() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.vynagy)==0);
      }

      public function ryhozaq() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.hureka)==0);
      }

      public function qep() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.zerycemu)==0);
      }

      public function dehozawe() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !((this.condition_&ConditionEffect.vakofus)==0);
      }

      public function nul() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.ked)==0);
      }

      public function qiweda() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.maka)==0);
      }

      public function isPaused() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.kuhelywa)==0);
      }

      public function pasyli() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.fumav)==0);
      }

      public function dopo() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.hatowoz)==0);
      }

      public function pukejo() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.zoqeviz)==0);
      }

      public function vovariq() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.korekaq)==0);
      }

      public function toteq() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((this.condition_&ConditionEffect.qoqusos)==0);
      }

      public function qiguhot(param1:int=20) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
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
         return this.name_==null||this.name_==""?ObjectLibrary.mafiwape[this.objectType_]:this.name_;
      }

      public function getColor() : uint {
         return BitmapUtil.samav(this.texture_);
      }

      public function lucyk() : uint {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:uint = this.jywehu;
         this.jywehu=(this.jywehu+1)%128;
         return _loc1_;
      }

      public function qobuqigyf(param1:Tyji) : Number {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = param1.x_-x_;
         var _loc3_:Number = param1.y_-y_;
         return Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
      }

      public function kibyno(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.gavuvo=true;
         }
         else
         {
            this.gavuvo=false;
            this.faqilyhu=false;
         }
         return;
      }

      public function gymi(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            this.giwufuq=true;
         }
         else
         {
            this.giwufuq=false;
            this.kerilym=false;
         }
         return;
      }

      protected var fosowi:int = 0;

      protected var puvofozol:int = -1;

      protected var kuca:Point;

      protected var zogosal:Point;

      protected var moveVec_:Vector3D;

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         map_=param1;
         this.kuca.x=this.zogosal.x=param2;
         this.kuca.y=this.zogosal.y=param3;
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
         if((this.props_.static_)&&!(togofijo==null))
         {
            if(togofijo.obj_==this)
            {
               togofijo.obj_=null;
            }
            togofijo=null;
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
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(_loc3_==null)
         {
            return false;
         }
         x_=param1;
         y_=param2;
         if(this.props_.static_)
         {
            if(togofijo!=null)
            {
               togofijo.obj_=null;
            }
            _loc3_.obj_=this;
         }
         togofijo=_loc3_;
         if(this.ryloby!=null)
         {
            this.ryloby.setPosition(x_,y_,0,this.props_.rotation_);
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
            if(this.puvofozol<map_.gs_.gsc_.lastTickId_)
            {
               this.moveVec_.x=0.0;
               this.moveVec_.y=0.0;
               this.moveTo(this.zogosal.x,this.zogosal.y);
            }
            else
            {
               _loc4_=param1-this.fosowi;
               _loc5_=this.kuca.x+_loc4_*this.moveVec_.x;
               _loc6_=this.kuca.y+_loc4_*this.moveVec_.y;
               this.moveTo(_loc5_,_loc6_);
               _loc3_=true;
            }
         }
         if(this.props_.cazybu!=null)
         {
            if(!_loc3_)
            {
               z_=this.props_.z_;
               this.flying_=this.props_.flying_;
            }
            else
            {
               z_=this.props_.cazybu.z_;
               this.flying_=this.props_.cazybu.flying_;
            }
         }
         return true;
      }

      public function vyj(param1:Number, param2:Number, param3:int) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.moveTo(param1,param2);
         this.fosowi=param3;
         this.zogosal.x=param1;
         this.zogosal.y=param2;
         this.kuca.x=param1;
         this.kuca.y=param2;
         this.moveVec_.x=0;
         this.moveVec_.y=0;
         return;
      }

      public function dave(param1:Number, param2:Number, param3:int, param4:int) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         if(this.puvofozol<map_.gs_.gsc_.lastTickId_)
         {
            this.moveTo(this.zogosal.x,this.zogosal.y);
         }
         this.fosowi=map_.gs_.lastUpdate_;
         this.zogosal.x=param1;
         this.zogosal.y=param2;
         this.kuca.x=x_;
         this.kuca.y=y_;
         this.moveVec_.x=(this.zogosal.x-this.kuca.x)/param3;
         this.moveVec_.y=(this.zogosal.y-this.kuca.y)/param3;
         this.puvofozol=param4;
         return;
      }

      public function damage(param1:int, param2:int, param3:Vector.<uint>, param4:Boolean, param5:Projectile) : void {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc7_:* = 0;
         var _loc8_:uint = 0;
         var _loc9_:ConditionEffect = null;
         var _loc10_:Hymefit = null;
         var _loc11_:String = null;
         var _loc12_:* = false;
         if(param4)
         {
            this.cesulo=true;
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
                     case ConditionEffect.nucy:
                        break;
                     case ConditionEffect.nic:
                     case ConditionEffect.pugez:
                     case ConditionEffect.reb:
                     case ConditionEffect.verowylaf:
                     case ConditionEffect.redopov:
                     case ConditionEffect.qaguke:
                     case ConditionEffect.qolew:
                     case ConditionEffect.vefygokyk:
                     case ConditionEffect.zeqyga:
                     case ConditionEffect.niry:
                     case ConditionEffect.zilydo:
                     case ConditionEffect.redebaty:
                     case ConditionEffect.qehitat:
                     case ConditionEffect.zisij:
                     case ConditionEffect.lyjitipi:
                     case ConditionEffect.laki:
                     case ConditionEffect.cyfiqo:
                     case ConditionEffect.ler:
                        _loc9_=ConditionEffect.effects_[_loc8_];
                        break;
                     case ConditionEffect.qobynoj:
                        if(this.hysyq())
                        {
                           _loc10_=new Hymefit(this,16711680,3000);
                           _loc10_.setStringBuilder(new Zufi().setParams(Kefyfa.kivufypo));
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
                        _loc11_=_loc9_.hobosep;
                        this.lotiq(_loc7_,_loc11_);
                        _loc7_=_loc7_+500;
                     }
                  }
               }
            }
         }
         var _loc6_:Vector.<uint> = Qafa.hidytysoly(this.objectType_,this.texture_,this.props_.vazeniki,this.props_.gapi);
         if(this.cesulo)
         {
            map_.addObj(new ExplosionEffect(_loc6_,this.size_,30),x_,y_);
         }
         else
         {
            if(param5!=null)
            {
               map_.addObj(new HitEffect(_loc6_,this.size_,10,param5.angle_,param5.gar.speed_),x_,y_);
            }
            else
            {
               map_.addObj(new ExplosionEffect(_loc6_,this.size_,10),x_,y_);
            }
         }
         if(param2>0)
         {
            _loc12_=(this.toteq())||!(param5==null)&&(param5.gar.qeha);
            this.lukewafy(param2,_loc12_);
         }
         return;
      }

      public function lotiq(param1:int, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Hymefit = new Hymefit(this,16711680,3000,param1);
         _loc3_.setStringBuilder(new Zufi().setParams(param2));
         map_.mapOverlay_.addStatusText(_loc3_);
         return;
      }

      public function lukewafy(param1:int, param2:Boolean) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:String = "-"+param1;
         var _loc4_:Hymefit = new Hymefit(this,param2?9437439:16711680,1000);
         _loc4_.setStringBuilder(new Javo(_loc3_));
         map_.mapOverlay_.addStatusText(_loc4_);
         return;
      }

      protected function makeNameBitmapData() : BitmapData {
         var _loc1_:Qebar = new Javo(this.name_);
         var _loc2_:Sinobyf = Qibigagal.husuha().getInstance(Sinobyf);
         return _loc2_.make(_loc1_,16,16777215,true,subaquzi,true);
      }

      public function daluzacof(param1:Vector.<IGraphicsData>, param2:Fot) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(this.quferuca==null)
         {
            this.quferuca=this.makeNameBitmapData();
            this.disorub=new GraphicsBitmapFill(null,new Matrix(),false,false);
            this.mok=new GraphicsPath(Nosupygu.quk,new Vector.<Number>());
         }
         var _loc3_:int = this.quferuca.width/2+1;
         var _loc4_:* = 30;
         var _loc5_:Vector.<Number> = this.mok.data;
         _loc5_.length=0;
         _loc5_.push(meluhykag[0]-_loc3_,meluhykag[1],meluhykag[0]+_loc3_,meluhykag[1],meluhykag[0]+_loc3_,meluhykag[1]+_loc4_,meluhykag[0]-_loc3_,meluhykag[1]+_loc4_);
         this.disorub.bitmapData=this.quferuca;
         var _loc6_:Matrix = this.disorub.matrix;
         _loc6_.identity();
         _loc6_.translate(_loc5_[0],_loc5_[1]);
         param1.push(this.disorub);
         param1.push(this.mok);
         param1.push(Nosupygu.END_FILL);
         return;
      }

      protected function jiniroj() : BitmapData {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.zyvasik==null)
         {
            this.zyvasik=AssetLibrary.zovy("lofiChar8x8",int(Math.random()*239));
         }
         return this.zyvasik;
      }

      protected function getTexture(param1:Fot, param2:int) : BitmapData {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:Gejugut = null;
         var _loc9_:* = 0;
         var _loc10_:BitmapData = null;
         var _loc11_:* = 0;
         var _loc12_:BitmapData = null;
         var _loc3_:BitmapData = this.texture_;
         var _loc4_:int = this.size_;
         var _loc5_:BitmapData = null;
         if(this.haci!=null)
         {
            _loc6_=0;
            _loc7_=Huroj.wyqel;
            if(param2<this.vof+nygit)
            {
               if(!this.props_.ryn)
               {
                  this.latu=this.himiz;
               }
               _loc6_=(param2-this.vof)%nygit/nygit;
               _loc7_=Huroj.zodol;
            }
            else
            {
               if(!(this.moveVec_.x==0)||!(this.moveVec_.y==0))
               {
                  _loc9_=0.5/this.moveVec_.length;
                  _loc9_=_loc9_+(400-_loc9_%400);
                  if(this.moveVec_.x>hevocedih||this.moveVec_.x<kobecof||this.moveVec_.y>hevocedih||this.moveVec_.y<kobecof)
                  {
                     this.latu=Math.atan2(this.moveVec_.y,this.moveVec_.x);
                     _loc7_=Huroj.rezafi;
                  }
                  else
                  {
                     _loc7_=Huroj.wyqel;
                  }
                  _loc6_=param2%_loc9_/_loc9_;
               }
            }
            _loc8_=this.haci.imageFromFacing(this.latu,param1,_loc7_,_loc6_);
            _loc3_=_loc8_.image_;
            _loc5_=_loc8_.mask_;
         }
         else
         {
            if(this.qugabyjev!=null)
            {
               _loc10_=this.qugabyjev.getTexture(param2);
               if(_loc10_!=null)
               {
                  _loc3_=_loc10_;
               }
            }
         }
         if((this.props_.ludebil)||!(this.ryloby==null))
         {
            return _loc3_;
         }
         if(param1.dicybeco)
         {
            _loc11_=_loc3_==null?8:_loc3_.width;
            _loc3_=this.jiniroj();
            _loc5_=null;
            _loc4_=this.size_*Math.min(1.5,_loc11_/_loc3_.width);
         }
         if(this.pasyli())
         {
            _loc3_=Dyzonoto.naqucovu(_loc3_,sumyret);
         }
         if(this.sawinig!=null)
         {
            if(!this.sawinig.fidapi(param2))
            {
               _loc3_=this.sawinig.apply(_loc3_,param2);
            }
            else
            {
               this.sawinig=null;
            }
         }
         if(this.tex1Id_==0&&this.tex2Id_==0)
         {
            _loc3_=TextureRedrawer.redraw(_loc3_,_loc4_,false,0,0);
         }
         else
         {
            _loc12_=null;
            if(this.wikesot==null)
            {
               this.wikesot=new Dictionary();
            }
            else
            {
               _loc12_=this.wikesot[_loc3_];
            }
            if(_loc12_==null)
            {
               _loc12_=TextureRedrawer.resize(_loc3_,_loc5_,_loc4_,false,this.tex1Id_,this.tex2Id_);
               _loc12_=TextureRedrawer.outlineGlow(_loc12_,0,0);
               this.wikesot[_loc3_]=_loc12_;
            }
            _loc3_=_loc12_;
         }
         return _loc3_;
      }

      public function tekib(param1:String, param2:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.texture_=AssetLibrary.zovy(param1,param2);
         this.folenew=this.texture_.height/8;
         return;
      }

      public function getPortrait() : BitmapData {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:BitmapData = null;
         var _loc2_:* = 0;
         if(this.sedi==null)
         {
            _loc1_=this.props_.sedi!=null?this.props_.sedi.getTexture():this.texture_;
            _loc2_=4/_loc1_.width*100;
            this.sedi=TextureRedrawer.resize(_loc1_,this.mask_,_loc2_,true,this.tex1Id_,this.tex2Id_);
            this.sedi=TextureRedrawer.outlineGlow(this.sedi,0,0);
         }
         return this.sedi;
      }

      public function setAttack(param1:int, param2:Number) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.himiz=param2;
         this.vof=getTimer();
         return;
      }

      protected var bitmapFill_:GraphicsBitmapFill;

      protected var path_:GraphicsPath;

      protected var vS_:Vector.<Number>;

      protected var megew:Vector.<Number>;

      protected var wyrerevo:Matrix;

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:BitmapData = null;
         var _loc4_:BitmapData = this.getTexture(param2,param3);
         if(this.props_.ludebil)
         {
            if(togofijo.faces_.length==0)
            {
               return;
            }
            this.path_.data=togofijo.faces_[0].face_.vout_;
            this.bitmapFill_.bitmapData=_loc4_;
            togofijo.baseTexMatrix_.calculateTextureMatrix(this.path_.data);
            this.bitmapFill_.matrix=togofijo.baseTexMatrix_.tToS_;
            param1.push(this.bitmapFill_);
            param1.push(this.path_);
            param1.push(Nosupygu.END_FILL);
            return;
         }
         if(this.ryloby!=null)
         {
            this.ryloby.draw(param1,param2,this.props_.color_,_loc4_);
            return;
         }
         var _loc5_:int = _loc4_.width;
         var _loc6_:int = _loc4_.height;
         var _loc7_:int = togofijo.sink_+this.wytavaf;
         if(_loc7_>0&&((this.flying_)||!(togofijo.obj_==null)&&(togofijo.obj_.props_.protectFromSink_)))
         {
            _loc7_=0;
         }
         this.vS_.length=0;
         this.vS_.push(meluhykag[3]-_loc5_/2,meluhykag[4]-_loc6_+_loc7_,meluhykag[3]+_loc5_/2,meluhykag[4]-_loc6_+_loc7_,meluhykag[3]+_loc5_/2,meluhykag[4],meluhykag[3]-_loc5_/2,meluhykag[4]);
         this.path_.data=this.vS_;
         if((this.gavuvo)&&!this.faqilyhu)
         {
            _loc8_=_loc4_.clone();
            _loc8_.colorTransform(_loc8_.rect,new ColorTransform(-1,-1,-1,1,255,255,255,0));
            _loc8_=Dyzonoto.naqucovu(_loc8_,new ColorMatrixFilter(MoreColorUtil.calysymes));
            _loc4_=_loc8_;
            this.faqilyhu=true;
         }
         if((this.giwufuq)&&!this.kerilym)
         {
            _loc8_=_loc4_.clone();
            _loc8_.colorTransform(_loc8_.rect,new ColorTransform(1,1,1,1,255,255,255,0));
            _loc4_=_loc8_;
            this.kerilym=true;
         }
         this.bitmapFill_.bitmapData=_loc4_;
         this.wyrerevo.identity();
         this.wyrerevo.translate(this.vS_[0],this.vS_[1]);
         this.bitmapFill_.matrix=this.wyrerevo;
         param1.push(this.bitmapFill_);
         param1.push(this.path_);
         param1.push(Nosupygu.END_FILL);
         if((!this.isPaused())&&(this.condition_)&&!Parameters.pevabak)
         {
            this.mifa(param1,param2,param3);
         }
         if((this.props_.renu)&&!(this.name_==null)&&!(this.name_.length==0))
         {
            this.daluzacof(param1,param2);
         }
         return;
      }

      private var rakywejag:Vector.<BitmapData> = null;

      private var dihag:Vector.<GraphicsBitmapFill> = null;

      private var nanuva:Vector.<GraphicsPath> = null;

      public function mifa(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc9_:BitmapData = null;
         var _loc10_:GraphicsBitmapFill = null;
         var _loc11_:GraphicsPath = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Matrix = null;
         if(this.rakywejag==null)
         {
            this.rakywejag=new Vector.<BitmapData>();
            this.dihag=new Vector.<GraphicsBitmapFill>();
            this.nanuva=new Vector.<GraphicsPath>();
         }
         this.rakywejag.length=0;
         var _loc4_:int = param3/500;
         ConditionEffect.vyho(this.condition_,this.rakywejag,_loc4_);
         var _loc5_:Number = meluhykag[3];
         var _loc6_:Number = this.vS_[1];
         var _loc7_:int = this.rakywejag.length;
         var _loc8_:* = 0;
         while(_loc8_<_loc7_)
         {
            _loc9_=this.rakywejag[_loc8_];
            if(_loc8_>=this.dihag.length)
            {
               this.dihag.push(new GraphicsBitmapFill(null,new Matrix(),false,false));
               this.nanuva.push(new GraphicsPath(Nosupygu.quk,new Vector.<Number>()));
            }
            _loc10_=this.dihag[_loc8_];
            _loc11_=this.nanuva[_loc8_];
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
            param1.push(Nosupygu.END_FILL);
            _loc8_++;
         }
         return;
      }

      protected var gunuhok:GraphicsGradientFill = null;

      protected var ruka:GraphicsPath = null;

      override public function drawShadow(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.gunuhok==null)
         {
            this.gunuhok=new GraphicsGradientFill(GradientType.RADIAL,[this.props_.fadeb,this.props_.fadeb],[0.5,0],null,new Matrix());
            this.ruka=new GraphicsPath(Nosupygu.quk,new Vector.<Number>());
         }
         var _loc4_:Number = this.size_/100*this.props_.vitaqiwos/100*this.folenew;
         var _loc5_:Number = 30*_loc4_;
         var _loc6_:Number = 15*_loc4_;
         this.gunuhok.matrix.createGradientBox(_loc5_*2,_loc6_*2,0,meluhykag[0]-_loc5_,meluhykag[1]-_loc6_);
         param1.push(this.gunuhok);
         this.ruka.data.length=0;
         this.ruka.data.push(meluhykag[0]-_loc5_,meluhykag[1]-_loc6_,meluhykag[0]+_loc5_,meluhykag[1]-_loc6_,meluhykag[0]+_loc5_,meluhykag[1]+_loc6_,meluhykag[0]-_loc5_,meluhykag[1]+_loc6_);
         param1.push(this.ruka);
         param1.push(Nosupygu.END_FILL);
         return;
      }

      public function toString() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return "["+getQualifiedClassName(this)+" id: "+objectId_+" type: "+ObjectLibrary.mafiwape[this.objectType_]+" pos: "+x_+", "+y_+"]";
      }
   }
[/CLASS]
}