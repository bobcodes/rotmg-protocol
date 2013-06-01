package fyvanod
{
[CLASS971]   import qypupet.Vuravipyg;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Halak extends Object
   {
      public function Halak() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var ruq:Number = 1.4;

      public function create(param1:Vuravipyg, param2:int) : Sal {
         var _loc3_:BitmapData = this.gytobe(param1,param2);
         var _loc4_:Bitmap = new Bitmap(_loc3_);
         var _loc5_:Sal = new Sal(param1);
         _loc5_.vegame(_loc4_);
         return _loc5_;
      }

      private function gytobe(param1:Vuravipyg, param2:int) : BitmapData {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:BitmapData = null;
         var _loc3_:BitmapData = param1.vybibu()?param1.vybibu().image_:null;
         if(_loc3_)
         {
            _loc4_=(param2-TextureRedrawer.nac)/_loc3_.width;
            _loc5_=TextureRedrawer.resize(_loc3_,param1.vybibu().mask_,100,true,0,0,_loc4_);
            _loc5_=TextureRedrawer.outlineGlow(_loc5_,0,0,this.ruq);
            return _loc5_;
         }
         return new BitmapData(param2,param2);
      }
   }
[/CLASS]
}