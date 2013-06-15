package com.company.assembleegameclient.game
{
   import vevum.Stats;
   import flash.utils.Timer;
   import dicyl.Dadaga;
   import dicyl.Mukyhokot;
   import dicyl.Foqovu;
   import cerywij.Mupawij;
   import ziru.Boluzod;
   import dicyl.Rezymafab;
   import wahyqise.Tysyc;
   import micac.Josuba;
   import tefabezo.Fipuji;
   import dicyl.Degonazev;
   import flash.events.Event;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import pilage.Vysu;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.map.Square;
   import com.company.util.Coluf;
   import com.company.assembleegameclient.parameters.Parameters;
   import wahyqise.Bedac;
   import loradaby.Options;
   import flash.system.Capabilities;
   import flash.display.StageDisplayState;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import pumoc.Juc;
   import pilage.Patale;
   import ducojoryn.Zim;
   import sijizoh.Duq;
   import dyca.Mes;
   import daqun.Qobeta;


   public class Tewezezu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tewezezu(param1:GameSprite) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.gs_=param1;
         this.kukevived=new Timer(gijimab,1);
         this.kukevived.addEventListener(TimerEvent.TIMER_COMPLETE,this.pibo);
         this.gs_.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.gs_.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         var _loc2_:Mes = Duq.pamazo();
         this.nydefi=_loc2_.getInstance(Dadaga);
         this.daju=_loc2_.getInstance(Mukyhokot);
         this.kenuj=_loc2_.getInstance(Foqovu);
         this.zeqopy=_loc2_.getInstance(Boluzod);
         this.hicip=_loc2_.getInstance(Rezymafab);
         this.dugyno=_loc2_.getInstance(Tysyc);
         this.pyrikaky=_loc2_.getInstance(Josuba);
         this.qukacefi=_loc2_.getInstance(Fipuji);
         this.zaroloka=_loc2_.getInstance(Mupawij);
         this.joqaqydo=_loc2_.getInstance(Degonazev);
         var _loc3_:Qobeta = _loc2_.getInstance(Qobeta);
         this.wokowo=_loc3_.molul();
         return;
      }

      private static var piwewito:Stats = new Stats();

      private static const gijimab:uint = 175;

      private static var kah:Boolean = false;

      public var gs_:GameSprite;

      private var gydusojeg:Boolean = false;

      private var betaji:Boolean = false;

      private var bahyb:Boolean = false;

      private var tew:Boolean = false;

      private var cebo:Boolean = false;

      private var pocuhidaw:Boolean = false;

      private var qiq:Boolean = false;

      private var gese:Boolean = false;

      private var dene:Boolean = false;

      private var pida:Boolean = true;

      private var kukevived:Timer;

      private var tezi:uint;

      private var nydefi:Dadaga;

      private var daju:Mukyhokot;

      private var kenuj:Foqovu;

      private var zaroloka:Mupawij;

      private var zeqopy:Boluzod;

      private var hicip:Rezymafab;

      private var dugyno:Tysyc;

      private var pyrikaky:Josuba;

      private var qukacefi:Fipuji;

      private var joqaqydo:Degonazev;

      private var wokowo:Boolean;

      public function clearInput() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gydusojeg=false;
         this.betaji=false;
         this.bahyb=false;
         this.tew=false;
         this.cebo=false;
         this.pocuhidaw=false;
         this.qiq=false;
         this.gese=false;
         this.ludyfysor();
         return;
      }

      public function setEnablePlayerInput(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.pida!=param1)
         {
            this.pida=param1;
            this.clearInput();
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Stage = this.gs_.stage;
         _loc2_.addEventListener(Event.ACTIVATE,this.dydevo);
         _loc2_.addEventListener(Event.DEACTIVATE,this.fikepyti);
         _loc2_.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         _loc2_.addEventListener(KeyboardEvent.KEY_UP,this.luw);
         _loc2_.addEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys);
         this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gs_.map.addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         this.gs_.map.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Stage = this.gs_.stage;
         _loc2_.removeEventListener(Event.ACTIVATE,this.dydevo);
         _loc2_.removeEventListener(Event.DEACTIVATE,this.fikepyti);
         _loc2_.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         _loc2_.removeEventListener(KeyboardEvent.KEY_UP,this.luw);
         _loc2_.removeEventListener(MouseEvent.MOUSE_WHEEL,this.lyqesusys);
         this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP,this.honoraj);
         this.gs_.map.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function dydevo(param1:Event) : void {
         return;
      }

      private function fikepyti(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.clearInput();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = 0;
         var _loc5_:XML = null;
         var _loc2_:Player = this.gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         if(this.kukevived.running==false)
         {
            this.tezi=1;
            this.kukevived.start();
         }
         else
         {
            this.tezi++;
         }
         if(!this.pida)
         {
            return;
         }
         if(param1.shiftKey)
         {
            _loc4_=_loc2_.zosig[1];
            if(_loc4_==-1)
            {
               return;
            }
            _loc5_=ObjectLibrary.ziq[_loc4_];
            if(_loc5_==null||(_loc5_.hasOwnProperty("EndMpCost")))
            {
               return;
            }
            _loc2_.useAltWeapon(param1.localX,param1.localY,Vysu.jeselewyw);
            return;
         }
         doneAction(this.gs_,Tutorial.wil);
         var _loc3_:Number = Math.atan2(param1.localY,param1.localX);
         _loc2_.vot(_loc3_);
         this.qiq=true;
         return;
      }

      private function pibo(param1:TimerEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Point = null;
         if(this.tezi>1)
         {
            _loc2_=this.gs_.map.pSTopW(this.gs_.map.mouseX,this.gs_.map.mouseY);
         }
         return;
      }

      private function honoraj(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.qiq=false;
         var _loc2_:Player = this.gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         _loc2_.isShooting=false;
         return;
      }

      private function lyqesusys(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.delta>0)
         {
            this.zeqopy.dispatch(Boluzod.IN);
         }
         else
         {
            this.zeqopy.dispatch(Boluzod.OUT);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:Player = null;
         doneAction(this.gs_,Tutorial.lugelo);
         if((this.pida)&&((this.qiq)||(this.gese)))
         {
            _loc2_=Math.atan2(this.gs_.map.mouseY,this.gs_.map.mouseX);
            _loc3_=this.gs_.map.player_;
            if(_loc3_!=null)
            {
               _loc3_.vot(_loc2_);
            }
         }
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc4_:GameObject = null;
         var _loc5_:* = false;
         var _loc6_:Square = null;
         var _loc2_:Stage = this.gs_.stage;
         switch(null)
         {
            case Coluf.F1:
            case Coluf.F2:
            case Coluf.F3:
            case Coluf.F4:
            case Coluf.F5:
            case Coluf.F6:
            case Coluf.F7:
            case Coluf.F8:
            case Coluf.F9:
            case Coluf.F10:
            case Coluf.F11:
            case Coluf.F12:
            case Coluf.hymyvoc:
               break;
            default:
               if(_loc2_.focus!=null)
               {
                  return;
               }
               break;
         }
         var _loc3_:Player = this.gs_.map.player_;
         switch(param1.keyCode)
         {
            case Parameters.data_.moveUp:
               doneAction(this.gs_,Tutorial.zygy);
               this.bahyb=true;
               break;
            case Parameters.data_.moveDown:
               doneAction(this.gs_,Tutorial.sedo);
               this.tew=true;
               break;
            case Parameters.data_.moveLeft:
               doneAction(this.gs_,Tutorial.tulyhi);
               this.gydusojeg=true;
               break;
            case Parameters.data_.moveRight:
               doneAction(this.gs_,Tutorial.nuf);
               this.betaji=true;
               break;
            case Parameters.data_.rotateLeft:
               if(!Parameters.data_.allowRotation)
               {
                  break;
               }
               doneAction(this.gs_,Tutorial.sawag);
               this.cebo=true;
               break;
            case Parameters.data_.rotateRight:
               if(!Parameters.data_.allowRotation)
               {
                  break;
               }
               doneAction(this.gs_,Tutorial.qasana);
               this.pocuhidaw=true;
               break;
            case Parameters.data_.resetToDefaultCameraAngle:
               Parameters.data_.cameraAngle=Parameters.data_.defaultCameraAngle;
               Parameters.save();
               break;
            case Parameters.data_.useSpecial:
               _loc4_=this.gs_.map.player_;
               if(_loc4_==null)
               {
                  break;
               }
               if(!this.dene)
               {
                  _loc5_=_loc3_.useAltWeapon(this.gs_.map.mouseX,this.gs_.map.mouseY,Vysu.jeselewyw);
                  if(_loc5_)
                  {
                     this.dene=true;
                  }
               }
               break;
            case Parameters.data_.autofireToggle:
               this.gs_.map.player_.isShooting=this.gese=!this.gese;
               break;
            case Parameters.data_.useInvSlot1:
               this.useItem(4);
               break;
            case Parameters.data_.useInvSlot2:
               this.useItem(5);
               break;
            case Parameters.data_.useInvSlot3:
               this.useItem(6);
               break;
            case Parameters.data_.useInvSlot4:
               this.useItem(7);
               break;
            case Parameters.data_.useInvSlot5:
               this.useItem(8);
               break;
            case Parameters.data_.useInvSlot6:
               this.useItem(9);
               break;
            case Parameters.data_.useInvSlot7:
               this.useItem(10);
               break;
            case Parameters.data_.useInvSlot8:
               this.useItem(11);
               break;
            case Parameters.data_.useHealthPotion:
               if(this.dugyno.hotyzycyc(Tysyc.sanan).available)
               {
                  this.hicip.dispatch(new Bedac(Tysyc.sanan,Bedac.qivipuja));
               }
               break;
            case Parameters.data_.useMagicPotion:
               if(this.dugyno.hotyzycyc(Tysyc.lenem).available)
               {
                  this.hicip.dispatch(new Bedac(Tysyc.lenem,Bedac.qivipuja));
               }
               break;
            case Parameters.data_.miniMapZoomOut:
               this.zeqopy.dispatch(Boluzod.OUT);
               break;
            case Parameters.data_.miniMapZoomIn:
               this.zeqopy.dispatch(Boluzod.IN);
               break;
            case Parameters.data_.togglePerformanceStats:
               this.togglePerformanceStats();
               break;
            case Parameters.data_.escapeToNexus:
            case Parameters.data_.escapeToNexus2:
               this.joqaqydo.dispatch();
               this.gs_.gsc_.escape();
               Parameters.data_.needsRandomRealm=false;
               Parameters.save();
               break;
            case Parameters.data_.options:
               this.clearInput();
               this.qukacefi.gam.addChild(new Options(this.gs_));
               break;
            case Parameters.data_.toggleCentering:
               Parameters.data_.centerOnPlayer=!Parameters.data_.centerOnPlayer;
               Parameters.save();
               break;
            case Parameters.data_.toggleFullscreen:
               if(Capabilities.playerType=="Desktop")
               {
                  Parameters.data_.fullscreenMode=!Parameters.data_.fullscreenMode;
                  Parameters.save();
                  _loc2_.displayState=Parameters.data_.fullscreenMode?"fullScreenInteractive":StageDisplayState.NORMAL;
               }
               break;
            case Parameters.data_.switchTabs:
               this.zaroloka.dispatch();
               break;
            case Parameters.data_.testOne:
               break;
            case Parameters.data_.testTwo:
               break;
         }
         if(Parameters.regaj)
         {
            switch(param1.keyCode)
            {
               case Coluf.F2:
                  this.garat();
                  break;
               case Coluf.F3:
                  Parameters.cipiso=!Parameters.cipiso;
                  break;
               case Coluf.F4:
                  this.gs_.map.mapOverlay_.visible=!this.gs_.map.mapOverlay_.visible;
                  this.gs_.map.partyOverlay_.visible=!this.gs_.map.partyOverlay_.visible;
                  break;
            }
         }
         if(this.wokowo)
         {
            switch(param1.keyCode)
            {
               case Coluf.F6:
                  TextureRedrawer.clearCache();
                  Parameters.pofalogud=(Parameters.pofalogud+1)%7;
                  this.daju.dispatch(Juc.make(Parameters.kokapo,"Projectile Color Type: "+Parameters.pofalogud));
                  break;
               case Coluf.F7:
                  for each (_loc6_ in this.gs_.map.squares_)
                  {
                     if(_loc6_==null)
                     {
                     }
                     else
                     {
                        _loc6_.faces_.length=0;
                     }
                  }
                  Parameters.qasekiw=(Parameters.qasekiw+1)%2;
                  this.daju.dispatch(Juc.make(Parameters.wyfa,"Blend type: "+Parameters.qasekiw));
                  break;
               case Coluf.F8:
                  Parameters.data_.surveyDate=0;
                  Parameters.data_.needsSurvey=true;
                  Parameters.data_.playTimeLeftTillSurvey=5;
                  Parameters.data_.surveyGroup="testing";
                  break;
               case Coluf.F9:
                  Parameters.bonyge=!Parameters.bonyge;
                  break;
            }
         }
         this.ludyfysor();
         return;
      }

      private function luw(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case Parameters.data_.moveUp:
               this.bahyb=false;
               break;
            case Parameters.data_.moveDown:
               this.tew=false;
               break;
            case Parameters.data_.moveLeft:
               this.gydusojeg=false;
               break;
            case Parameters.data_.moveRight:
               this.betaji=false;
               break;
            case Parameters.data_.rotateLeft:
               this.cebo=false;
               break;
            case Parameters.data_.rotateRight:
               this.pocuhidaw=false;
               break;
            case Parameters.data_.useSpecial:
               if(this.dene)
               {
                  this.dene=false;
                  this.gs_.map.player_.useAltWeapon(this.gs_.map.mouseX,this.gs_.map.mouseY,Vysu.busuru);
               }
               break;
         }
         this.ludyfysor();
         return;
      }

      private function ludyfysor() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.gs_.map.player_;
         if(_loc1_!=null)
         {
            if(this.pida)
            {
               _loc1_.kezucez((this.pocuhidaw?1:0)-(this.cebo?1:0),(this.betaji?1:0)-(this.gydusojeg?1:0),(this.tew?1:0)-(this.bahyb?1:0));
            }
            else
            {
               _loc1_.kezucez(0,0,0);
            }
         }
         return;
      }

      private function useItem(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.pyrikaky.kina==Josuba.hicajy)
         {
            param1=param1+Patale.wiwydu;
         }
         Zim.wisunoc.useItem_new(this.gs_.map.player_,param1);
         return;
      }

      private function togglePerformanceStats() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.gs_.contains(piwewito))
         {
            this.gs_.removeChild(piwewito);
            this.gs_.removeChild(this.gs_.gsc_.jitterWatcher_);
            this.gs_.gsc_.disableJitterWatcher();
         }
         else
         {
            this.gs_.addChild(piwewito);
            this.gs_.gsc_.enableJitterWatcher();
            this.gs_.gsc_.jitterWatcher_.y=piwewito.height;
            this.gs_.addChild(this.gs_.gsc_.jitterWatcher_);
         }
         return;
      }

      private function garat() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Parameters.womo=!Parameters.womo;
         if(Parameters.womo)
         {
            this.gs_.hudView.visible=false;
            this.kenuj.dispatch(false);
         }
         else
         {
            this.gs_.hudView.visible=true;
            this.kenuj.dispatch(true);
         }
         return;
      }
   }

}