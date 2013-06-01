package tidi
{
[CLASS404]   import flash.display.Sprite;
   import mx.core.BitmapAsset;
   import __AS3__.vec.Vector;
   import vinirudel.Zic;


   public class Jewom extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jewom() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.base=new leqegaped();
         addChild(this.base);
         this.jokozyv=new Vector.<BitmapAsset>(4,true);
         this.jokozyv[0]=new cuz();
         this.jokozyv[1]=new sovidam();
         this.jokozyv[2]=new hahu();
         this.jokozyv[3]=new cur();
         var _loc1_:* = 0;
         while(_loc1_<4)
         {
            this.jokozyv[_loc1_].x=12+40*_loc1_;
            this.jokozyv[_loc1_].y=12;
            _loc1_++;
         }
         return;
      }

      private static var leqegaped:Class = Zapyr;

      private static var sovidam:Class = Nylydiwef;

      private static var hahu:Class = Siwuwu;

      private static var cur:Class = Jolin;

      private static var cuz:Class = Nahosufer;

      private var base:BitmapAsset;

      private var jokozyv:Vector.<BitmapAsset>;

      public function goda(param1:Zic) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:BitmapAsset = this.jokozyv[param1.position];
         if(!contains(_loc2_))
         {
            addChild(_loc2_);
         }
         return;
      }

      public function fubopecybo(param1:Zic) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapAsset = this.jokozyv[param1.position];
         if(contains(_loc2_))
         {
            removeChild(_loc2_);
         }
         return;
      }
   }
[/CLASS]
}