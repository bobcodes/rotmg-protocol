package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import kycamijil.Baw;
   import tulunyno.Hugyqufyq;
   import flash.filters.DropShadowFilter;
   import nec.Zirewe;


   public class Nyfiwacir extends Sprite
   {
      public function Nyfiwacir() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.sepelyp();
         this.textChanged=this.kazymube.textChanged;
         this.kazymube.x=0;
         this.kazymube.y=0;
         var _loc1_:Lufub = this.byjejenas();
         this.gebedur=new Baw(_loc1_);
         this.gebedur.x=0;
         this.gebedur.y=20;
         addChild(this.gebedur);
         addChild(this.kazymube);
         return;
      }

      private var kazymube:Lufub;

      private var gebedur:Baw;

      public var textChanged:Hugyqufyq;

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

      private function sepelyp() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kazymube=new Lufub().setSize(16).setColor(16777215);
         this.kazymube.setMultiLine(true);
         this.kazymube.mouseEnabled=true;
         this.kazymube.filters=[new DropShadowFilter(0,0,0)];
         return;
      }

      public function byfe(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kazymube.setStringBuilder(param1);
         return;
      }

      public function setTime(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gebedur.update(param1);
         return;
      }
   }

}