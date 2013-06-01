package vahejo
{
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import com.company.assembleegameclient.map.Wypyj;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.utils.ByteArray;
   import gykihus.Gypyl;
   import luzy.Background;


   public class Qykavu extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Qykavu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const BORDER:int = 10;

      private static const siqusut:Rectangle = new Rectangle(-400,-300,800,600);

      private static const lomitujod:Number = 7*Math.PI/4;

      private static const bolutu:Number = 1/1000;

      private static const vib:Class = Goqe;

      private static var kulugudy:Map;

      private static var tin:IntPoint;

      private static var nohe:Number;

      private static var binasy:Number;

      private static var camera:Wypyj;

      private var lakyp:int;

      private var time:Number;

      private function onAddedToStage(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         addChildAt(kulugudy=(kulugudy)||(this.gecufevok()),0);
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         this.lakyp=getTimer();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.time=getTimer();
         nohe=nohe+(this.time-this.lakyp)*bolutu;
         if(nohe>tin.x_+BORDER)
         {
            nohe=nohe-tin.x_;
         }
         camera.configure(nohe,binasy,12,lomitujod,siqusut,false);
         kulugudy.draw(camera,this.time);
         this.lakyp=this.time;
         return;
      }

      private function gecufevok() : Map {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:ByteArray = new vib();
         var _loc2_:String = _loc1_.readUTFBytes(_loc1_.length);
         tin=Gypyl.wepilyby(_loc2_);
         nohe=BORDER;
         binasy=BORDER+int((tin.y_-2*BORDER)*Math.random());
         camera=new Wypyj();
         var _loc3_:Map = new Map(null);
         _loc3_.setProps(tin.x_+2*BORDER,tin.y_,"Background Map",Background.purehy,false,false);
         _loc3_.initialize();
         Gypyl.vucityt(_loc2_,_loc3_,0,0);
         Gypyl.vucityt(_loc2_,_loc3_,tin.x_,0);
         return _loc3_;
      }
   }

}