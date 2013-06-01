package com.company.assembleegameclient.util
{
[CLASS42]   import flash.events.IEventDispatcher;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;


   public class Vureriju extends Object implements IEventDispatcher
   {
      public function Vureriju(param1:DisplayObject) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.huke=param1;
         return;
      }

      protected var huke:DisplayObject;

      public function kyba() : DisplayObjectContainer {
         return this.huke.stage;
      }

      public function lonahi() : Number {
         return this.huke.stage.stageWidth;
      }

      public function tek() : Number {
         return this.huke.stage.stageHeight;
      }

      public function nig() : InteractiveObject {
         return this.huke.stage.focus;
      }

      public function setFocus(param1:InteractiveObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.huke.stage.focus=param1;
         return;
      }

      public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.huke.stage.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      public function removeEventListener(param1:String, param2:Function, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.huke.stage.removeEventListener(param1,param2,param3);
         return;
      }

      public function dispatchEvent(param1:Event) : Boolean {
         return this.huke.stage.dispatchEvent(param1);
      }

      public function hasEventListener(param1:String) : Boolean {
         return this.huke.stage.hasEventListener(param1);
      }

      public function willTrigger(param1:String) : Boolean {
         return this.huke.stage.willTrigger(param1);
      }

      public function tamawy() : String {
         return this.huke.stage.quality;
      }

      public function buvuselam(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.huke.stage.quality=param1;
         return;
      }
   }
[/CLASS]
}