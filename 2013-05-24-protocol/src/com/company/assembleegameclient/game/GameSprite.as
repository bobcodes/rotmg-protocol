package com.company.assembleegameclient.game
{
   import quqe.Cinyl;
   import jag.Giq;
   import janopep.Ger;
   import janopep.Dog;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import tulunyno.Hugyqufyq;
   import ceny.Chat;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Teh;
   import biqacufo.Kofapije;
   import biqacufo.GiftStatusDisplay;
   import hotewa.Lug;
   import kagijawil.Cibiqot;
   import juw.Minura;
   import zokece.Buquk;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.DisplayObject;
   import ruwysepyd.Jyjimagi;
   import lyfo.Rotahy;
   import com.company.assembleegameclient.map.Map;
   import aaa.rotmg.net.HttpClientWrapper;
   import aaa.rotmg.account.Account;
   import com.company.util.Vuwewuc;
   import aaa.rotmg.config.UserConfig;
   import jybazigiq.Litewev;
   import difu.Necof;
   import liwaqa.PackageButton;
   import flash.external.ExternalInterface;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.objects.Putafyhil;
   import com.company.assembleegameclient.objects.Player;
   import pirus.Lekakyry;
   import com.company.util.PointUtil;
   import flash.utils.getTimer;
   import pov.Hemogusuj;
   import flash.events.Event;
   import dewufoc.Mejerine;
   import dewufoc.Pykyv;
   import com.company.util.Zet;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.assembleegameclient.objects.Projectile;
   import com.company.googleanalytics.GA;
   import aaa.rotmg.net.Server;
   import flash.utils.ByteArray;
   import hotewa.Baqifa;
   import flash.display.Sprite;
   import aaa.rotmg.action.mapping.RotMGActionMapper;


   public class GameSprite extends Nukomesih
   {
      public function GameSprite(serverToConnectTo:Server, param2:int, param3:Boolean, param4:int, keyTime:int, key:ByteArray, param7:Baqifa, param8:String) {
         this.radezez=new Hugyqufyq();
         this.guhud=new Sprite();
         super();
         this.model=param7;
         map=new Map(this);
         addChild(map);
         gsc_=new RotMGActionMapper(this,serverToConnectTo,param2,param3,param4,keyTime,key,param8);
         mui_=new Vub(this);
         this.reki=new Chat();
         addChild(this.reki);
         this.rihoji=new Qumew();
         return;
      }

      public static function kypigoq(param1:Cinyl) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Ger = Giq.kid().getInstance(Ger);
         return;
      }

      private static function vinujecu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dog = Giq.kid().getInstance(Dog);
         return;
      }

      protected static const vaf:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.lyheq);

      public const rurusedi:Hugyqufyq = new Hugyqufyq(String,int);

      public const vyto:Hugyqufyq = new Hugyqufyq();

      public const ziby:Hugyqufyq = new Hugyqufyq(Player);

      public var reki:Chat;

      public var isNexus_:Boolean = false;

      public var rihoji:Qumew;

      public var duzo:RankText;

      public var pony:Teh;

      public var zinavy:Kofapije;

      public var pan:GiftStatusDisplay;

      public var lofylise:Lug;

      public var gero:Cibiqot;

      public var wajyn:Minura;

      public var radezez:Hugyqufyq;

      public var pitosad:Buquk;

      private var focus:GameObject;

      private var mugyr:int = 0;

      private var cecumomov:int = 0;

      private var gaquz:Boolean;

      private var dumujusu:uint = 4;

      private var guhud:DisplayObject;

      private var hujutifad:Number;

      override public function setFocus(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var param1:GameObject = (param1)||(map.player_);
         this.focus=param1;
         return;
      }

      override public function applyMapInfo(param1:Cinyl) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         map.setProps(param1.width_,param1.height_,param1.name_,param1.background_,param1.allowPlayerTeleport_,param1.showDisplays_);
         kypigoq(param1);
         return;
      }

      public function bel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         hudView=new Jyjimagi();
         hudView.x=600;
         addChild(hudView);
         return;
      }

      override public function initialize() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Rotahy = null;
         map.initialize();
         this.zinavy=new Kofapije(this);
         this.zinavy.x=594;
         this.zinavy.y=0;
         addChild(this.zinavy);
         this.vyto.dispatch();
         if(map.showDisplays_)
         {
            this.mylo();
         }
         if((this.pitosad.hatud())&&map.name_==Map.copyvy)
         {
            if(this.gero.lefizov())
            {
               this.wajyn.dispatch();
            }
            else
            {
               this.radezez.dispatch();
            }
            this.pitosad.momel++;
         }
         this.isNexus_=map.name_==Map.copyvy;
         var _loc1_:HttpClientWrapper = Giq.kid().getInstance(HttpClientWrapper);
         var _loc2_:Account = Giq.kid().getInstance(Account);
         var _loc3_:Object = 
            {
               game_net_user_id:_loc2_.zyz(),
               game_net:_loc2_.getAccountType(),
               play_platform:_loc2_.bicydyn()
            }
         ;
         Vuwewuc.hohohev(_loc3_,_loc2_.venupog());
         if(!(map.name_=="Kitchen")&&!(map.name_=="Tutorial")&&!(map.name_=="Nexus Explanation")&&UserConfig.data_.watchForTutorialExit==true)
         {
            UserConfig.data_.watchForTutorialExit=false;
            this.zyconaqug("rotmg.Marketing.track(\"tutorialComplete\")");
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
            if(UserConfig.data_.needsTutorial==true)
            {
               UserConfig.data_.watchForTutorialExit=true;
               this.zyconaqug("rotmg.Marketing.track(\"install\")");
               _loc3_["fteStepCompleted"]=100;
               _loc1_.sendRequest("/log/logFteStep",_loc3_);
            }
            this.riwatobu();
         }
         else
         {
            if(!(map.name_=="Kitchen")&&!(map.name_=="Nexus Explanation")&&!(map.name_=="Vault Explanation")&&!(map.name_=="Guild Explanation")&&!map.showDisplays_&&(UserConfig.data_.showProtips))
            {
               _loc4_=Giq.kid().getInstance(Rotahy);
            }
         }
         UserConfig.save();
         vinujecu();
         return;
      }

      private function mylo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kymuk();
         this.fyzigam();
         this.posidydu();
         this.ruzuwap();
         return;
      }

      private function ruzuwap() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pan=new GiftStatusDisplay();
         this.pan.x=6;
         this.pan.y=this.dumujusu+2;
         this.dumujusu=this.dumujusu+Litewev.cysawyv;
         addChild(this.pan);
         return;
      }

      private function posidydu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hujutifad=this.dumujusu+2;
         this.dumujusu=this.dumujusu+Litewev.cysawyv;
         this.gaku();
         return;
      }

      private function gaku() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.guhud.x=6;
         this.guhud.y=this.hujutifad;
         return;
      }

      public function nozomo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.evalIsNotInCombatMapArea())
         {
            this.viwiko(new Necof());
         }
         return;
      }

      public function ladufypac() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.evalIsNotInCombatMapArea())
         {
            this.viwiko(new PackageButton());
         }
         return;
      }

      private function viwiko(param1:DisplayObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.guhud=param1;
         addChild(this.guhud);
         this.gaku();
         return;
      }

      private function fyzigam() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pony=new Teh("",-1);
         this.pony.x=64;
         this.pony.y=6;
         addChild(this.pony);
         return;
      }

      private function kymuk() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.duzo=new RankText(-1,true,false);
         this.duzo.x=8;
         this.duzo.y=this.dumujusu;
         this.dumujusu=this.dumujusu+Litewev.cysawyv;
         addChild(this.duzo);
         return;
      }

      private function zyconaqug(param1:String) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
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

      private function riwatobu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         tutorial_=new Tutorial(this);
         addChild(tutorial_);
         return;
      }

      private function mase() : void {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc4_:* = NaN;
         var _loc7_:GameObject = null;
         var _loc8_:Putafyhil = null;
         if(!map||!map.player_)
         {
            return;
         }
         var _loc1_:Player = map.player_;
         var _loc2_:Number = Lekakyry.qofy;
         var _loc3_:Putafyhil = null;
         var _loc5_:Number = _loc1_.x_;
         var _loc6_:Number = _loc1_.y_;
         for each (_loc7_ in map.goDict_)
         {
            _loc8_=_loc7_ as Putafyhil;
            if(_loc8_)
            {
               if(Math.abs(_loc5_-_loc7_.x_)<Lekakyry.qofy||Math.abs(_loc6_-_loc7_.y_)<Lekakyry.qofy)
               {
                  _loc4_=PointUtil.picetyl(_loc7_.x_,_loc7_.y_,_loc5_,_loc6_);
                  if(_loc4_<Lekakyry.qofy&&_loc4_<_loc2_)
                  {
                     _loc2_=_loc4_;
                     _loc3_=_loc8_;
                  }
               }
            }
         }
         this.lofylise.qypat=_loc3_;
         return;
      }

      public function connect() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.gaquz)
         {
            this.gaquz=true;
            gsc_.connect();
            this.rihoji.start(this);
            lastUpdate_=getTimer();
            stage.addEventListener(Hemogusuj.MONEY_CHANGED,this.latoky);
            stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            Mejerine.jokipary(new Pykyv(100,this.mase));
         }
         return;
      }

      public function disconnect() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.gaquz)
         {
            this.gaquz=false;
            this.rihoji.stop();
            stage.removeEventListener(Hemogusuj.MONEY_CHANGED,this.latoky);
            stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            Mejerine.sini();
            map.dispose();
            Zet.clear();
            TextureRedrawer.clearCache();
            Projectile.dispose();
            gsc_.disconnect();
         }
         return;
      }

      private function latoky(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gsc_.checkCredits();
         return;
      }

      override public function evalIsNotInCombatMapArea() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return map.name_==Map.copyvy||map.name_==Map.dajamy||map.name_==Map.zisuhidi||map.name_==Map.nyz||map.name_==Map.qevahoba;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = NaN;
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_-lastUpdate_;
         if(this.rihoji.update(_loc3_))
         {
            closed.dispatch();
            return;
         }
         Mejerine.myp(_loc2_);
         this.mugyr=this.mugyr+_loc3_;
         this.cecumomov=this.cecumomov+1;
         if(this.mugyr>300000)
         {
            _loc7_=int(Math.round(1000*this.cecumomov/this.mugyr));
            GA.global().trackEvent("performance","frameRate",map.name_,_loc7_);
            this.cecumomov=0;
            this.mugyr=0;
         }
         var _loc4_:int = getTimer();
         map.update(_loc2_,_loc3_);
         this.rurusedi.dispatch("Map.update",getTimer()-_loc4_);
         camera_.update(_loc3_);
         var _loc5_:Player = map.player_;
         if(this.focus)
         {
            camera_.configureCamera(this.focus,_loc5_?_loc5_.ridyso():false);
            map.draw(camera_,_loc2_);
         }
         if(_loc5_!=null)
         {
            this.zinavy.draw(_loc5_.credits_,_loc5_.kotobi);
            this.ziby.dispatch(_loc5_);
            if(map.showDisplays_)
            {
               this.duzo.draw(_loc5_.numStars_);
               this.pony.draw(_loc5_.guildName_,_loc5_.guildRank_);
            }
            if(_loc5_.isPaused())
            {
               map.filters=[vaf];
               hudView.filters=[vaf];
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
         this.rurusedi.dispatch("GameSprite.loop",_loc6_);
         return;
      }

      public function hyrufyqer(param1:Boolean) : void {
         return;
      }
   }

}