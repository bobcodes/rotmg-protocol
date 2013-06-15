package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import jediwip.Kybidu;
   import flash.events.MouseEvent;
   import dorepoji.Kadido;
   import flash.filters.DropShadowFilter;


   public class Gadaj extends Sprite
   {
      public function Gadaj(param1:int, param2:Boolean, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.text_=this.makeText().setSize(param1).setColor(16777215);
         this.text_.setBold(param2);
         this.text_.setStringBuilder(new Kybidu().setParams(param3));
         addChild(this.text_);
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addEventListener(MouseEvent.CLICK,this.wolycosy);
         return;
      }

      public var text_:Guzowoja;

      public var nyjepozi:uint = 16777215;

      protected function makeText() : Guzowoja {
         return new Guzowoja();
      }

      public function setAutoSize(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setAutoSize(param1);
         return;
      }

      public function pufonuh(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text_.setStringBuilder(new Kybidu().setParams(param1));
         this.gowy(11776947);
         mouseEnabled=false;
         mouseChildren=false;
         return;
      }

      public function setColor(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text_.setColor(param1);
         return;
      }

      public function gowy(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.nyjepozi=param1;
         this.setColor(this.nyjepozi);
         return;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setColor(16768133);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setColor(this.nyjepozi);
         return;
      }

      private function wolycosy(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Kadido.play("button_click");
         return;
      }
   }

}