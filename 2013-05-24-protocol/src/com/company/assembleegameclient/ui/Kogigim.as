package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import kycamijil.Baw;
   import movimet.Lufub;
   import flash.filters.DropShadowFilter;


   public class Kogigim extends Sprite
   {
      public function Kogigim() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.fuhobi=this.byjejenas();
         this.fuhobi.x=5;
         this.gebedur=new Baw(this.fuhobi);
         addChild(this.gebedur);
         this.gebedur.update(100000);
         graphics.lineStyle(2,16777215);
         graphics.beginFill(3552822);
         graphics.drawRoundRect(0,0,150,25,10);
         filters=[new DropShadowFilter(0,0,0,1,16,16,1)];
         return;
      }

      private var gebedur:Baw;

      private var fuhobi:Lufub;

      public function update(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gebedur.update(param1);
         return;
      }

      private function byjejenas() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(16).setColor(16777103);
         _loc1_.setBold(true);
         _loc1_.setMultiLine(true);
         _loc1_.mouseEnabled=true;
         _loc1_.filters=[new DropShadowFilter(0,0,0)];
         return _loc1_;
      }
   }

}