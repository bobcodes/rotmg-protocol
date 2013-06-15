package wenono
{
   import flash.display.Sprite;
   import mx.core.BitmapAsset;
   import __AS3__.vec.Vector;
   import micac.Gibydupu;


   public class Hyc extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Hyc() {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.base=new petagasu();
         addChild(this.base);
         this.juh=new Vector.<BitmapAsset>(4,true);
         this.juh[0]=new wisut();
         this.juh[1]=new ret();
         this.juh[2]=new cynigufyh();
         this.juh[3]=new kejucik();
         var _loc1_:* = 0;
         while(_loc1_<4)
         {
            this.juh[_loc1_].x=12+40*_loc1_;
            this.juh[_loc1_].y=12;
            _loc1_++;
         }
         return;
      }

      private static var petagasu:Class = Hejijuw;

      private static var ret:Class = Nurizoh;

      private static var cynigufyh:Class = Pafot;

      private static var kejucik:Class = Kecy;

      private static var wisut:Class = Hobu;

      private var base:BitmapAsset;

      private var juh:Vector.<BitmapAsset>;

      public function deru(param1:Gibydupu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapAsset = this.juh[param1.position];
         if(!contains(_loc2_))
         {
            addChild(_loc2_);
         }
         return;
      }

      public function bateji(param1:Gibydupu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:BitmapAsset = this.juh[param1.position];
         if(contains(_loc2_))
         {
            removeChild(_loc2_);
         }
         return;
      }
   }

}