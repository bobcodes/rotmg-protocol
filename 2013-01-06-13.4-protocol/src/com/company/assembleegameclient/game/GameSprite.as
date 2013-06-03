package com.company.assembleegameclient.game
{
[CLASS147]   import mywyvuryw.Kekijuwo;
   import jutesesel.Qibigagal;
   import fucyquzu.Kipoqik;
   import fucyquzu.Meto;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import tinava.Dab;
   import hine.Chat;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Defik;
   import rucedosu.Vekowuris;
   import rucedosu.GiftStatusDisplay;
   import dylaqezo.Buzykoga;
   import jet.Varusici;
   import sakaja.Zuvejos;
   import zozimuk.Zuresasy;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.DisplayObject;
   import tidi.Vepel;
   import qisyc.Domysoved;
   import com.company.assembleegameclient.map.Map;
   import qiwyz.Bozakehy;
   import leselo.Account;
   import com.company.util.Vokekizac;
   import aaa.Parameters;
   import vehesaj.Vadico;
   import behe.Cydepyk;
   import golac.PackageButton;
   import flash.external.ExternalInterface;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.objects.Gofa;
   import com.company.assembleegameclient.objects.Player;
   import kuzycyw.Cymydef;
   import com.company.util.PointUtil;
   import flash.utils.getTimer;
   import jodahije.Wep;
   import flash.events.Event;
   import qeqeli.Qaqarebyn;
   import qeqeli.Macevyzij;
   import com.company.util.Dyzonoto;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.assembleegameclient.objects.Projectile;
   import com.company.googleanalytics.GA;
   import wyjimigo.Server;
   import flash.utils.ByteArray;
   import dylaqezo.Vusun;
   import flash.display.Sprite;
   import aaa.ActionMapperImpl;


   public class GameSprite extends Tosahafu
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function GameSprite(param1:Server, param2:int, param3:Boolean, param4:int, param5:int, param6:ByteArray, param7:Vusun, param8:String) {
         var _loc9_:* = true;
         var _loc10_:* = false;
         this.zavycy=new Dab();
         this.pymo=new Sprite();
         super();
         this.model=param7;
         map=new Map(this);
         addChild(map);
         gsc_=new ActionMapperImpl(this,param1,param2,param3,param4,param5,param6,param8);
         mui_=new Vypatozi(this);
         this.risu=new Chat();
         addChild(this.risu);
         this.syralasur=new Mus();
         return;
      }

      public static function wumulodah(param1:Kekijuwo) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kipoqik = Qibigagal.husuha().getInstance(Kipoqik);
         return;
      }

      private static function roheg() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Meto = Qibigagal.husuha().getInstance(Meto);
         return;
      }

      protected static const sumyret:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.calysymes);

      public const peg:Dab = new Dab(String,int);

      public const zem:Dab = new Dab();

      public const reduqyr:Dab = new Dab(Player);

      public var risu:Chat;

      public var isNexus_:Boolean = false;

      public var syralasur:Mus;

      public var hyjafaki:RankText;

      public var ham:Defik;

      public var leb:Vekowuris;

      public var qajurega:GiftStatusDisplay;

      public var fabemus:Buzykoga;

      public var legefiti:Varusici;

      public var tiki:Zuvejos;

      public var zavycy:Dab;

      public var wiq:Zuresasy;

      private var focus:GameObject;

      private var guteqil:int = 0;

      private var qetykos:int = 0;

      private var kucyfibe:Boolean;

      private var tebip:uint = 4;

      private var pymo:DisplayObject;

      private var focef:Number;

      override public function setFocus(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var param1:GameObject = (param1)||(map.player_);
         this.focus=param1;
         return;
      }

      override public function applyMapInfo(param1:Kekijuwo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         map.setProps(param1.width_,param1.height_,param1.name_,param1.background_,param1.allowPlayerTeleport_,param1.showDisplays_);
         wumulodah(param1);
         return;
      }

      public function pugiha() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         hudView=new Vepel();
         hudView.x=600;
         addChild(hudView);
         return;
      }

      override public function initialize() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Domysoved = null;
         map.initialize();
         this.leb=new Vekowuris(this);
         this.leb.x=594;
         this.leb.y=0;
         addChild(this.leb);
         this.zem.dispatch();
         if(map.showDisplays_)
         {
            this.hymaw();
         }
         if((this.wiq.cugeqe())&&map.name_==Map.dysib)
         {
            if(this.legefiti.zupejime())
            {
               this.tiki.dispatch();
            }
            else
            {
               this.zavycy.dispatch();
            }
            this.wiq.nogy++;
         }
         this.isNexus_=map.name_==Map.dysib;
         var _loc1_:Bozakehy = Qibigagal.husuha().getInstance(Bozakehy);
         var _loc2_:Account = Qibigagal.husuha().getInstance(Account);
         var _loc3_:Object = 
            {
               game_net_user_id:_loc2_.fyp(),
               game_net:_loc2_.myqem(),
               play_platform:_loc2_.rom()
            }
         ;
         Vokekizac.jugajoj(_loc3_,_loc2_.dera());
         if(!(map.name_=="Kitchen")&&!(map.name_=="Tutorial")&&!(map.name_=="Nexus Explanation")&&Parameters.data_.watchForTutorialExit==true)
         {
            Parameters.data_.watchForTutorialExit=false;
            this.numenojy("rotmg.Marketing.track(\"tutorialComplete\")");
            _loc3_["fteStepCompleted"]=9900;
            _loc1_.sendRequest("/log/logFteStep",_loc3_);
         }
         if(map.name_=="Kitchen")
         {
            _loc3_["fteStepCompleted"]=200;
            _loc1_.sendRequest("/log/logFteStep",_loc3_);
         }
         if(map.name_=="Tutorial")
         {
            if(Parameters.data_.needsTutorial==true)
            {
               Parameters.data_.watchForTutorialExit=true;
               this.numenojy("rotmg.Marketing.track(\"install\")");
               _loc3_["fteStepCompleted"]=100;
               _loc1_.sendRequest("/log/logFteStep",_loc3_);
            }
            this.tez();
         }
         else
         {
            if(!(map.name_=="Kitchen")&&!(map.name_=="Nexus Explanation")&&!(map.name_=="Vault Explanation")&&!(map.name_=="Guild Explanation")&&!map.showDisplays_&&(Parameters.data_.showProtips))
            {
               _loc4_=Qibigagal.husuha().getInstance(Domysoved);
            }
         }
         Parameters.save();
         roheg();
         return;
      }

      private function hymaw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.jis();
         this.wet();
         this.wiroq();
         this.pylut();
         return;
      }

      private function pylut() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qajurega=new GiftStatusDisplay();
         this.qajurega.x=6;
         this.qajurega.y=this.tebip+2;
         this.tebip=this.tebip+Vadico.gohowy;
         addChild(this.qajurega);
         return;
      }

      private function wiroq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.focef=this.tebip+2;
         this.tebip=this.tebip+Vadico.gohowy;
         this.coko();
         return;
      }

      private function coko() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pymo.x=6;
         this.pymo.y=this.focef;
         return;
      }

      public function gipudygi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.evalIsNotInCombatMapArea())
         {
            this.qufihos(new Cydepyk());
         }
         return;
      }

      public function cize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.evalIsNotInCombatMapArea())
         {
            this.qufihos(new PackageButton());
         }
         return;
      }

      private function qufihos(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pymo=param1;
         addChild(this.pymo);
         this.coko();
         return;
      }

      private function wet() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ham=new Defik("",-1);
         this.ham.x=64;
         this.ham.y=6;
         addChild(this.ham);
         return;
      }

      private function jis() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hyjafaki=new RankText(-1,true,false);
         this.hyjafaki.x=8;
         this.hyjafaki.y=this.tebip;
         this.tebip=this.tebip+Vadico.gohowy;
         addChild(this.hyjafaki);
         return;
      }

      private function numenojy(param1:String) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(ExternalInterface.available==false)
         {
            return;
         }
         try
         {
            ExternalInterface.call(param1);
         }
         catch(err:Error)
         {
         }
         return;
      }

      private function tez() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         tutorial_=new Tutorial(this);
         addChild(tutorial_);
         return;
      }

      private function dyleny() : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:* = NaN;
         var _loc7_:GameObject = null;
         var _loc8_:Gofa = null;
         if(!map||!map.player_)
         {
            return;
         }
         var _loc1_:Player = map.player_;
         var _loc2_:Number = Cymydef.depycefy;
         var _loc3_:Gofa = null;
         var _loc5_:Number = _loc1_.x_;
         var _loc6_:Number = _loc1_.y_;
         for each (_loc7_ in map.goDict_)
         {
            _loc8_=_loc7_ as Gofa;
            if(_loc8_)
            {
               if(Math.abs(_loc5_-_loc7_.x_)<Cymydef.depycefy||Math.abs(_loc6_-_loc7_.y_)<Cymydef.depycefy)
               {
                  _loc4_=PointUtil.kijuvaq(_loc7_.x_,_loc7_.y_,_loc5_,_loc6_);
                  if(_loc4_<Cymydef.depycefy&&_loc4_<_loc2_)
                  {
                     _loc2_=_loc4_;
                     _loc3_=_loc8_;
                  }
               }
            }
         }
         this.fabemus.wavicu=_loc3_;
         return;
      }

      public function connect() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.kucyfibe)
         {
            this.kucyfibe=true;
            gsc_.connect();
            this.syralasur.start(this);
            lastUpdate_=getTimer();
            stage.addEventListener(Wep.MONEY_CHANGED,this.zebiqesi);
            stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            Qaqarebyn.lylapi(new Macevyzij(100,this.dyleny));
         }
         return;
      }

      public function disconnect() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.kucyfibe)
         {
            this.kucyfibe=false;
            this.syralasur.stop();
            stage.removeEventListener(Wep.MONEY_CHANGED,this.zebiqesi);
            stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            Qaqarebyn.decodyfyv();
            map.dispose();
            Dyzonoto.clear();
            TextureRedrawer.clearCache();
            Projectile.dispose();
            gsc_.disconnect();
         }
         return;
      }

      private function zebiqesi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gsc_.checkCredits();
         return;
      }

      override public function evalIsNotInCombatMapArea() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return map.name_==Map.dysib||map.name_==Map.gefyt||map.name_==Map.muqy||map.name_==Map.cypukyp||map.name_==Map.kubajec;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = NaN;
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_-lastUpdate_;
         if(this.syralasur.update(_loc3_))
         {
            closed.dispatch();
            return;
         }
         Qaqarebyn.weculog(_loc2_);
         this.guteqil=this.guteqil+_loc3_;
         this.qetykos=this.qetykos+1;
         if(this.guteqil>300000)
         {
            _loc7_=int(Math.round(1000*this.qetykos/this.guteqil));
            GA.global().trackEvent("performance","frameRate",map.name_,_loc7_);
            this.qetykos=0;
            this.guteqil=0;
         }
         var _loc4_:int = getTimer();
         map.update(_loc2_,_loc3_);
         this.peg.dispatch("Map.update",getTimer()-_loc4_);
         camera_.update(_loc3_);
         var _loc5_:Player = map.player_;
         if(this.focus)
         {
            camera_.configureCamera(this.focus,_loc5_?_loc5_.qep():false);
            map.draw(camera_,_loc2_);
         }
         if(_loc5_!=null)
         {
            this.leb.draw(_loc5_.credits_,_loc5_.waz);
            this.reduqyr.dispatch(_loc5_);
            if(map.showDisplays_)
            {
               this.hyjafaki.draw(_loc5_.numStars_);
               this.ham.draw(_loc5_.guildName_,_loc5_.guildRank_);
            }
            if(_loc5_.isPaused())
            {
               map.filters=[sumyret];
               hudView.filters=[sumyret];
               map.mouseEnabled=false;
               map.mouseChildren=false;
               hudView.mouseEnabled=false;
               hudView.mouseChildren=false;
            }
            else
            {
               if(map.filters.length>0)
               {
                  map.filters=[];
                  hudView.filters=[];
                  map.mouseEnabled=true;
                  map.mouseChildren=true;
                  hudView.mouseEnabled=true;
                  hudView.mouseChildren=true;
               }
            }
            moveRecords_.addRecord(_loc2_,_loc5_.x_,_loc5_.y_);
         }
         lastUpdate_=_loc2_;
         var _loc6_:int = getTimer()-_loc2_;
         this.peg.dispatch("GameSprite.loop",_loc6_);
         return;
      }

      public function wywev(param1:Boolean) : void {
         return;
      }
   }
[/CLASS]
}