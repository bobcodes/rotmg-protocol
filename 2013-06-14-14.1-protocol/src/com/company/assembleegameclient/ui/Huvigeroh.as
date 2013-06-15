package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Pajemiz;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import wipivyv.Demem;
   import komi.Vibemod;


   public class Huvigeroh extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Huvigeroh(param1:Pajemiz, param2:Demem) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.gs_=param1;
         var _loc3_:String = this.gs_.map.player_.name_;
         this.zizohimav=new TradeInventory(param1,_loc3_,param2.myItems_,true);
         this.zizohimav.x=14;
         this.zizohimav.y=0;
         this.zizohimav.addEventListener(Event.CHANGE,this.wivuzyhe);
         addChild(this.zizohimav);
         this.nirak=new TradeInventory(param1,param2.yourName_,param2.yourItems_,false);
         this.nirak.x=14;
         this.nirak.y=174;
         addChild(this.nirak);
         this.ziboc=new Tivinu(16,Vibemod.citu,80);
         this.ziboc.addEventListener(MouseEvent.CLICK,this.rujuzyqog);
         this.ziboc.textChanged.addOnce(this.popezy);
         addChild(this.ziboc);
         this.winov=new Gusigi(16,80);
         this.winov.x=3*WIDTH/4-this.winov.qucehura/2;
         this.winov.addEventListener(MouseEvent.CLICK,this.tydununah);
         addChild(this.winov);
         this.runozuzod();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 200;

      public static const HEIGHT:int = 400;

      public var gs_:Pajemiz;

      private var zizohimav:TradeInventory;

      private var nirak:TradeInventory;

      private var ziboc:Tivinu;

      private var winov:Gusigi;

      private function popezy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ziboc.x=WIDTH/4-this.ziboc.qucehura/2;
         this.ziboc.y=HEIGHT-this.ziboc.height-10;
         this.winov.y=this.ziboc.y;
         return;
      }

      public function pymy(param1:Vector.<Boolean>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.nirak.denihuju(param1);
         this.runozuzod();
         return;
      }

      public function kogotumy(param1:Vector.<Boolean>, param2:Vector.<Boolean>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if((this.zizohimav.gobose(param1))&&(this.nirak.gobose(param2)))
         {
            this.nirak.dezylihy(TradeInventory.dojopico);
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(Event.ACTIVATE,this.dydevo);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(Event.ACTIVATE,this.dydevo);
         return;
      }

      private function dydevo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.winov.reset();
         return;
      }

      private function wivuzyhe(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.gsc_.changeTrade(this.zizohimav.qycosac());
         this.runozuzod();
         return;
      }

      private function rujuzyqog(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.cancelTrade();
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function tydununah(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.gsc_.acceptTrade(this.zizohimav.qycosac(),this.nirak.qycosac());
         this.zizohimav.dezylihy(TradeInventory.dojopico);
         return;
      }

      public function runozuzod() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:int = this.zizohimav.bycuma();
         var _loc2_:int = this.zizohimav.rok();
         var _loc3_:int = this.nirak.bycuma();
         var _loc4_:int = this.nirak.rok();
         var _loc5_:* = true;
         if(_loc3_-_loc1_-_loc2_>0)
         {
            this.zizohimav.dezylihy(TradeInventory.wihasuga);
            _loc5_=false;
         }
         else
         {
            this.zizohimav.dezylihy(TradeInventory.zozuwaw);
         }
         if(_loc1_-_loc3_-_loc4_>0)
         {
            this.nirak.dezylihy(TradeInventory.wihasuga);
            _loc5_=false;
         }
         else
         {
            this.nirak.dezylihy(TradeInventory.fawy);
         }
         this.winov.reset();
         return;
      }
   }

}