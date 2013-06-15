package com.company.assembleegameclient.game
{
   import wipivyv.Syvaf;
   import sijizoh.Duq;
   import tezahusaq.Qawuwak;
   import tezahusaq.Hyqosadu;
   import flash.filters.ColorMatrixFilter;
   import com.company.util.MoreColorUtil;
   import mukyrosu.Qanyduk;
   import nytifawy.Chat;
   import com.company.assembleegameclient.ui.RankText;
   import com.company.assembleegameclient.ui.Kedilur;
   import kofaz.Rynomyd;
   import kofaz.GiftStatusDisplay;
   import pejycaj.ArenaLeaderboardButton;
   import pejycaj.Sihetyta;
   import pejycaj.Catykonu;
   import lemugo.Kaqywi;
   import jufu.Jawojicyw;
   import lafilow.Modokopy;
   import car.Levoge;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.display.DisplayObject;
   import wenono.Tewefem;
   import zalevatur.Qagyl;
   import com.company.assembleegameclient.map.Map;
   import gokyc.Rud;
   import pugem.Account;
   import com.company.util.Bycaqa;
   import aaa.RotmgParameters.RotmgParameters;
   import zutudytod.Burijedot;
   import pufelih.Kumamy;
   import tilo.PackageButton;
   import flash.external.ExternalInterface;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import com.company.assembleegameclient.objects.Gim;
   import com.company.assembleegameclient.objects.Player;
   import pilage.Patale;
   import com.company.util.PointUtil;
   import flash.utils.getTimer;
   import huv.Wofo;
   import flash.events.Event;
   import fudep.Joqi;
   import fudep.Kedor;
   import com.company.util.Zurawi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.assembleegameclient.objects.Projectile;
   import com.company.googleanalytics.GA;
   import jovurora.Server;
   import flash.utils.ByteArray;
   import lemugo.Wokycuku;
   import flash.display.Sprite;
   import ducojoryn.Wyrify;


   public class GameSprite extends Pajemiz
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function GameSprite(param1:Server, param2:int, param3:Boolean, param4:int, param5:int, param6:ByteArray, param7:Wokycuku, param8:String, param9:Boolean) {
         var _loc10_:* = false;
         var _loc11_:* = true;
         this.hamymol=new Qanyduk();
         this.cotifyhiw=new Sprite();
         super();
         this.model=param7;
         map=new Map(this);
         addChild(map);
         gsc_=new Wyrify(this,param1,param2,param3,param4,param5,param6,param8,param9);
         mui_=new Tewezezu(this);
         this.lawufuw=new Chat();
         addChild(this.lawufuw);
         this.dunyh=new Banudoha();
         return;
      }

      public static function dywek(param1:Syvaf) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Qawuwak = Duq.pamazo().getInstance(Qawuwak);
         return;
      }

      private static function jyruro() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Hyqosadu = Duq.pamazo().getInstance(Hyqosadu);
         return;
      }

      protected static const mopiby:ColorMatrixFilter = new ColorMatrixFilter(MoreColorUtil.fuguwo);

      public const bilizaw:Qanyduk = new Qanyduk(String,int);

      public const bomivul:Qanyduk = new Qanyduk();

      public const gisid:Qanyduk = new Qanyduk(Player);

      public var lawufuw:Chat;

      public var isNexus_:Boolean = false;

      public var dunyh:Banudoha;

      public var kyb:RankText;

      public var pyma:Kedilur;

      public var vysiqafep:Rynomyd;

      public var hec:GiftStatusDisplay;

      public var povukuqud:ArenaLeaderboardButton;

      public var zegekycaz:Sihetyta;

      public var roderys:Catykonu;

      public var fisokami:Kaqywi;

      public var wusoces:Jawojicyw;

      public var vupas:Modokopy;

      public var hamymol:Qanyduk;

      public var nuvet:Levoge;

      private var focus:GameObject;

      private var dupunafu:int = 0;

      private var fefemanul:int = 0;

      private var mevi:Boolean;

      private var jufyqys:uint = 4;

      private var cotifyhiw:DisplayObject;

      private var nuwity:Number;

      override public function setFocus(param1:GameObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var param1:GameObject = (param1)||(map.player_);
         this.focus=param1;
         return;
      }

      override public function applyMapInfo(param1:Syvaf) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         map.setProps(param1.width_,param1.height_,param1.name_,param1.background_,param1.allowPlayerTeleport_,param1.showDisplays_);
         dywek(param1);
         return;
      }

      public function vizuke() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         hudView=new Tewefem();
         hudView.x=600;
         addChild(hudView);
         return;
      }

      override public function initialize() : void {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:Qagyl = null;
         map.initialize();
         this.vysiqafep=new Rynomyd(this);
         this.vysiqafep.x=594;
         this.vysiqafep.y=0;
         addChild(this.vysiqafep);
         this.bomivul.dispatch();
         if(this.evalIsNotInCombatMapArea())
         {
            this.zihakove();
         }
         if(map.name_=="Arena")
         {
            this.wome();
            this.jymyton();
         }
         if((this.nuvet.rikah())&&map.name_==Map.nuwykop)
         {
            if(this.wusoces.hoqa())
            {
               this.vupas.dispatch();
            }
            else
            {
               this.hamymol.dispatch();
            }
            this.nuvet.numadydyp++;
         }
         this.isNexus_=map.name_==Map.nuwykop;
         var _loc1_:Rud = Duq.pamazo().getInstance(Rud);
         var _loc2_:Account = Duq.pamazo().getInstance(Account);
         var _loc3_:Object = 
            {
               game_net_user_id:_loc2_.tamy(),
               game_net:_loc2_.cug(),
               play_platform:_loc2_.rarofu()
            }
         ;
         Bycaqa.timokujo(_loc3_,_loc2_.pedavitu());
         if(!(map.name_=="Kitchen")&&!(map.name_=="Tutorial")&&!(map.name_=="Nexus Explanation")&&RotmgParameters.data_.watchForTutorialExit==true)
         {
            RotmgParameters.data_.watchForTutorialExit=false;
            this.suwyqi("rotmg.Marketing.track(\"tutorialComplete\")");
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
            if(RotmgParameters.data_.needsTutorial==true)
            {
               RotmgParameters.data_.watchForTutorialExit=true;
               this.suwyqi("rotmg.Marketing.track(\"install\")");
               _loc3_["fteStepCompleted"]=100;
               _loc1_.sendRequest("/log/logFteStep",_loc3_);
            }
            this.doj();
         }
         else
         {
            if(!(map.name_=="Arena")&&!(map.name_=="Kitchen")&&!(map.name_=="Nexus Explanation")&&!(map.name_=="Vault Explanation")&&!(map.name_=="Guild Explanation")&&!this.evalIsNotInCombatMapArea()&&(RotmgParameters.data_.showProtips))
            {
               _loc4_=Duq.pamazo().getInstance(Qagyl);
            }
         }
         RotmgParameters.save();
         jyruro();
         return;
      }

      private function zihakove() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ruqafij();
         this.qenesoda();
         this.fiduhy();
         this.tuduzyboc();
         this.mifem();
         return;
      }

      private function wome() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zegekycaz=new Sihetyta();
         this.zegekycaz.y=5;
         addChild(this.zegekycaz);
         return;
      }

      private function jymyton() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.roderys=new Catykonu();
         this.roderys.y=5;
         this.roderys.x=5;
         addChild(this.roderys);
         return;
      }

      private function mifem() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.povukuqud=new ArenaLeaderboardButton();
         this.povukuqud.x=300-this.povukuqud.width/2;
         this.povukuqud.y=5;
         addChild(this.povukuqud);
         return;
      }

      private function tuduzyboc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.hec=new GiftStatusDisplay();
         this.hec.x=6;
         this.hec.y=this.jufyqys+2;
         this.jufyqys=this.jufyqys+Burijedot.folufawul;
         addChild(this.hec);
         return;
      }

      private function fiduhy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nuwity=this.jufyqys+2;
         this.jufyqys=this.jufyqys+Burijedot.folufawul;
         this.lupyjor();
         return;
      }

      private function lupyjor() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cotifyhiw.x=6;
         this.cotifyhiw.y=this.nuwity;
         return;
      }

      public function mywysopaj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.evalIsNotInCombatMapArea())
         {
            this.dodivyvuh(new Kumamy());
         }
         return;
      }

      public function qutydig() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.evalIsNotInCombatMapArea())
         {
            this.dodivyvuh(new PackageButton());
         }
         return;
      }

      private function dodivyvuh(param1:DisplayObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cotifyhiw=param1;
         addChild(this.cotifyhiw);
         this.lupyjor();
         return;
      }

      private function qenesoda() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.pyma=new Kedilur("",-1);
         this.pyma.x=64;
         this.pyma.y=6;
         addChild(this.pyma);
         return;
      }

      private function ruqafij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kyb=new RankText(-1,true,false);
         this.kyb.x=8;
         this.kyb.y=this.jufyqys;
         this.jufyqys=this.jufyqys+Burijedot.folufawul;
         addChild(this.kyb);
         return;
      }

      private function suwyqi(param1:String) : void {
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

      private function doj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         tutorial_=new Tutorial(this);
         addChild(tutorial_);
         return;
      }

      private function pofytem() : void {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc4_:* = NaN;
         var _loc7_:GameObject = null;
         var _loc8_:Gim = null;
         if(!map||!map.player_)
         {
            return;
         }
         var _loc1_:Player = map.player_;
         var _loc2_:Number = Patale.kag;
         var _loc3_:Gim = null;
         var _loc5_:Number = _loc1_.x_;
         var _loc6_:Number = _loc1_.y_;
         for each (_loc7_ in map.goDict_)
         {
            _loc8_=_loc7_ as Gim;
            if(_loc8_)
            {
               if(Math.abs(_loc5_-_loc7_.x_)<Patale.kag||Math.abs(_loc6_-_loc7_.y_)<Patale.kag)
               {
                  _loc4_=PointUtil.nybomof(_loc7_.x_,_loc7_.y_,_loc5_,_loc6_);
                  if(_loc4_<Patale.kag&&_loc4_<_loc2_)
                  {
                     _loc2_=_loc4_;
                     _loc3_=_loc8_;
                  }
               }
            }
         }
         this.fisokami.gesoky=_loc3_;
         return;
      }

      public function connect() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.mevi)
         {
            this.mevi=true;
            gsc_.connect();
            this.dunyh.start(this);
            lastUpdate_=getTimer();
            stage.addEventListener(Wofo.MONEY_CHANGED,this.wyqamip);
            stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            Joqi.widenag(new Kedor(100,this.pofytem));
         }
         return;
      }

      public function disconnect() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.mevi)
         {
            this.mevi=false;
            this.dunyh.stop();
            stage.removeEventListener(Wofo.MONEY_CHANGED,this.wyqamip);
            stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
            Joqi.pymi();
            map.dispose();
            Zurawi.clear();
            TextureRedrawer.clearCache();
            Projectile.dispose();
            gsc_.disconnect();
         }
         return;
      }

      private function wyqamip(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gsc_.checkCredits();
         return;
      }

      override public function evalIsNotInCombatMapArea() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return map.name_==Map.nuwykop||map.name_==Map.lura||map.name_==Map.cilecyzi||map.name_==Map.sofyzuc||map.name_==Map.vezavagu;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = NaN;
         var _loc2_:int = getTimer();
         var _loc3_:int = _loc2_-lastUpdate_;
         if(this.dunyh.update(_loc3_))
         {
            closed.dispatch();
            return;
         }
         Joqi.pik(_loc2_);
         this.dupunafu=this.dupunafu+_loc3_;
         this.fefemanul=this.fefemanul+1;
         if(this.dupunafu>300000)
         {
            _loc7_=int(Math.round(1000*this.fefemanul/this.dupunafu));
            GA.global().trackEvent("performance","frameRate",map.name_,_loc7_);
            this.fefemanul=0;
            this.dupunafu=0;
         }
         var _loc4_:int = getTimer();
         map.update(_loc2_,_loc3_);
         this.bilizaw.dispatch("Map.update",getTimer()-_loc4_);
         camera_.update(_loc3_);
         var _loc5_:Player = map.player_;
         if(this.focus)
         {
            camera_.configureCamera(this.focus,_loc5_?_loc5_.nomico():false);
            map.draw(camera_,_loc2_);
         }
         if(_loc5_!=null)
         {
            this.vysiqafep.draw(_loc5_.credits_,_loc5_.qyp);
            this.gisid.dispatch(_loc5_);
            if(this.evalIsNotInCombatMapArea())
            {
               this.kyb.draw(_loc5_.numStars_);
               this.pyma.draw(_loc5_.guildName_,_loc5_.guildRank_);
            }
            if(_loc5_.isPaused())
            {
               map.filters=[mopiby];
               hudView.filters=[mopiby];
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
         this.bilizaw.dispatch("GameSprite.loop",_loc6_);
         return;
      }

      public function qynuqetav(param1:Boolean) : void {
         return;
      }
   }

}