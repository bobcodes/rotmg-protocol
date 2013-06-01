package com.company.assembleegameclient.ui
{
[CLASS1079]   import flash.display.Sprite;
   import pudev.Capitu;
   import totuhare.Zufi;
   import flash.events.MouseEvent;
   import gawulu.Cuqicyh;
   import flash.filters.DropShadowFilter;


   public class Muqyvysuc extends Sprite
   {
      public function Muqyvysuc(param1:int, param2:Boolean, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.text_=this.makeText().setSize(param1).setColor(16777215);
         this.text_.setBold(param2);
         this.text_.setStringBuilder(new Zufi().setParams(param3));
         addChild(this.text_);
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.resavu);
         return;
      }

      public var text_:Capitu;

      public var dekew:uint = 16777215;

      protected function makeText() : Capitu {
         return new Capitu();
      }

      public function setAutoSize(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setAutoSize(param1);
         return;
      }

      public function cedil(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text_.setStringBuilder(new Zufi().setParams(param1));
         this.rih(11776947);
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      public function setColor(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setColor(param1);
         return;
      }

      public function rih(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dekew=param1;
         this.setColor(this.dekew);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setColor(16768133);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setColor(this.dekew);
         return;
      }

      private function resavu(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Cuqicyh.play("button_click");
         return;
      }
   }
[/CLASS]
}