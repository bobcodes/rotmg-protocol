package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import hivysif.Guzowoja;
   import muhazasy.Vicuwuga;
   import mukyrosu.Qanyduk;
   import flash.filters.DropShadowFilter;
   import jediwip.Tunyhazo;


   public class Qyjimofi extends Sprite
   {
      public function Qyjimofi() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.keky();
         this.textChanged=this.johebe.textChanged;
         this.johebe.x=0;
         this.johebe.y=0;
         var _loc1_:Guzowoja = this.gawetic();
         this.kemyc=new Vicuwuga(_loc1_);
         this.kemyc.x=0;
         this.kemyc.y=20;
         addChild(this.kemyc);
         addChild(this.johebe);
         return;
      }

      private var johebe:Guzowoja;

      private var kemyc:Vicuwuga;

      public var textChanged:Qanyduk;

      private function gawetic() : Guzowoja {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Guzowoja = null;
         _loc1_=new Guzowoja().setSize(16).setColor(16777103);
         _loc1_.setBold(true);
         _loc1_.setMultiLine(true);
         _loc1_.mouseEnabled=true;
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }

      private function keky() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.johebe=new Guzowoja().setSize(16).setColor(16777215);
         this.johebe.setMultiLine(true);
         this.johebe.mouseEnabled=true;
         this.johebe.filters=[new DropShadowFilter(0,0,0)];
         return;
      }

      public function zovyf(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.johebe.setStringBuilder(param1);
         return;
      }

      public function setTime(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kemyc.update(param1);
         return;
      }
   }

}