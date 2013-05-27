package qefinah
{
   import flash.display.Sprite;
   import suko.Tarus;
   import ruwysepyd.Jateq;
   import com.company.assembleegameclient.objects.Player;
   import fom.Lihivak;


   public class Hywyhije extends Sprite
   {
      public function Hywyhije(param1:Player) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rybok=new Sprite();
         this.foheqedy=new Jateq();
         super();
         this.init(param1);
         this.qohinep();
         this.hezuc();
         return;
      }

      private var rybok:Sprite;

      private var rusuzav:Tarus;

      private var foheqedy:Jateq;

      private function init(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rusuzav=new Tarus(param1,param1,4);
         this.rybok.name=Lihivak.wirumupyg;
         return;
      }

      private function qohinep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rybok.addChild(this.rusuzav);
         this.rybok.addChild(this.foheqedy);
         addChild(this.rybok);
         return;
      }

      private function hezuc() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rybok.x=7;
         this.rybok.y=7;
         this.foheqedy.y=this.rusuzav.height+4;
         return;
      }
   }

}