package com.company.assembleegameclient.util
{
   import flash.events.IEventDispatcher;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;


   public class Cokinomu extends Object implements IEventDispatcher
   {
      public function Cokinomu(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.hed=param1;
         return;
      }

      protected var hed:DisplayObject;

      public function qosudyd() : DisplayObjectContainer {
         return this.hed.stage;
      }

      public function kikasybah() : Number {
         return this.hed.stage.stageWidth;
      }

      public function tomiqu() : Number {
         return this.hed.stage.stageHeight;
      }

      public function kac() : InteractiveObject {
         return this.hed.stage.focus;
      }

      public function setFocus(param1:InteractiveObject) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hed.stage.focus=param1;
         return;
      }

      public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.hed.stage.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      public function removeEventListener(param1:String, param2:Function, param3:Boolean=false) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.hed.stage.removeEventListener(param1,param2,param3);
         return;
      }

      public function dispatchEvent(param1:Event) : Boolean {
         return this.hed.stage.dispatchEvent(param1);
      }

      public function hasEventListener(param1:String) : Boolean {
         return this.hed.stage.hasEventListener(param1);
      }

      public function willTrigger(param1:String) : Boolean {
         return this.hed.stage.willTrigger(param1);
      }

      public function zoqim() : String {
         return this.hed.stage.quality;
      }

      public function maryrez(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.hed.stage.quality=param1;
         return;
      }
   }

}