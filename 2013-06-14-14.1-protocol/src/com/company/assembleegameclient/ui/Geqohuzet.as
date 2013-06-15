package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import muhazasy.Vicuwuga;
   import hivysif.Guzowoja;
   import flash.filters.DropShadowFilter;


   public class Geqohuzet extends Sprite
   {
      public function Geqohuzet() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.vatapyle=this.gawetic();
         this.vatapyle.x=5;
         this.kemyc=new Vicuwuga(this.vatapyle);
         addChild(this.kemyc);
         this.kemyc.update(100000);
         graphics.lineStyle(2,16777215);
         graphics.beginFill(3552822);
         graphics.drawRoundRect(0,0,150,25,10);
         filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      private var kemyc:Vicuwuga;

      private var vatapyle:Guzowoja;

      public function update(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kemyc.update(param1);
         return;
      }

      private function gawetic() : Guzowoja {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(16).setColor(16777103);
         _loc1_.setBold(true);
         _loc1_.setMultiLine(true);
         _loc1_.mouseEnabled=true;
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }
   }

}