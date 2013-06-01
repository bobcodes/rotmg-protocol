package com.company.assembleegameclient.ui
{
[CLASS707]   import flash.events.MouseEvent;
   import totuhare.Zufi;
   import flash.display.IGraphicsData;


   public class Falap extends Sugycoja
   {
      public function Falap(param1:int) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         return;
      }

      protected function initText() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         quryzov();
         this.draw();
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         return;
      }

      public function rike(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         text_.setStringBuilder(new Zufi().setParams(param1));
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
         graphicsData_[0]=param1?jenupy:ruwini;
         this.draw();
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         jenupy.color=16768133;
         this.draw();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         jenupy.color=16777215;
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
[/CLASS]
}