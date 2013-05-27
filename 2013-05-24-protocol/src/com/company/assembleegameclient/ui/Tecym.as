package com.company.assembleegameclient.ui
{
   import flash.events.MouseEvent;
   import nec.Sire;
   import flash.display.IGraphicsData;


   public class Tecym extends Qikavajyw
   {
      public function Tecym(param1:int) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      protected function initText() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         femo();
         this.draw();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public function sonydiw(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         text_.setStringBuilder(new Sire().setParams(param1));
         return;
      }

      public function setEnabled(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==mouseEnabled)
         {
            return;
         }
         mouseEnabled=param1;
         graphicsData_[0]=param1?pilif:fawery;
         this.draw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         pilif.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         pilif.color=16777215;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.clear();
         graphics.drawGraphicsData(graphicsData_);
         return;
      }
   }

}