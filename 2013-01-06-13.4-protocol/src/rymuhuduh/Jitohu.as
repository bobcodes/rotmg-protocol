package rymuhuduh
{
[CLASS1037]   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import com.company.assembleegameclient.map.Fot;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.utils.ByteArray;
   import nytah.Muvomov;
   import nytizak.Background;


   public class Jitohu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jitohu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const BORDER:int = 10;

      private static const ponebu:Rectangle = new Rectangle(-400,-300,800,600);

      private static const lonaqipy:Number = 7*Math.PI/4;

      private static const vifo:Number = 1/1000;

      private static const rugi:Class = Kucoci;

      private static var cajo:Map;

      private static var nufuv:IntPoint;

      private static var fumobaho:Number;

      private static var hiromeq:Number;

      private static var camera:Fot;

      private var sih:int;

      private var time:Number;

      private function onAddedToStage(param1:Event) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         addChildAt(cajo=(cajo)||(this.jolyr()),0);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.sih=getTimer();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.time=getTimer();
         fumobaho=fumobaho+(this.time-this.sih)*vifo;
         if(fumobaho>nufuv.x_+BORDER)
         {
            fumobaho=fumobaho-nufuv.x_;
         }
         camera.configure(fumobaho,hiromeq,12,lonaqipy,ponebu,false);
         cajo.draw(camera,this.time);
         this.sih=this.time;
         return;
      }

      private function jolyr() : Map {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:ByteArray = new rugi();
         var _loc2_:String = _loc1_.readUTFBytes(_loc1_.length);
         nufuv=Muvomov.vucu(_loc2_);
         fumobaho=BORDER;
         hiromeq=BORDER+int((nufuv.y_-2*BORDER)*Math.random());
         camera=new Fot();
         var _loc3_:Map = new Map(null);
         _loc3_.setProps(nufuv.x_+2*BORDER,nufuv.y_,"Background Map",Background.goku,false,false);
         _loc3_.initialize();
         Muvomov.reniqoqa(_loc2_,_loc3_,0,0);
         Muvomov.reniqoqa(_loc2_,_loc3_,nufuv.x_,0);
         return _loc3_;
      }
   }
[/CLASS]
}