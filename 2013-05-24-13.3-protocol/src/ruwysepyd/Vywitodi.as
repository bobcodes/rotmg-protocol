package ruwysepyd
{
   import flash.display.Sprite;
   import mx.core.BitmapAsset;
   import __AS3__.vec.Vector;
   import fom.Fijotis;


   public class Vywitodi extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vywitodi() {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.base=new cyhab();
         addChild(this.base);
         this.cin=new Vector.<BitmapAsset>(4,true);
         this.cin[0]=new cabyty();
         this.cin[1]=new locutiti();
         this.cin[2]=new wudob();
         this.cin[3]=new tut();
         var _loc1_:* = 0;
         while(_loc1_<4)
         {
            this.cin[_loc1_].x=12+40*_loc1_;
            this.cin[_loc1_].y=12;
            _loc1_++;
         }
         return;
      }

      private static var cyhab:Class = Myzoquty;

      private static var locutiti:Class = Vofaky;

      private static var wudob:Class = Nepecyby;

      private static var tut:Class = Gomub;

      private static var cabyty:Class = Kydy;

      private var base:BitmapAsset;

      private var cin:Vector.<BitmapAsset>;

      public function gytoqyg(param1:Fijotis) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:BitmapAsset = this.cin[param1.position];
         if(!contains(_loc2_))
         {
            addChild(_loc2_);
         }
         return;
      }

      public function lim(param1:Fijotis) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:BitmapAsset = this.cin[param1.position];
         if(contains(_loc2_))
         {
            removeChild(_loc2_);
         }
         return;
      }
   }

}