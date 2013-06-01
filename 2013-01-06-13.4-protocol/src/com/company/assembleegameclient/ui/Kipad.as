package com.company.assembleegameclient.ui
{
[CLASS1041]   import flash.display.Sprite;
   import wodijyciwo.Rybe;
   import pudev.Capitu;
   import flash.filters.DropShadowFilter;


   public class Kipad extends Sprite
   {
      public function Kipad() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tiluvo=this.hijagaq();
         this.tiluvo.x=5;
         this.pib=new Rybe(this.tiluvo);
         addChild(this.pib);
         this.pib.update(100000);
         graphics.lineStyle(2,16777215);
         graphics.beginFill(3552822);
         graphics.drawRoundRect(0,0,150,25,10);
         filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      private var pib:Rybe;

      private var tiluvo:Capitu;

      public function update(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pib.update(param1);
         return;
      }

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
   }
[/CLASS]
}