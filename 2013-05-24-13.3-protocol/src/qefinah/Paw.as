package qefinah
{
   import flash.display.Sprite;
   import suko.Tarus;
   import ruwysepyd.Jateq;
   import com.company.assembleegameclient.objects.Player;
   import fom.Lihivak;
   import pirus.Lekakyry;


   public class Paw extends Sprite
   {
      public function Paw(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.mor=new Sprite();
         this.lel=new Jateq();
         super();
         this.init(param1);
         this.qohinep();
         this.hezuc();
         return;
      }

      private var mor:Sprite;

      private var ralihow:Tarus;

      private var lel:Jateq;

      private function init(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mor.name=Lihivak.vosuqezem;
         this.ralihow=new Tarus(param1,param1,Lekakyry.bibole+Lekakyry.mucitify,true);
         return;
      }

      private function hezuc() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mor.x=7;
         this.mor.y=7;
         this.lel.y=this.ralihow.height+4;
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mor.addChild(this.ralihow);
         this.mor.addChild(this.lel);
         addChild(this.mor);
         return;
      }
   }

}