package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import nec.Sire;
   import flash.events.MouseEvent;
   import vozireni.Pozunubu;
   import flash.filters.DropShadowFilter;


   public class Becagoma extends Sprite
   {
      public function Becagoma(param1:int, param2:Boolean, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.text_=this.makeText().setSize(param1).setColor(16777215);
         this.text_.setBold(param2);
         this.text_.setStringBuilder(new Sire().setParams(param3));
         addChild(this.text_);
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.hoso);
         return;
      }

      public var text_:Lufub;

      public var naqyd:uint = 16777215;

      protected function makeText() : Lufub {
         return new Lufub();
      }

      public function setAutoSize(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setAutoSize(param1);
         return;
      }

      public function nybi(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setStringBuilder(new Sire().setParams(param1));
         this.pajupu(11776947);
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

      public function pajupu(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.naqyd=param1;
         this.setColor(this.naqyd);
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
         this.setColor(this.naqyd);
         return;
      }

      private function hoso(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         Pozunubu.play("button_click");
         return;
      }
   }

}