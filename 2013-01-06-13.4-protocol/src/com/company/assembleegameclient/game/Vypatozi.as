package com.company.assembleegameclient.game
{
[CLASS867]   import figoz.Stats;
   import flash.utils.Timer;
   import tusidywuq.Kehih;
   import tusidywuq.Selamehu;
   import tusidywuq.Lisybob;
   import dugahymu.Barehyr;
   import pymyb.Kynopyq;
   import tusidywuq.Vut;
   import guvakipe.Guc;
   import vinirudel.Heqodeno;
   import wyzoz.Fasud;
   import flash.events.Event;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import kuzycyw.Vofamoba;
   import com.company.assembleegameclient.tutorial.doneAction;
   import com.company.assembleegameclient.tutorial.Tutorial;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.map.Square;
   import com.company.util.Sojef;
   import com.company.assembleegameclient.parameters.Parameters;
   import guvakipe.Decybuvy;
   import cycygaj.Options;
   import flash.system.Capabilities;
   import flash.display.StageDisplayState;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import setuv.Vityvu;
   import kuzycyw.Cymydef;
   import sanijijiz.Cilym;
   import jutesesel.Qibigagal;
   import pogefeqeh.Wahovy;
   import natus.Hewoda;


   public class Vypatozi extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Vypatozi(param1:GameSprite) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.gs_=param1;
         this.tirin=new Timer(wygy,1);
         this.tirin.addEventListener(TimerEvent.TIMER_COMPLETE,this.vucoju);
         this.gs_.addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         this.gs_.addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         var _loc2_:Wahovy = Qibigagal.husuha();
         this.dahineta=_loc2_.getInstance(Kehih);
         this.rivu=_loc2_.getInstance(Selamehu);
         this.tydawimyt=_loc2_.getInstance(Lisybob);
         this.lyk=_loc2_.getInstance(Kynopyq);
         this.cugaq=_loc2_.getInstance(Vut);
         this.tutel=_loc2_.getInstance(Guc);
         this.kena=_loc2_.getInstance(Heqodeno);
         this.myticuleg=_loc2_.getInstance(Fasud);
         this.wupe=_loc2_.getInstance(Barehyr);
         var _loc3_:Hewoda = _loc2_.getInstance(Hewoda);
         this.wyfyqiqos=_loc3_.sol();
         return;
      }

      private static var jibolu:Stats = new Stats();

      private static const wygy:uint = 175;

      private static var mew:Boolean = false;

      public var gs_:GameSprite;

      private var timuk:Boolean = false;

      private var nekine:Boolean = false;

      private var leloce:Boolean = false;

      private var zaqam:Boolean = false;

      private var wewoqotoj:Boolean = false;

      private var pilolu:Boolean = false;

      private var wihelinis:Boolean = false;

      private var sysyhytip:Boolean = false;

      private var herivak:Boolean = false;

      private var qecawapyk:Boolean = true;

      private var tirin:Timer;

      private var quparozyw:uint;

      private var dahineta:Kehih;

      private var rivu:Selamehu;

      private var tydawimyt:Lisybob;

      private var wupe:Barehyr;

      private var lyk:Kynopyq;

      private var cugaq:Vut;

      private var tutel:Guc;

      private var kena:Heqodeno;

      private var myticuleg:Fasud;

      private var wyfyqiqos:Boolean;

      public function clearInput() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.timuk=false;
         this.nekine=false;
         this.leloce=false;
         this.zaqam=false;
         this.wewoqotoj=false;
         this.pilolu=false;
         this.wihelinis=false;
         this.sysyhytip=false;
         this.kyvo();
         return;
      }

      public function setEnablePlayerInput(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qecawapyk!=param1)
         {
            this.qecawapyk=param1;
            this.clearInput();
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Stage = this.gs_.stage;
         _loc2_.addEventListener(Event.ACTIVATE,this.pykom);
         _loc2_.addEventListener(Event.DEACTIVATE,this.micane);
         _loc2_.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         _loc2_.addEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         _loc2_.addEventListener(MouseEvent.MOUSE_WHEEL,this.jybep);
         this.gs_.map.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gs_.map.addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         this.gs_.map.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Stage = this.gs_.stage;
         _loc2_.removeEventListener(Event.ACTIVATE,this.pykom);
         _loc2_.removeEventListener(Event.DEACTIVATE,this.micane);
         _loc2_.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         _loc2_.removeEventListener(KeyboardEvent.KEY_UP,this.sywihyhih);
         _loc2_.removeEventListener(MouseEvent.MOUSE_WHEEL,this.jybep);
         this.gs_.map.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.gs_.map.removeEventListener(MouseEvent.MOUSE_UP,this.jefazus);
         this.gs_.map.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function pykom(param1:Event) : void {
         return;
      }

      private function micane(param1:Event) : void {
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
         if(this.tirin.running==false)
         {
            this.quparozyw=1;
            this.tirin.start();
         }
         else
         {
            this.quparozyw++;
         }
         if(!this.qecawapyk)
         {
            return;
         }
         if(param1.shiftKey)
         {
            _loc4_=_loc2_.wasidu[1];
            if(_loc4_==-1)
            {
               return;
            }
            _loc5_=ObjectLibrary.zedij[_loc4_];
            if(_loc5_==null||(_loc5_.hasOwnProperty("EndMpCost")))
            {
               return;
            }
            _loc2_.useAltWeapon(param1.localX,param1.localY,Vofamoba.gukyhugu);
            return;
         }
         doneAction(this.gs_,Tutorial.jybi);
         var _loc3_:Number = Math.atan2(param1.localY,param1.localX);
         _loc2_.sihudesev(_loc3_);
         this.wihelinis=true;
         return;
      }

      private function vucoju(param1:TimerEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Point = null;
         if(this.quparozyw>1)
         {
            _loc2_=this.gs_.map.pSTopW(this.gs_.map.mouseX,this.gs_.map.mouseY);
         }
         return;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.wihelinis=false;
         var _loc2_:Player = this.gs_.map.player_;
         if(_loc2_==null)
         {
            return;
         }
         _loc2_.isShooting=false;
         return;
      }

      private function jybep(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.delta>0)
         {
            this.lyk.dispatch(Kynopyq.IN);
         }
         else
         {
            this.lyk.dispatch(Kynopyq.OUT);
         }
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = NaN;
         var _loc3_:Player = null;
         doneAction(this.gs_,Tutorial.jyrucelyd);
         if((this.qecawapyk)&&((this.wihelinis)||(this.sysyhytip)))
         {
            _loc2_=Math.atan2(this.gs_.map.mouseY,this.gs_.map.mouseX);
            _loc3_=this.gs_.map.player_;
            if(_loc3_!=null)
            {
               _loc3_.sihudesev(_loc2_);
            }
         }
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc4_:GameObject = null;
         var _loc5_:* = false;
         var _loc6_:Square = null;
         var _loc2_:Stage = this.gs_.stage;
         switch(null)
         {
            case Sojef.F1:
            case Sojef.F2:
            case Sojef.F3:
            case Sojef.F4:
            case Sojef.F5:
            case Sojef.F6:
            case Sojef.F7:
            case Sojef.F8:
            case Sojef.F9:
            case Sojef.F10:
            case Sojef.F11:
            case Sojef.F12:
            case Sojef.zejed:
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
            case Parameters.data_.moveUp:
               doneAction(this.gs_,Tutorial.bowo);
               this.leloce=true;
               break;
            case Parameters.data_.moveDown:
               doneAction(this.gs_,Tutorial.dyjis);
               this.zaqam=true;
               break;
            case Parameters.data_.moveLeft:
               doneAction(this.gs_,Tutorial.nuji);
               this.timuk=true;
               break;
            case Parameters.data_.moveRight:
               doneAction(this.gs_,Tutorial.fazizugu);
               this.nekine=true;
               break;
            case Parameters.data_.rotateLeft:
               if(!Parameters.data_.allowRotation)
               {
               }
               else
               {
                  doneAction(this.gs_,Tutorial.cis);
                  this.wewoqotoj=true;
               }
               break;
            case Parameters.data_.rotateRight:
               if(!Parameters.data_.allowRotation)
               {
               }
               else
               {
                  doneAction(this.gs_,Tutorial.wofywebon);
                  this.pilolu=true;
               }
               break;
            case Parameters.data_.resetToDefaultCameraAngle:
               Parameters.data_.cameraAngle=Parameters.data_.defaultCameraAngle;
               Parameters.save();
               break;
            case Parameters.data_.useSpecial:
               _loc4_=this.gs_.map.player_;
               if(_loc4_==null)
               {
               }
               else
               {
                  if(!this.herivak)
                  {
                     _loc5_=_loc3_.useAltWeapon(this.gs_.map.mouseX,this.gs_.map.mouseY,Vofamoba.gukyhugu);
                     if(_loc5_)
                     {
                        this.herivak=true;
                     }
                  }
               }
               break;
            case Parameters.data_.autofireToggle:
               this.gs_.map.player_.isShooting=this.sysyhytip=!this.sysyhytip;
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
               if(this.tutel.ciwuta(Guc.deg).available)
               {
                  this.cugaq.dispatch(new Decybuvy(Guc.deg,Decybuvy.ruco));
               }
               break;
            case Parameters.data_.useMagicPotion:
               if(this.tutel.ciwuta(Guc.jypaluw).available)
               {
                  this.cugaq.dispatch(new Decybuvy(Guc.jypaluw,Decybuvy.ruco));
               }
               break;
            case Parameters.data_.miniMapZoomOut:
               this.lyk.dispatch(Kynopyq.OUT);
               break;
            case Parameters.data_.miniMapZoomIn:
               this.lyk.dispatch(Kynopyq.IN);
               break;
            case Parameters.data_.togglePerformanceStats:
               this.togglePerformanceStats();
               break;
            case Parameters.data_.escapeToNexus:
            case Parameters.data_.escapeToNexus2:
               this.gs_.gsc_.escape();
               Parameters.data_.needsRandomRealm=false;
               Parameters.save();
               break;
            case Parameters.data_.options:
               this.clearInput();
               this.myticuleg.qywemuwi.addChild(new Options(this.gs_));
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
            case Parameters.data_.toggleHUDTabStrip:
               this.wupe.dispatch();
               break;
            case Parameters.data_.testOne:
               break;
            case Parameters.data_.testTwo:
               break;
         }
         if(Parameters.jyw)
         {
            switch(param1.keyCode)
            {
               case Sojef.F2:
                  this.dewun();
                  break;
               case Sojef.F3:
                  Parameters.jelu=!Parameters.jelu;
                  break;
               case Sojef.F4:
                  this.gs_.map.mapOverlay_.visible=!this.gs_.map.mapOverlay_.visible;
                  this.gs_.map.partyOverlay_.visible=!this.gs_.map.partyOverlay_.visible;
                  break;
            }
         }
         if(this.wyfyqiqos)
         {
            switch(param1.keyCode)
            {
               case Sojef.F6:
                  TextureRedrawer.clearCache();
                  Parameters.toqodyfyv=(Parameters.toqodyfyv+1)%7;
                  this.rivu.dispatch(Vityvu.make(Parameters.timepimow,"Projectile Color Type: "+Parameters.toqodyfyv));
                  break;
               case Sojef.F7:
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
                  Parameters.nagop=(Parameters.nagop+1)%2;
                  this.rivu.dispatch(Vityvu.make(Parameters.pyha,"Blend type: "+Parameters.nagop));
                  break;
               case Sojef.F8:
                  Parameters.data_.surveyDate=0;
                  Parameters.data_.needsSurvey=true;
                  Parameters.data_.playTimeLeftTillSurvey=5;
                  Parameters.data_.surveyGroup="testing";
                  break;
               case Sojef.F9:
                  Parameters.nynipen=!Parameters.nynipen;
                  break;
            }
         }
         this.kyvo();
         return;
      }

      private function sywihyhih(param1:KeyboardEvent) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         switch(null)
         {
            case Parameters.data_.moveUp:
               this.leloce=false;
               break;
            case Parameters.data_.moveDown:
               this.zaqam=false;
               break;
            case Parameters.data_.moveLeft:
               this.timuk=false;
               break;
            case Parameters.data_.moveRight:
               this.nekine=false;
               break;
            case Parameters.data_.rotateLeft:
               this.wewoqotoj=false;
               break;
            case Parameters.data_.rotateRight:
               this.pilolu=false;
               break;
            case Parameters.data_.useSpecial:
               if(this.herivak)
               {
                  this.herivak=false;
                  this.gs_.map.player_.useAltWeapon(this.gs_.map.mouseX,this.gs_.map.mouseY,Vofamoba.lagopulo);
               }
               break;
         }
         this.kyvo();
         return;
      }

      private function kyvo() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Player = this.gs_.map.player_;
         if(_loc1_!=null)
         {
            if(this.qecawapyk)
            {
               _loc1_.jur((this.pilolu?1:0)-(this.wewoqotoj?1:0),(this.nekine?1:0)-(this.timuk?1:0),(this.zaqam?1:0)-(this.leloce?1:0));
            }
            else
            {
               _loc1_.jur(0,0,0);
            }
         }
         return;
      }

      private function useItem(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.kena.bykapise==Heqodeno.lazyp)
         {
            param1=param1+Cymydef.sasusa;
         }
         Cilym.toryfuq.useItem_new(this.gs_.map.player_,param1);
         return;
      }

      private function togglePerformanceStats() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.gs_.contains(jibolu))
         {
            this.gs_.removeChild(jibolu);
            this.gs_.removeChild(this.gs_.gsc_.jitterWatcher_);
            this.gs_.gsc_.disableJitterWatcher();
         }
         else
         {
            this.gs_.addChild(jibolu);
            this.gs_.gsc_.enableJitterWatcher();
            this.gs_.gsc_.jitterWatcher_.y=jibolu.height;
            this.gs_.addChild(this.gs_.gsc_.jitterWatcher_);
         }
         return;
      }

      private function dewun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Parameters.pevabak=!Parameters.pevabak;
         if(Parameters.pevabak)
         {
            this.gs_.hudView.visible=false;
            this.tydawimyt.dispatch(false);
         }
         else
         {
            this.gs_.hudView.visible=true;
            this.tydawimyt.dispatch(true);
         }
         return;
      }
   }
[/CLASS]
}