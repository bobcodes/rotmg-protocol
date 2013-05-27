package com.company.assembleegameclient.game
{
   import fatehymo.Stats;
   import flash.utils.Timer;
   import zubamyki.Bulahu;
   import zubamyki.Sywyvu;
   import zubamyki.Tegahol;
   import qefinah.Gylotu;
   import diweli.Mopotyru;
   import zubamyki.Canypa;
   import cuwyg.Dewydo;
   import fom.Lihivak;
   import nitotohyk.Zyqyt;
   import flash.events.Event;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import pirus.Rula;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.map.Square;
   import com.company.util.Kiv;
   import aaa.rotmg.config.UserConfig;
   import cuwyg.Giri;
   import gyrake.Options;
   import flash.system.Capabilities;
   import flash.display.StageDisplayState;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import pepyca.Depagy;
   import pirus.Lekakyry;
   import aaa.rotmg.action.mapping.RotMGActionMapperAbstract;
   import jag.Giq;
   import kyco.Nun;
   import cucowury.Vylasy;


   public class Vub extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vub(param1:GameSprite) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.gs_=param1;
         this.kav=new Timer(dymeha,1);
         this.kav.addEventListener(TimerEvent.TIMER_COMPLETE,this.toz);
         this.gs_.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.gs_.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         var _loc2_:Nun = Giq.kid();
         this.jolyga=_loc2_.getInstance(Bulahu);
         this.fyve=_loc2_.getInstance(Sywyvu);
         this.gedi=_loc2_.getInstance(Tegahol);
         this.wudune=_loc2_.getInstance(Mopotyru);
         this.fulerus=_loc2_.getInstance(Canypa);
         this.gihopuheg=_loc2_.getInstance(Dewydo);
         this.pog=_loc2_.getInstance(Lihivak);
         this.dom=_loc2_.getInstance(Zyqyt);
         this.rinumeho=_loc2_.getInstance(Gylotu);
         var _loc3_:Vylasy = _loc2_.getInstance(Vylasy);
         this.dewozo=_loc3_.sonyh();
         return;
      }

      private static var zaf:Stats = new Stats();

      private static const dymeha:uint = 175;

      private static var vosere:Boolean = false;

      public var gs_:GameSprite;

      private var gawagah:Boolean = false;

      private var davem:Boolean = false;

      private var qaqowewu:Boolean = false;

      private var fyfokeqo:Boolean = false;

      private var mebaj:Boolean = false;

      private var siqu:Boolean = false;

      private var cutogufos:Boolean = false;

      private var pip:Boolean = false;

      private var sovid:Boolean = false;

      private var bew:Boolean = true;

      private var kav:Timer;

      private var dojiqac:uint;

      private var jolyga:Bulahu;

      private var fyve:Sywyvu;

      private var gedi:Tegahol;

      private var rinumeho:Gylotu;

      private var wudune:Mopotyru;

      private var fulerus:Canypa;

      private var gihopuheg:Dewydo;

      private var pog:Lihivak;

      private var dom:Zyqyt;

      private var dewozo:Boolean;

      public function clearInput() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.gawagah=false;
         this.davem=false;
         this.qaqowewu=false;
         this.fyfokeqo=false;
         this.mebaj=false;
         this.siqu=false;
         this.cutogufos=false;
         this.pip=false;
         this.durehazuj();
         return;
      }

      public function setEnablePlayerInput(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.bew!=param1)
         {
            this.bew=param1;
            this.clearInput();
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Stage = this.gs_.stage;
         _loc2_.addEventListener(Event.ACTIVATE,this.sucipe);
         _loc2_.addEventListener(Event.DEACTIVATE,this.memelo);
         _loc2_.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         _loc2_.addEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         _loc2_.addEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb);
         this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gs_.map.addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         this.gs_.map.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Stage = this.gs_.stage;
         _loc2_.removeEventListener(Event.ACTIVATE,this.sucipe);
         _loc2_.removeEventListener(Event.DEACTIVATE,this.memelo);
         _loc2_.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         _loc2_.removeEventListener(KeyboardEvent.KEY_UP,this.seqedu);
         _loc2_.removeEventListener(MouseEvent.MOUSE_WHEEL,this.fapiveb);
         this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP,this.gomivy);
         this.gs_.map.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function sucipe(param1:Event) : void {
         return;
      }

      private function memelo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.clearInput();
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:* = 0;
         var _loc5_:XML = null;
         var _loc2_:Player = this.gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         if(this.kav.running==false)
         {
            this.dojiqac=1;
            this.kav.start();
         }
         else
         {
            this.dojiqac++;
         }
         if(!this.bew)
         {
            return;
         }
         if(param1.shiftKey)
         {
            _loc4_=_loc2_.jevuqike[1];
            if(_loc4_==-1)
            {
               return;
            }
            _loc5_=ObjectLibrary.tem[_loc4_];
            if(_loc5_==null||(_loc5_.hasOwnProperty("EndMpCost")))
            {
               return;
            }
            _loc2_.useAltWeapon(param1.localX,param1.localY,Rula.qurynis);
            return;
         }
         doneAction(this.gs_,Tutorial.gepud);
         var _loc3_:Number = Math.atan2(param1.localY,param1.localX);
         _loc2_.besec(_loc3_);
         this.cutogufos=true;
         return;
      }

      private function toz(param1:TimerEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Point = null;
         if(this.dojiqac>1)
         {
            _loc2_=this.gs_.map.pSTopW(this.gs_.map.mouseX,this.gs_.map.mouseY);
         }
         return;
      }

      private function gomivy(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.cutogufos=false;
         var _loc2_:Player = this.gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         _loc2_.qibe=false;
         return;
      }

      private function fapiveb(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.delta>0)
         {
            this.wudune.dispatch(Mopotyru.IN);
         }
         else
         {
            this.wudune.dispatch(Mopotyru.OUT);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:Player = null;
         doneAction(this.gs_,Tutorial.tob);
         if((this.bew)&&((this.cutogufos)||(this.pip)))
         {
            _loc2_=Math.atan2(this.gs_.map.mouseY,this.gs_.map.mouseX);
            _loc3_=this.gs_.map.player_;
            if(_loc3_!=null)
            {
               _loc3_.besec(_loc2_);
            }
         }
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc4_:GameObject = null;
         var _loc5_:* = false;
         var _loc6_:Square = null;
         var _loc2_:Stage = this.gs_.stage;
         switch(param1.keyCode)
         {
            case Kiv.F1:
            case Kiv.F2:
            case Kiv.F3:
            case Kiv.F4:
            case Kiv.F5:
            case Kiv.F6:
            case Kiv.F7:
            case Kiv.F8:
            case Kiv.F9:
            case Kiv.F10:
            case Kiv.F11:
            case Kiv.F12:
            case Kiv.myvup:
               break;
            default:
               if(_loc2_.focus!=null)
               {
                  return;
               }
         }
         var _loc3_:Player = this.gs_.map.player_;
         switch(param1.keyCode)
         {
            case UserConfig.data_.moveUp:
               doneAction(this.gs_,Tutorial.wosegin);
               this.qaqowewu=true;
               break;
            case UserConfig.data_.moveDown:
               doneAction(this.gs_,Tutorial.qamy);
               this.fyfokeqo=true;
               break;
            case UserConfig.data_.moveLeft:
               doneAction(this.gs_,Tutorial.rukirivu);
               this.gawagah=true;
               break;
            case UserConfig.data_.moveRight:
               doneAction(this.gs_,Tutorial.wywyw);
               this.davem=true;
               break;
            case UserConfig.data_.rotateLeft:
               if(!UserConfig.data_.allowRotation)
               {
               }
               else
               {
                  doneAction(this.gs_,Tutorial.tiq);
                  this.mebaj=true;
               }
               break;
            case UserConfig.data_.rotateRight:
               if(!UserConfig.data_.allowRotation)
               {
               }
               else
               {
                  doneAction(this.gs_,Tutorial.vun);
                  this.siqu=true;
               }
               break;
            case UserConfig.data_.resetToDefaultCameraAngle:
               UserConfig.data_.cameraAngle=UserConfig.data_.defaultCameraAngle;
               UserConfig.save();
               break;
            case UserConfig.data_.useSpecial:
               _loc4_=this.gs_.map.player_;
               if(_loc4_==null)
               {
               }
               else
               {
                  if(!this.sovid)
                  {
                     _loc5_=_loc3_.useAltWeapon(this.gs_.map.mouseX,this.gs_.map.mouseY,Rula.qurynis);
                     if(_loc5_)
                     {
                        this.sovid=true;
                     }
                  }
               }
               break;
            case UserConfig.data_.autofireToggle:
               this.pip=!this.pip;
               break;
            case UserConfig.data_.useInvSlot1:
               this.useItem(4);
               break;
            case UserConfig.data_.useInvSlot2:
               this.useItem(5);
               break;
            case UserConfig.data_.useInvSlot3:
               this.useItem(6);
               break;
            case UserConfig.data_.useInvSlot4:
               this.useItem(7);
               break;
            case UserConfig.data_.useInvSlot5:
               this.useItem(8);
               break;
            case UserConfig.data_.useInvSlot6:
               this.useItem(9);
               break;
            case UserConfig.data_.useInvSlot7:
               this.useItem(10);
               break;
            case UserConfig.data_.useInvSlot8:
               this.useItem(11);
               break;
            case UserConfig.data_.useHealthPotion:
               if(this.gihopuheg.bomokic(Dewydo.mokikeqa).available)
               {
                  this.fulerus.dispatch(new Giri(Dewydo.mokikeqa,Giri.bywiqe));
               }
               break;
            case UserConfig.data_.useMagicPotion:
               if(this.gihopuheg.bomokic(Dewydo.rywihuh).available)
               {
                  this.fulerus.dispatch(new Giri(Dewydo.rywihuh,Giri.bywiqe));
               }
               break;
            case UserConfig.data_.miniMapZoomOut:
               this.wudune.dispatch(Mopotyru.OUT);
               break;
            case UserConfig.data_.miniMapZoomIn:
               this.wudune.dispatch(Mopotyru.IN);
               break;
            case UserConfig.data_.togglePerformanceStats:
               this.togglePerformanceStats();
               break;
            case UserConfig.data_.escapeToNexus:
            case UserConfig.data_.escapeToNexus2:
               this.gs_.gsc_.escape();
               UserConfig.data_.needsRandomRealm=false;
               UserConfig.save();
               break;
            case UserConfig.data_.options:
               this.clearInput();
               this.dom.sofigizo.addChild(new Options(this.gs_));
               break;
            case UserConfig.data_.toggleCentering:
               UserConfig.data_.centerOnPlayer=!UserConfig.data_.centerOnPlayer;
               UserConfig.save();
               break;
            case UserConfig.data_.toggleFullscreen:
               if(Capabilities.playerType=="Desktop")
               {
                  UserConfig.data_.fullscreenMode=!UserConfig.data_.fullscreenMode;
                  UserConfig.save();
                  _loc2_.displayState=UserConfig.data_.fullscreenMode?"fullScreenInteractive":StageDisplayState.NORMAL;
               }
               break;
            case UserConfig.data_.toggleHUDTabStrip:
               this.rinumeho.dispatch();
               break;
            case UserConfig.data_.testOne:
               break;
            case UserConfig.data_.testTwo:
               break;
         }
         if(UserConfig.fyj)
         {
            switch(param1.keyCode)
            {
               case Kiv.F2:
                  this.kyporire();
                  break;
               case Kiv.F3:
                  UserConfig.wume=!UserConfig.wume;
                  break;
               case Kiv.F4:
                  this.gs_.map.mapOverlay_.visible=!this.gs_.map.mapOverlay_.visible;
                  this.gs_.map.partyOverlay_.visible=!this.gs_.map.partyOverlay_.visible;
                  break;
            }
         }
         if(this.dewozo)
         {
            switch(param1.keyCode)
            {
               case Kiv.F6:
                  TextureRedrawer.clearCache();
                  UserConfig.gami=(UserConfig.gami+1)%7;
                  this.fyve.dispatch(Depagy.make(UserConfig.gez,"Projectile Color Type: "+UserConfig.gami));
                  break;
               case Kiv.F7:
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
                  UserConfig.hebirusi=(UserConfig.hebirusi+1)%2;
                  this.fyve.dispatch(Depagy.make(UserConfig.pynezad,"Blend type: "+UserConfig.hebirusi));
                  break;
               case Kiv.F8:
                  UserConfig.data_.surveyDate=0;
                  UserConfig.data_.needsSurvey=true;
                  UserConfig.data_.playTimeLeftTillSurvey=5;
                  UserConfig.data_.surveyGroup="testing";
                  break;
               case Kiv.F9:
                  UserConfig.pifaruzyr=!UserConfig.pifaruzyr;
                  break;
            }
         }
         this.durehazuj();
         return;
      }

      private function seqedu(param1:KeyboardEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         switch(param1.keyCode)
         {
            case UserConfig.data_.moveUp:
               this.qaqowewu=false;
               break;
            case UserConfig.data_.moveDown:
               this.fyfokeqo=false;
               break;
            case UserConfig.data_.moveLeft:
               this.gawagah=false;
               break;
            case UserConfig.data_.moveRight:
               this.davem=false;
               break;
            case UserConfig.data_.rotateLeft:
               this.mebaj=false;
               break;
            case UserConfig.data_.rotateRight:
               this.siqu=false;
               break;
            case UserConfig.data_.useSpecial:
               if(this.sovid)
               {
                  this.sovid=false;
                  this.gs_.map.player_.useAltWeapon(this.gs_.map.mouseX,this.gs_.map.mouseY,Rula.vogi);
               }
               break;
         }
         this.durehazuj();
         return;
      }

      private function durehazuj() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.gs_.map.player_;
         if(_loc1_!=null)
         {
            if(this.bew)
            {
               _loc1_.myvufoly((this.siqu?1:0)-(this.mebaj?1:0),(this.davem?1:0)-(this.gawagah?1:0),(this.fyfokeqo?1:0)-(this.qaqowewu?1:0));
            }
            else
            {
               _loc1_.myvufoly(0,0,0);
            }
         }
         return;
      }

      private function useItem(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.pog.digyqy==Lihivak.vosuqezem)
         {
            param1=param1+Lekakyry.mucitify;
         }
         RotMGActionMapperAbstract.worunyjub.useItem_new(this.gs_.map.player_,param1);
         return;
      }

      private function togglePerformanceStats() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.gs_.contains(zaf))
         {
            this.gs_.removeChild(zaf);
            this.gs_.removeChild(this.gs_.gsc_.jitterWatcher_);
            this.gs_.gsc_.disableJitterWatcher();
         }
         else
         {
            this.gs_.addChild(zaf);
            this.gs_.gsc_.enableJitterWatcher();
            this.gs_.gsc_.jitterWatcher_.y=zaf.height;
            this.gs_.addChild(this.gs_.gsc_.jitterWatcher_);
         }
         return;
      }

      private function kyporire() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         UserConfig.gyry=!UserConfig.gyry;
         if(UserConfig.gyry)
         {
            this.gs_.hudView.visible=false;
            this.gedi.dispatch(false);
         }
         else
         {
            this.gs_.hudView.visible=true;
            this.gedi.dispatch(true);
         }
         return;
      }
   }

}