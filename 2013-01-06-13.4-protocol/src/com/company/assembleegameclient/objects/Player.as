package com.company.assembleegameclient.objects
{
[CLASS862]   import com.company.util.ConversionUtil;
   import __AS3__.vec.Vector;
   import flash.geom.Point;
   import flash.geom.Matrix;
   import com.company.assembleegameclient.util.Huroj;
   import mejowozy.Sur;
   import tusidywuq.Selamehu;
   import kabam.rotmg.assets.services.Vohemija;
   import flash.utils.getTimer;
   import haqakel.Kefyfa;
   import setuv.Vityvu;
   import com.company.assembleegameclient.parameters.Parameters;
   import wiwojaz.Hymefit;
   import totuhare.Zufi;
   import gawulu.Cuqicyh;
   import mejowozy.LevelUpEffect;
   import com.company.util.IntPoint;
   import com.company.util.PointUtil;
   import com.company.assembleegameclient.map.Square;
   import flash.display.BitmapData;
   import totuhare.Javo;
   import totuhare.Qebar;
   import jutesesel.Qibigagal;
   import pudev.Sinobyf;
   import com.company.assembleegameclient.util.Gugi;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import com.company.util.MoreColorUtil;
   import com.company.assembleegameclient.map.Fot;
   import com.company.assembleegameclient.util.Gejugut;
   import flash.utils.Dictionary;
   import flash.geom.ColorTransform;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.Dyzonoto;
   import kuzycyw.Gywow;
   import kuzycyw.Vofamoba;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.util.Trig;
   import com.company.assembleegameclient.util.Deqipe;
   import com.company.assembleegameclient.util.ConditionEffect;
   import kuzycyw.Cymydef;
   import vinirudel.Heqodeno;
   import guvakipe.Guc;
   import pogefeqeh.Wahovy;


   public class Player extends Character
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Player(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.geloraq=new IntPoint();
         var _loc2_:Wahovy = Qibigagal.husuha();
         this.rivu=_loc2_.getInstance(Selamehu);
         this.factory=_loc2_.getInstance(Vohemija);
         super(param1);
         this.senata=int(param1.Attack.@max);
         this.cuci=int(param1.Defense.@max);
         this.buragufyg=int(param1.Speed.@max);
         this.fusatum=int(param1.Dexterity.@max);
         this.fupo=int(param1.HpRegen.@max);
         this.givun=int(param1.MpRegen.@max);
         this.qojave=int(param1.MaxHitPoints.@max);
         this.huhinu=int(param1.MaxMagicPoints.@max);
         wikesot=new Dictionary();
         return;
      }

      public static const dogizewig:int = 10000;

      private static const wazesi:Number = 0.4;

      public static function gezoqu(param1:String, param2:XML) : Player {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = int(param2.ObjectType);
         var _loc4_:XML = ObjectLibrary.zedij[_loc3_];
         var _loc5_:Player = new Player(_loc4_);
         _loc5_.name_=param1;
         _loc5_.jepe=int(param2.Level);
         _loc5_.exp_=int(param2.Exp);
         _loc5_.wasidu=ConversionUtil.dapani(param2.Equipment);
         _loc5_.liq=int(param2.MaxHitPoints);
         _loc5_.qyhefanyk=int(param2.HitPoints);
         _loc5_.naduzab=int(param2.MaxMagicPoints);
         _loc5_.kyl=int(param2.MagicPoints);
         _loc5_.mihu=int(param2.Attack);
         _loc5_.gas=int(param2.Defense);
         _loc5_.speed_=int(param2.Speed);
         _loc5_.boke=int(param2.Dexterity);
         _loc5_.hocuwag=int(param2.HpRegen);
         _loc5_.wofariwav=int(param2.MpRegen);
         _loc5_.tex1Id_=int(param2.Tex1);
         _loc5_.tex2Id_=int(param2.Tex2);
         return _loc5_;
      }

      private static const becicamu:Vector.<Point> = new Vector.<Point>(4);

      private static var bimunany:Point = new Point();

      private static const sary:Matrix = new Matrix(1,0,0,1,2,2);

      private static const tib:Matrix = new Matrix(1,0,0,1,20,1);

      private static const dusuzosa:Number = 0.004;

      private static const pur:Number = 0.0096;

      private static const siz:Number = 0.0015;

      private static const juho:Number = 0.008;

      private static const qit:Number = 0.5;

      private static const pobe:Number = 2;

      public var bemy:int;

      public var bazygajap:int;

      public var skin:Huroj;

      public var isShooting:Boolean;

      public var accountId_:int = -1;

      public var credits_:int = 0;

      public var numStars_:int = 0;

      public var waz:int = 0;

      public var zykijaq:Boolean = false;

      public var hitivynu:int = 0;

      public var hyzoqyh:int = -1;

      public var tusyz:int = -1;

      public var guildName_:String = null;

      public var guildRank_:int = -1;

      public var togyjuwub:Boolean = false;

      public var breath_:int = -1;

      public var naduzab:int = 200;

      public var kyl:Number = 0;

      public var qoqin:int = 1000;

      public var exp_:int = 0;

      public var mihu:int = 0;

      public var speed_:int = 0;

      public var boke:int = 0;

      public var hocuwag:int = 0;

      public var wofariwav:int = 0;

      public var tary:int = 0;

      public var najihoce:int = 0;

      public var qiqogy:int = 0;

      public var zyvegaciq:int = 0;

      public var rame:int = 0;

      public var pidaf:int = 0;

      public var kynoqas:int = 0;

      public var vibitejed:int = 0;

      public var midomuwav:int = 0;

      public var hocyzo:int = 0;

      public var tuly:int = 0;

      public var senata:int = 0;

      public var cuci:int = 0;

      public var buragufyg:int = 0;

      public var fusatum:int = 0;

      public var fupo:int = 0;

      public var givun:int = 0;

      public var qojave:int = 0;

      public var huhinu:int = 0;

      public var zohu:Boolean = false;

      public var starred_:Boolean = false;

      public var goc:Boolean = false;

      public var distSqFromThisPlayer_:Number = 0;

      protected var vocu:Number = 0;

      protected var mykoweti:Point = null;

      protected var hyqegytep:Number = 1;

      public var tine:int = 0;

      public var pazymajep:int = 0;

      public var reh:int = 0;

      public var sap:int = 0;

      public var gucec:int = 0;

      protected var joje:Sur = null;

      protected var fohu:Merchant = null;

      public var pimijaz:Boolean = true;

      private var rivu:Selamehu;

      private var factory:Vohemija;

      public function jur(param1:Number, param2:Number, param3:Number) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = NaN;
         if(this.mykoweti==null)
         {
            this.mykoweti=new Point();
         }
         this.vocu=param1;
         this.mykoweti.x=param2;
         this.mykoweti.y=param3;
         if(rigo())
         {
            _loc4_=this.mykoweti.x;
            this.mykoweti.x=-this.mykoweti.y;
            this.mykoweti.y=-_loc4_;
            this.vocu=-this.vocu;
         }
         return;
      }

      public function gyfamyc(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.credits_=param1;
         return;
      }

      public function sicoqyca(param1:String) : void {
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
                  _loc4_.sicoqyca(_loc4_.guildName_);
               }
            }
         }
         else
         {
            _loc5_=!(_loc2_==null)&&!(_loc2_.guildName_==null)&&!(_loc2_.guildName_=="")&&_loc2_.guildName_==this.guildName_;
            if(_loc5_!=this.togyjuwub)
            {
               this.togyjuwub=_loc5_;
               quferuca=null;
            }
         }
         return;
      }

      public function vymevydyt(param1:Player) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !((param1.isPaused())||(param1.qyzol()));
      }

      public function qyk() : int {
         var _loc1_:int = getTimer();
         return Math.max(0,this.reh-_loc1_);
      }

      public function pawuhopa(param1:Player) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(isPaused())
         {
            this.rivu.dispatch(this.nibom(Kefyfa.bagikal));
            return false;
         }
         var _loc2_:int = this.qyk();
         if(_loc2_>0)
         {
            this.rivu.dispatch(this.nibom(Kefyfa.myfysem,{seconds:int(_loc2_/1000+1)}));
            return false;
         }
         if(!this.vymevydyt(param1))
         {
            if(param1.qyzol())
            {
               this.rivu.dispatch(this.nibom(Kefyfa.colapiza,{player:param1.name_}));
            }
            else
            {
               this.rivu.dispatch(this.nibom(Kefyfa.heneq,{player:param1.name_}));
            }
            return false;
         }
         map_.gs_.gsc_.teleport(param1.objectId_);
         this.reh=getTimer()+dogizewig;
         return true;
      }

      private function nibom(param1:String, param2:Object=null) : Vityvu {
         return Vityvu.make(Parameters.timepimow,param1,-1,-1,"",false,param2);
      }

      public function titar(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.sulovyhew();
         var _loc2_:Hymefit = new Hymefit(this,65280,2000);
         _loc2_.setStringBuilder(new Zufi().setParams(param1));
         map_.mapOverlay_.addStatusText(_loc2_);
         return;
      }

      public function vyhyka(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Cuqicyh.play("level_up");
         if(param1)
         {
            this.titar(Kefyfa.jikebyzar);
         }
         else
         {
            this.titar(Kefyfa.kod);
         }
         return;
      }

      public function sulovyhew() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         map_.addObj(new LevelUpEffect(this,4.27825536E9,20),x_,y_);
         return;
      }

      public function pilyfon(param1:int) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(jepe==20)
         {
            return;
         }
         var _loc2_:Hymefit = new Hymefit(this,65280,1000);
         _loc2_.setStringBuilder(new Zufi().setParams(Kefyfa.kuqupowo,{exp:param1}));
         map_.mapOverlay_.addStatusText(_loc2_);
         return;
      }

      private var geloraq:IntPoint;

      private function nuzaf() : Merchant {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:Point = null;
         var _loc4_:Merchant = null;
         var _loc1_:int = x_-int(x_)>0.5?1:-1;
         var _loc2_:int = y_-int(y_)>0.5?1:-1;
         for each (_loc3_ in becicamu)
         {
            this.geloraq.x_=x_+_loc1_*_loc3_.x;
            this.geloraq.y_=y_+_loc2_*_loc3_.y;
            _loc4_=map_.merchLookup_[this.geloraq];
            if(_loc4_!=null)
            {
               return PointUtil.hakimo(_loc4_.x_,_loc4_.y_,x_,y_)<1?_loc4_:null;
            }
         }
         return null;
      }

      public function vysyfeto(param1:Number, param2:Number) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qofi(param1,param2,bimunany);
         return this.moveTo(bimunany.x,bimunany.y);
      }

      override public function moveTo(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Boolean = super.moveTo(param1,param2);
         if(map_.gs_.evalIsNotInCombatMapArea())
         {
            this.fohu=this.nuzaf();
         }
         return _loc3_;
      }

      public function qofi(param1:Number, param2:Number, param3:Point) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         if(dyc())
         {
            param3.x=x_;
            param3.y=y_;
            return;
         }
         var _loc4_:Number = param1-x_;
         var _loc5_:Number = param2-y_;
         if(_loc4_<wazesi&&_loc4_>-wazesi&&_loc5_<wazesi&&_loc5_>-wazesi)
         {
            this.reqofa(param1,param2,param3);
            return;
         }
         var _loc6_:Number = wazesi/Math.max(Math.abs(_loc4_),Math.abs(_loc5_));
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
            this.reqofa(param3.x+_loc4_*_loc6_,param3.y+_loc5_*_loc6_,param3);
            _loc7_=_loc7_+_loc6_;
         }
      }

      public function reqofa(param1:Number, param2:Number, param3:Point) : void {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc4_:Boolean = x_%0.5==0&&!(param1==x_)||!(int(x_/0.5)==int(param1/0.5));
         var _loc5_:Boolean = y_%0.5==0&&!(param2==y_)||!(int(y_/0.5)==int(param2/0.5));
         if(!_loc4_&&!_loc5_||(this.jyzy(param1,param2)))
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
            if(this.jyzy(param1,_loc7_))
            {
               param3.x=param1;
               param3.y=_loc7_;
               return;
            }
            if(this.jyzy(_loc6_,param2))
            {
               param3.x=_loc6_;
               param3.y=param2;
               return;
            }
         }
         else
         {
            if(this.jyzy(_loc6_,param2))
            {
               param3.x=_loc6_;
               param3.y=param2;
               return;
            }
            if(this.jyzy(param1,_loc7_))
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

      public function jyzy(param1:Number, param2:Number) : Boolean {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Square = map_.getSquare(param1,param2);
         if(!(togofijo==_loc3_)&&(_loc3_==null||!_loc3_.joceky()))
         {
            return false;
         }
         var _loc4_:Number = param1-int(param1);
         var _loc5_:Number = param2-int(param2);
         if(_loc4_<0.5)
         {
            if(this.juv(param1-1,param2))
            {
               return false;
            }
            if(_loc5_<0.5)
            {
               if((this.juv(param1,param2-1))||(this.juv(param1-1,param2-1)))
               {
                  return false;
               }
            }
            else
            {
               if(_loc5_>0.5)
               {
                  if((this.juv(param1,param2+1))||(this.juv(param1-1,param2+1)))
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
               if(this.juv(param1+1,param2))
               {
                  return false;
               }
               if(_loc5_<0.5)
               {
                  if((this.juv(param1,param2-1))||(this.juv(param1+1,param2-1)))
                  {
                     return false;
                  }
               }
               else
               {
                  if(_loc5_>0.5)
                  {
                     if((this.juv(param1,param2+1))||(this.juv(param1+1,param2+1)))
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
                  if(this.juv(param1,param2-1))
                  {
                     return false;
                  }
               }
               else
               {
                  if(_loc5_>0.5)
                  {
                     if(this.juv(param1,param2+1))
                     {
                        return false;
                     }
                  }
               }
            }
         }
         return true;
      }

      public function juv(param1:Number, param2:Number) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Square = map_.lookupSquare(param1,param2);
         return _loc3_==null||_loc3_.tileType_==255||!(_loc3_.obj_==null)&&(_loc3_.obj_.props_.tony);
      }

      override public function update(param1:int, param2:int) : Boolean {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = 0;
         if((this.gucec)&&!isPaused())
         {
            this.gucec=this.gucec-param2;
            if(this.gucec<0)
            {
               this.gucec=0;
            }
         }
         if((this.sap)&&!isPaused())
         {
            this.sap=this.sap-param2;
            if(this.sap<0)
            {
               this.sap=0;
            }
         }
         if((this.bemy)&&!isPaused())
         {
            this.bemy=this.bemy-param2;
            if(this.bemy<0)
            {
               this.bemy=0;
            }
         }
         if((dehozawe())&&!isPaused())
         {
            if(this.joje==null)
            {
               this.joje=new Sur(this);
               map_.addObj(this.joje,x_,y_);
            }
         }
         else
         {
            if(this.joje!=null)
            {
               map_.removeObj(this.joje.objectId_);
               this.joje=null;
            }
         }
         if(map_.player_==this&&(isPaused()))
         {
            return true;
         }
         if(this.mykoweti!=null)
         {
            _loc3_=Parameters.data_.cameraAngle;
            if(this.vocu!=0.0)
            {
               _loc3_=_loc3_+param2*Parameters.viqamac*this.vocu;
               Parameters.data_.cameraAngle=_loc3_;
            }
            if(!(this.mykoweti.x==0.0)||!(this.mykoweti.y==0.0))
            {
               _loc4_=this.dipi();
               _loc5_=Math.atan2(this.mykoweti.y,this.mykoweti.x);
               moveVec_.x=_loc4_*Math.cos(_loc3_+_loc5_);
               moveVec_.y=_loc4_*Math.sin(_loc3_+_loc5_);
            }
            else
            {
               moveVec_.x=0;
               moveVec_.y=0;
            }
            if(!(togofijo==null)&&(togofijo.props_.push_))
            {
               moveVec_.x=moveVec_.x-togofijo.props_.animate_.dx_/1000;
               moveVec_.y=moveVec_.y-togofijo.props_.animate_.dy_/1000;
            }
            this.vysyfeto(x_+param2*moveVec_.x,y_+param2*moveVec_.y);
         }
         else
         {
            if(!super.update(param1,param2))
            {
               return false;
            }
         }
         if(map_.player_==this&&togofijo.props_.maxDamage_>0&&togofijo.lastDamage_+500<param1&&!dopo()&&(togofijo.obj_==null||!togofijo.obj_.props_.protectFromGroundDamage_))
         {
            _loc6_=map_.gs_.gsc_.getNextDamage(togofijo.props_.minDamage_,togofijo.props_.maxDamage_);
            damage(-1,_loc6_,null,qyhefanyk<=_loc6_,null);
            map_.gs_.gsc_.groundDamage(param1,x_,y_);
            togofijo.lastDamage_=param1;
         }
         return true;
      }

      public function qugosako() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(map_==null)
         {
            return;
         }
         var _loc1_:Square = map_.getSquare(x_,y_);
         if(_loc1_.props_.zewusi)
         {
            wytavaf=Math.min(wytavaf+1,Parameters.casu);
            this.hyqegytep=0.1+(1-wytavaf/Parameters.casu)*(_loc1_.props_.speed_-0.1);
         }
         else
         {
            wytavaf=0;
            this.hyqegytep=_loc1_.props_.speed_;
         }
         return;
      }

      override protected function makeNameBitmapData() : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Qebar = new Javo(name_);
         var _loc2_:Sinobyf = Qibigagal.husuha().getInstance(Sinobyf);
         var _loc3_:BitmapData = _loc2_.make(_loc1_,16,this.bucy(),true,tib,true);
         _loc3_.draw(Gugi.cibifyt(this.numStars_),sary);
         return _loc3_;
      }

      private function bucy() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.togyjuwub)
         {
            return Parameters.nagy;
         }
         if(this.zykijaq)
         {
            return Parameters.rozodov;
         }
         return 16777215;
      }

      private var lanany:GraphicsSolidFill = null;

      private var ludo:GraphicsPath = null;

      private var fypocufol:GraphicsSolidFill = null;

      private var mylilih:GraphicsPath = null;

      protected function dynomysuh(param1:Vector.<IGraphicsData>, param2:int) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         if(this.mylilih==null)
         {
            this.lanany=new GraphicsSolidFill();
            this.ludo=new GraphicsPath(Nosupygu.quk,new Vector.<Number>());
            this.fypocufol=new GraphicsSolidFill(2542335);
            this.mylilih=new GraphicsPath(Nosupygu.quk,new Vector.<Number>());
         }
         if(this.breath_<=Parameters.kocacuz)
         {
            _loc6_=(Parameters.kocacuz-this.breath_)/Parameters.kocacuz;
            this.lanany.color=MoreColorUtil.gipah(5526612,16711680,Math.abs(Math.sin(param2/300))*_loc6_);
         }
         else
         {
            this.lanany.color=5526612;
         }
         var _loc3_:* = 20;
         var _loc4_:* = 4;
         var _loc5_:* = 6;
         this.ludo.data.length=0;
         this.ludo.data.push(meluhykag[0]-_loc3_,meluhykag[1]+_loc4_,meluhykag[0]+_loc3_,meluhykag[1]+_loc4_,meluhykag[0]+_loc3_,meluhykag[1]+_loc4_+_loc5_,meluhykag[0]-_loc3_,meluhykag[1]+_loc4_+_loc5_);
         param1.push(this.lanany);
         param1.push(this.ludo);
         param1.push(Nosupygu.END_FILL);
         if(this.breath_>0)
         {
            _loc7_=this.breath_/100*2*_loc3_;
            this.mylilih.data.length=0;
            this.mylilih.data.push(meluhykag[0]-_loc3_,meluhykag[1]+_loc4_,meluhykag[0]-_loc3_+_loc7_,meluhykag[1]+_loc4_,meluhykag[0]-_loc3_+_loc7_,meluhykag[1]+_loc4_+_loc5_,meluhykag[0]-_loc3_,meluhykag[1]+_loc4_+_loc5_);
            param1.push(this.fypocufol);
            param1.push(this.mylilih);
            param1.push(Nosupygu.END_FILL);
         }
         return;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super.draw(param1,param2,param3);
         if(this!=map_.player_)
         {
            if(!Parameters.pevabak)
            {
               daluzacof(param1,param2);
            }
         }
         else
         {
            if(this.breath_>=0)
            {
               this.dynomysuh(param1,param3);
            }
         }
         return;
      }

      private function dipi() : Number {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(coceket())
         {
            return dusuzosa*this.hyqegytep;
         }
         var _loc1_:Number = dusuzosa+this.speed_/75*(pur-dusuzosa);
         if((savepeneg())||(ryhozaq()))
         {
            _loc1_=_loc1_*1.5;
         }
         _loc1_=_loc1_*this.hyqegytep;
         return _loc1_;
      }

      public function gikyk() : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(kubylud())
         {
            return siz;
         }
         var _loc1_:Number = siz+this.boke/75*(juho-siz);
         if(qiweda())
         {
            _loc1_=_loc1_*1.5;
         }
         return _loc1_;
      }

      private function pawyc() : Number {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(ceqiheku())
         {
            return qit;
         }
         var _loc1_:Number = qit+this.mihu/75*(pobe-qit);
         if(nul())
         {
            _loc1_=_loc1_*1.5;
         }
         return _loc1_;
      }

      private function behef() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Gejugut = this.skin.imageFromAngle(0,Huroj.wyqel,0);
         haci=this.skin;
         texture_=_loc1_.image_;
         mask_=_loc1_.mask_;
         this.pimijaz=true;
         return;
      }

      private function nezabedol() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Vector.<XML> = ObjectLibrary.sumohiras;
         var _loc2_:uint = Math.floor(Math.random()*_loc1_.length);
         var _loc3_:int = _loc1_[_loc2_].@type;
         var _loc4_:Qeh = ObjectLibrary.kusuj[_loc3_];
         texture_=_loc4_.texture_;
         mask_=_loc4_.mask_;
         haci=_loc4_.haci;
         this.pimijaz=false;
         return;
      }

      override protected function getTexture(param1:Fot, param2:int) : BitmapData {
         var _loc15_:* = true;
         var _loc16_:* = false;
         var _loc5_:Gejugut = null;
         var _loc10_:* = 0;
         var _loc11_:Dictionary = null;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:ColorTransform = null;
         var _loc3_:Number = 0;
         var _loc4_:int = Huroj.wyqel;
         if((this.isShooting)||param2<vof+this.tine)
         {
            latu=himiz;
            _loc3_=(param2-vof)%this.tine/this.tine;
            _loc4_=Huroj.zodol;
         }
         else
         {
            if(!(moveVec_.x==0)||!(moveVec_.y==0))
            {
               _loc10_=3.5/this.dipi();
               if(!(moveVec_.y==0)||!(moveVec_.x==0))
               {
                  latu=Math.atan2(moveVec_.y,moveVec_.x);
               }
               _loc3_=param2%_loc10_/_loc10_;
               _loc4_=Huroj.rezafi;
            }
         }
         if(this.dybabet())
         {
         }
         else
         {
            if(!this.pimijaz)
            {
               this.behef();
            }
         }
         if(param1.dicybeco)
         {
            _loc5_=new Gejugut(jiniroj(),null);
         }
         else
         {
            _loc5_=haci.imageFromFacing(latu,param1,_loc4_,_loc3_);
         }
         var _loc6_:int = tex1Id_;
         var _loc7_:int = tex2Id_;
         var _loc8_:BitmapData = null;
         if(this.fohu)
         {
            _loc11_=wikesot[this.fohu];
            if(_loc11_==null)
            {
               wikesot[this.fohu]=new Dictionary();
            }
            else
            {
               _loc8_=_loc11_[_loc5_];
            }
            _loc6_=this.fohu.getTex1Id(tex1Id_);
            _loc7_=this.fohu.getTex2Id(tex2Id_);
         }
         else
         {
            _loc8_=wikesot[_loc5_];
         }
         if(_loc8_==null)
         {
            _loc8_=TextureRedrawer.resize(_loc5_.image_,_loc5_.mask_,size_,false,_loc6_,_loc7_);
            if(this.fohu!=null)
            {
               wikesot[this.fohu][_loc5_]=_loc8_;
            }
            else
            {
               wikesot[_loc5_]=_loc8_;
            }
         }
         if(qyhefanyk<liq*0.2)
         {
            _loc12_=int(Math.abs(Math.sin(param2/200))*10)/10;
            _loc13_=128;
            _loc14_=new ColorTransform(1,1,1,1,_loc12_*_loc13_,-_loc12_*_loc13_,-_loc12_*_loc13_);
            _loc8_=Dyzonoto.zategokog(_loc8_,_loc14_);
         }
         var _loc9_:BitmapData = wikesot[_loc8_];
         if(_loc9_==null)
         {
            _loc9_=TextureRedrawer.outlineGlow(_loc8_,0,this.tusyz==-1?0:16711680);
            wikesot[_loc8_]=_loc9_;
         }
         if((isPaused())||(pasyli()))
         {
            _loc9_=Dyzonoto.naqucovu(_loc9_,sumyret);
         }
         else
         {
            if(qyzol())
            {
               _loc9_=Dyzonoto.bacog(_loc9_,0.4);
            }
         }
         return _loc9_;
      }

      override public function getPortrait() : BitmapData {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Gejugut = null;
         var _loc2_:* = 0;
         if(sedi==null)
         {
            _loc1_=haci.imageFromDir(Huroj.RIGHT,Huroj.wyqel,0);
            _loc2_=4/_loc1_.image_.width*100;
            sedi=TextureRedrawer.resize(_loc1_.image_,_loc1_.mask_,_loc2_,true,tex1Id_,tex2Id_);
            sedi=TextureRedrawer.outlineGlow(sedi,0,0);
         }
         return sedi;
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
         var _loc4_:int = wasidu[1];
         if(_loc4_==-1)
         {
            return false;
         }
         var _loc5_:XML = ObjectLibrary.zedij[_loc4_];
         if(_loc5_==null||!_loc5_.hasOwnProperty("Usable"))
         {
            return false;
         }
         var _loc6_:Point = map_.pSTopW(param1,param2);
         if(_loc6_==null)
         {
            Cuqicyh.play("error");
            return false;
         }
         for each (_loc7_ in _loc5_.Activate)
         {
            if(_loc7_.toString()==Gywow.TELEPORT)
            {
               if(!this.jyzy(_loc6_.x,_loc6_.y))
               {
                  Cuqicyh.play("error");
                  return false;
               }
            }
         }
         _loc8_=getTimer();
         if(param3==Vofamoba.gukyhugu)
         {
            if(_loc8_<this.pazymajep)
            {
               Cuqicyh.play("error");
               return false;
            }
            _loc10_=int(_loc5_.MpCost);
            if(_loc10_>this.kyl)
            {
               Cuqicyh.play("no_mana");
               return false;
            }
            _loc11_=500;
            if(_loc5_.hasOwnProperty("Cooldown"))
            {
               _loc11_=Number(_loc5_.Cooldown)*1000;
            }
            this.pazymajep=_loc8_+_loc11_;
            map_.gs_.gsc_.useItem(_loc8_,objectId_,1,_loc4_,_loc6_.x,_loc6_.y,param3);
            if(_loc5_.Activate==Gywow.SHOOT)
            {
               _loc9_=Math.atan2(param2,param1);
               this.kehy(_loc8_,_loc4_,_loc5_,Parameters.data_.cameraAngle+_loc9_,false);
            }
         }
         else
         {
            if(_loc5_.hasOwnProperty("MultiPhase"))
            {
               map_.gs_.gsc_.useItem(_loc8_,objectId_,1,_loc4_,_loc6_.x,_loc6_.y,param3);
               _loc10_=int(_loc5_.MpEndCost);
               if(_loc10_<=this.kyl)
               {
                  _loc9_=Math.atan2(param2,param1);
                  this.kehy(_loc8_,_loc4_,_loc5_,Parameters.data_.cameraAngle+_loc9_,false);
               }
            }
         }
         return true;
      }

      public function sihudesev(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.shoot(Parameters.data_.cameraAngle+param1);
         return;
      }

      override public function setAttack(param1:int, param2:Number) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:XML = ObjectLibrary.zedij[param1];
         if(_loc3_==null||!_loc3_.hasOwnProperty("RateOfFire"))
         {
            return;
         }
         var _loc4_:Number = Number(_loc3_.RateOfFire);
         this.tine=1/this.gikyk()*1/_loc4_;
         super.setAttack(param1,param2);
         return;
      }

      private function shoot(param1:Number) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(map_==null||(direzat())||(isPaused()))
         {
            return;
         }
         var _loc2_:int = wasidu[0];
         if(_loc2_==-1)
         {
            this.rivu.dispatch(Vityvu.make(Parameters.timepimow,Kefyfa.zehon));
            return;
         }
         var _loc3_:XML = ObjectLibrary.zedij[_loc2_];
         var _loc4_:int = getTimer();
         var _loc5_:Number = Number(_loc3_.RateOfFire);
         this.tine=1/this.gikyk()*1/_loc5_;
         if(_loc4_<vof+this.tine)
         {
            return;
         }
         doneAction(map_.gs_,Tutorial.jybi);
         himiz=param1;
         vof=_loc4_;
         this.kehy(vof,_loc2_,_loc3_,himiz,true);
         return;
      }

      private function kehy(param1:int, param2:int, param3:XML, param4:Number, param5:Boolean) : void {
         var _loc17_:* = false;
         var _loc18_:* = true;
         var _loc11_:uint = 0;
         var _loc12_:Projectile = null;
         var _loc13_:* = 0;
         var _loc14_:* = 0;
         var _loc15_:* = NaN;
         var _loc16_:* = 0;
         var _loc6_:int = param3.hasOwnProperty("NumProjectiles")?int(param3.NumProjectiles):1;
         var _loc7_:Number = (param3.hasOwnProperty("ArcGap")?Number(param3.ArcGap):11.25)*Trig.lymiquwo;
         var _loc8_:Number = _loc7_*(_loc6_-1);
         var _loc9_:Number = param4-_loc8_/2;
         this.isShooting=true;
         var _loc10_:* = 0;
         while(_loc10_<_loc6_)
         {
            _loc11_=lucyk();
            _loc12_=Deqipe.wesijah(Projectile) as Projectile;
            _loc12_.reset(param2,0,objectId_,_loc11_,_loc9_,param1);
            _loc13_=int(_loc12_.gar.minDamage_);
            _loc14_=int(_loc12_.gar.maxDamage_);
            _loc15_=param5?this.pawyc():1;
            _loc16_=map_.gs_.gsc_.getNextDamage(_loc13_,_loc14_)*_loc15_;
            if(param1>map_.gs_.moveRecords_.lastClearTime_+600)
            {
               _loc16_=0;
            }
            _loc12_.qefejelik(_loc16_);
            if(!(_loc12_.vykonel==null))
            {
               Cuqicyh.play(_loc12_.vykonel,0.75,false);
            }
            map_.addObj(_loc12_,x_+Math.cos(param4)*0.3,y_+Math.sin(param4)*0.3);
            map_.gs_.gsc_.playerShoot(param1,_loc12_);
            _loc9_=_loc9_+_loc7_;
            _loc10_++;
         }
         return;
      }

      public function dybabet() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !((condition_&ConditionEffect.hytu)==0);
      }

      public function boz() : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = wasidu.length;
         var _loc2_:uint = 4;
         while(_loc2_<_loc1_)
         {
            if(wasidu[_loc2_]<=0)
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
         var _loc1_:int = this.zohu?wasidu.length:wasidu.length-Cymydef.sasusa;
         var _loc2_:uint = 4;
         while(_loc2_<_loc1_)
         {
            if(wasidu[_loc2_]<=0)
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
         if(!this.zohu)
         {
            return -1;
         }
         if(param1==Heqodeno.lazyp)
         {
            _loc2_=Cymydef.nybe;
            _loc3_=Cymydef.nybe+Cymydef.sasusa;
         }
         else
         {
            _loc2_=Cymydef.nybe+Cymydef.sasusa;
            _loc3_=wasidu.length;
         }
         var _loc4_:uint = _loc2_;
         while(_loc4_<_loc3_)
         {
            if(wasidu[_loc4_]<=0)
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
         switch(null)
         {
            case Guc.deg:
               return this.hocyzo;
            case Guc.jypaluw:
               return this.tuly;
            default:
               return 0;
         }
      }
   }
[/CLASS]
}