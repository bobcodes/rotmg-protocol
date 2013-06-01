package com.company.assembleegameclient.ui
{
[CLASS1803]   import flash.display.Sprite;
   import pudev.Capitu;
   import wodijyciwo.Rybe;
   import tinava.Dab;
   import flash.filters.DropShadowFilter;
   import totuhare.Qebar;


   public class Cakysekyw extends Sprite
   {
      public function Cakysekyw() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.qafyfic();
         this.textChanged=this.jobahyle.textChanged;
         this.jobahyle.x=0;
         this.jobahyle.y=0;
         var _loc1_:Capitu = this.hijagaq();
         this.pib=new Rybe(_loc1_);
         this.pib.x=0;
         this.pib.y=20;
         addChild(this.pib);
         addChild(this.jobahyle);
         return;
      }

      private var jobahyle:Capitu;

      private var pib:Rybe;

      public var textChanged:Dab;

      private function hijagaq() : Capitu {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Capitu = null;
         _loc1_=new Capitu().setSize(16).setColor(16777103);
         _loc1_.setBold(true);
         _loc1_.setMultiLine(true);
         _loc1_.mouseEnabled=true;
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      private function qafyfic() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.jobahyle=new Capitu().setSize(16).setColor(16777215);
         this.jobahyle.setMultiLine(true);
         this.jobahyle.mouseEnabled=true;
         this.jobahyle.filters=[new DropShadowFilter(0,0,0)];
         return;
      }

      public function hegu(param1:Qebar) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jobahyle.setStringBuilder(param1);
         return;
      }

      public function setTime(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pib.update(param1);
         return;
      }
   }
[/CLASS]
}