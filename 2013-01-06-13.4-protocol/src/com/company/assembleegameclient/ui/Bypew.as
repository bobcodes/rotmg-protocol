package com.company.assembleegameclient.ui
{
[CLASS1050]   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Tosahafu;
   import __AS3__.vec.Vector;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import mywyvuryw.Raja;
   import haqakel.Kefyfa;


   public class Bypew extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Bypew(param1:Tosahafu, param2:Raja) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.gs_=param1;
         var _loc3_:String = this.gs_.map.player_.name_;
         this.kejulupe=new TradeInventory(param1,_loc3_,param2.myItems_,true);
         this.kejulupe.x=14;
         this.kejulupe.y=0;
         this.kejulupe.addEventListener(Event.CHANGE,this.rokepeh);
         addChild(this.kejulupe);
         this.mij=new TradeInventory(param1,param2.yourName_,param2.yourItems_,false);
         this.mij.x=14;
         this.mij.y=174;
         addChild(this.mij);
         this.huze=new Cid(16,Kefyfa.qyhyquc,80);
         this.huze.addEventListener(MouseEvent.CLICK,this.lizumajy);
         this.huze.textChanged.addOnce(this.tomedi);
         addChild(this.huze);
         this.cujoqubo=new Sigadu(16,80);
         this.cujoqubo.x=3*WIDTH/4-this.cujoqubo.rocu/2;
         this.cujoqubo.addEventListener(MouseEvent.CLICK,this.howyjacul);
         addChild(this.cujoqubo);
         this.ronapoher();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 200;

      public static const HEIGHT:int = 400;

      public var gs_:Tosahafu;

      private var kejulupe:TradeInventory;

      private var mij:TradeInventory;

      private var huze:Cid;

      private var cujoqubo:Sigadu;

      private function tomedi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.huze.x=WIDTH/4-this.huze.rocu/2;
         this.huze.y=HEIGHT-this.huze.height-10;
         this.cujoqubo.y=this.huze.y;
         return;
      }

      public function tupot(param1:Vector.<Boolean>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mij.bacovocyz(param1);
         this.ronapoher();
         return;
      }

      public function rumasuhas(param1:Vector.<Boolean>, param2:Vector.<Boolean>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if((this.kejulupe.birygysyn(param1))&&(this.mij.birygysyn(param2)))
         {
            this.mij.ritoji(TradeInventory.lerewa);
         }
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.addEventListener(Event.ACTIVATE,this.pykom);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(Event.ACTIVATE,this.pykom);
         return;
      }

      private function pykom(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cujoqubo.reset();
         return;
      }

      private function rokepeh(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.changeTrade(this.kejulupe.vypiqyq());
         this.ronapoher();
         return;
      }

      private function lizumajy(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.cancelTrade();
         dispatchEvent(new Event(Event.CANCEL));
         return;
      }

      private function howyjacul(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.acceptTrade(this.kejulupe.vypiqyq(),this.mij.vypiqyq());
         this.kejulupe.ritoji(TradeInventory.lerewa);
         return;
      }

      public function ronapoher() : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:int = this.kejulupe.qapylipe();
         var _loc2_:int = this.kejulupe.bakisa();
         var _loc3_:int = this.mij.qapylipe();
         var _loc4_:int = this.mij.bakisa();
         var _loc5_:* = true;
         if(_loc3_-_loc1_-_loc2_>0)
         {
            this.kejulupe.ritoji(TradeInventory.segak);
            _loc5_=false;
         }
         else
         {
            this.kejulupe.ritoji(TradeInventory.hepysomy);
         }
         if(_loc1_-_loc3_-_loc4_>0)
         {
            this.mij.ritoji(TradeInventory.segak);
            _loc5_=false;
         }
         else
         {
            this.mij.ritoji(TradeInventory.wenaci);
         }
         this.cujoqubo.reset();
         return;
      }
   }
[/CLASS]
}