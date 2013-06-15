package qymoho
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import com.company.assembleegameclient.map.Qawosiwi;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.utils.ByteArray;
   import zanejo.Tofojeq;
   import lipesyhow.Background;


   public class Nykajada extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Nykajada() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const BORDER:int = 10;

      private static const caniluvu:Rectangle = new Rectangle(-400,-300,800,600);

      private static const tyfifiri:Number = 7*Math.PI/4;

      private static const javehewa:Number = 1/1000;

      private static const vonyc:Class = Ribeb;

      private static var vypoji:Map;

      private static var rahuhek:IntPoint;

      private static var deh:Number;

      private static var heg:Number;

      private static var camera:Qawosiwi;

      private var sol:int;

      private var time:Number;

      private function onAddedToStage(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         addChildAt(vypoji=(vypoji)||(this.kurepibo()),0);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.sol=getTimer();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.time=getTimer();
         deh=deh+(this.time-this.sol)*javehewa;
         if(deh>rahuhek.x_+BORDER)
         {
            deh=deh-rahuhek.x_;
         }
         camera.configure(deh,heg,12,tyfifiri,caniluvu,false);
         vypoji.draw(camera,this.time);
         this.sol=this.time;
         return;
      }

      private function kurepibo() : Map {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:ByteArray = new vonyc();
         var _loc2_:String = _loc1_.readUTFBytes(_loc1_.length);
         rahuhek=Tofojeq.dahekuq(_loc2_);
         deh=BORDER;
         heg=BORDER+int((rahuhek.y_-2*BORDER)*Math.random());
         camera=new Qawosiwi();
         var _loc3_:Map = new Map(null);
         _loc3_.setProps(rahuhek.x_+2*BORDER,rahuhek.y_,"Background Map",Background.hamikag,false,false);
         _loc3_.initialize();
         Tofojeq.syb(_loc2_,_loc3_,0,0);
         Tofojeq.syb(_loc2_,_loc3_,rahuhek.x_,0);
         return _loc3_;
      }
   }

}