package com.company.assembleegameclient.util
{
   import flash.events.IEventDispatcher;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.events.Event;


   public class Votif extends Object implements IEventDispatcher
   {
      public function Votif(param1:DisplayObject) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.firycynus=param1;
         return;
      }

      protected var firycynus:DisplayObject;

      public function cehu() : DisplayObjectContainer {
         return this.firycynus.stage;
      }

      public function qyru() : Number {
         return this.firycynus.stage.stageWidth;
      }

      public function rociku() : Number {
         return this.firycynus.stage.stageHeight;
      }

      public function magigynok() : InteractiveObject {
         return this.firycynus.stage.focus;
      }

      public function setFocus(param1:InteractiveObject) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.firycynus.stage.focus=param1;
         return;
      }

      public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         this.firycynus.stage.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      public function removeEventListener(param1:String, param2:Function, param3:Boolean=false) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.firycynus.stage.removeEventListener(param1,param2,param3);
         return;
      }

      public function dispatchEvent(param1:Event) : Boolean {
         return this.firycynus.stage.dispatchEvent(param1);
      }

      public function hasEventListener(param1:String) : Boolean {
         return this.firycynus.stage.hasEventListener(param1);
      }

      public function willTrigger(param1:String) : Boolean {
         return this.firycynus.stage.willTrigger(param1);
      }

      public function cykozutuv() : String {
         return this.firycynus.stage.quality;
      }

      public function robetic(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.firycynus.stage.quality=param1;
         return;
      }
   }

}