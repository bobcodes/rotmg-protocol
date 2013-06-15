package com.company.assembleegameclient.ui
{
   import flash.events.MouseEvent;
   import jediwip.Kybidu;
   import flash.display.IGraphicsData;


   public class Memady extends Sikosy
   {
      public function Memady(param1:int) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      protected function initText() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         gubunul();
         this.draw();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public function kenadyb(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         text_.setStringBuilder(new Kybidu().setParams(param1));
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
         graphicsData_[0]=param1?zow:movi;
         this.draw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zow.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         zow.color=16777215;
         this.draw();
         return;
      }

      private function draw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         graphics.clear();
         graphics.drawGraphicsData(graphicsData_);
         return;
      }
   }

}