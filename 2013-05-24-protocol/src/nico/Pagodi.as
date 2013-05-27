package nico
{
   import flash.display.Sprite;
   import movimet.Lufub;
   import tulunyno.Hugyqufyq;
   import flash.filters.DropShadowFilter;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;


   public class Pagodi extends Sprite
   {
      public function Pagodi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.becujag=Dunipip;
         super();
         return;
      }

      private var becujag:Class;

      private const qeraj:Lufub = this.makeText();

      private const vaqi = this.buzabe();

      public const wofiq:Hugyqufyq = new Hugyqufyq();

      private function makeText() : Lufub {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Lufub = null;
         _loc1_=new Lufub().setSize(16).setColor(11776947).setBold(true);
         _loc1_.filters=[new DropShadowFilter(0,0,0,1,8,8)];
         _loc1_.setStringBuilder(new Sire().setParams(I18nKeys.zapubahy));
         _loc1_.textChanged.addOnce(this.layout);
         addChild(_loc1_);
         return _loc1_;
      }

      private function buzabe() : * {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = new this.becujag();
         addChild(_loc1_);
         return _loc1_;
      }

      public function layout() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qeraj.y=height/2-this.qeraj.height/2+1;
         this.vaqi.x=this.qeraj.x+this.qeraj.width;
         this.wofiq.dispatch();
         return;
      }
   }

}