package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Nukomesih;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import quqe.Kugupyder;
   import aaa.rotmg.i18n.I18nKeys;


   public class Sisinyta extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sisinyta(param1:Nukomesih, param2:Kugupyder) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.gs_=param1;
         var _loc3_:String = this.gs_.map.player_.name_;
         this.wazego=new TradeInventory(param1,_loc3_,param2.myItems_,true);
         this.wazego.x=14;
         this.wazego.y=0;
         this.wazego.addEventListener(Event.CHANGE,this.fijysi);
         addChild(this.wazego);
         this.vycijufig=new TradeInventory(param1,param2.yourName_,param2.yourItems_,false);
         this.vycijufig.x=14;
         this.vycijufig.y=174;
         addChild(this.vycijufig);
         this.ramuty=new Dogyqijec(16,I18nKeys.zomup,80);
         this.ramuty.addEventListener(MouseEvent.CLICK,this.lyv);
         this.ramuty.textChanged.addOnce(this.sukup);
         addChild(this.ramuty);
         this.fynukew=new Bivezup(16,80);
         this.fynukew.x=3*WIDTH/4-this.fynukew.vodudi/2;
         this.fynukew.addEventListener(MouseEvent.CLICK,this.lokeme);
         addChild(this.fynukew);
         this.wevy();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 200;

      public static const HEIGHT:int = 400;

      public var gs_:Nukomesih;

      private var wazego:TradeInventory;

      private var vycijufig:TradeInventory;

      private var ramuty:Dogyqijec;

      private var fynukew:Bivezup;

      private function sukup() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ramuty.x=WIDTH/4-this.ramuty.vodudi/2;
         this.ramuty.y=HEIGHT-this.ramuty.height-10;
         this.fynukew.y=this.ramuty.y;
         return;
      }

      public function giliput(param1:Vector.<Boolean>) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vycijufig.qytid(param1);
         this.wevy();
         return;
      }

      public function mozebef(param1:Vector.<Boolean>, param2:Vector.<Boolean>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if((this.wazego.cyziwugez(param1))&&(this.vycijufig.cyziwugez(param2)))
         {
            this.vycijufig.nidub(TradeInventory.kezed);
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(Event.ACTIVATE,this.sucipe);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(Event.ACTIVATE,this.sucipe);
         return;
      }

      private function sucipe(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fynukew.reset();
         return;
      }

      private function fijysi(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.changeTrade(this.wazego.byjigi());
         this.wevy();
         return;
      }

      private function lyv(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.cancelTrade();
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function lokeme(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.acceptTrade(this.wazego.byjigi(),this.vycijufig.byjigi());
         this.wazego.nidub(TradeInventory.kezed);
         return;
      }

      public function wevy() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:int = this.wazego.kam();
         var _loc2_:int = this.wazego.cet();
         var _loc3_:int = this.vycijufig.kam();
         var _loc4_:int = this.vycijufig.cet();
         var _loc5_:* = true;
         if(_loc3_-_loc1_-_loc2_>0)
         {
            this.wazego.nidub(TradeInventory.fis);
            _loc5_=false;
         }
         else
         {
            this.wazego.nidub(TradeInventory.godeje);
         }
         if(_loc1_-_loc3_-_loc4_>0)
         {
            this.vycijufig.nidub(TradeInventory.fis);
            _loc5_=false;
         }
         else
         {
            this.vycijufig.nidub(TradeInventory.bevevynu);
         }
         this.fynukew.reset();
         return;
      }
   }

}