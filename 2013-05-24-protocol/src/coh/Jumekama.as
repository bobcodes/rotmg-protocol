package coh
{
   import zoroc.Bezuco;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Jumekama extends Object
   {
      public function Jumekama() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var vyzesyv:Number = 1.4;

      public function create(param1:Bezuco, param2:int) : Qewitu {
         var _loc3_:BitmapData = this.luj(param1,param2);
         var _loc4_:Bitmap = new Bitmap(_loc3_);
         var _loc5_:Qewitu = new Qewitu(param1);
         _loc5_.kes(_loc4_);
         return _loc5_;
      }

      private function luj(param1:Bezuco, param2:int) : BitmapData {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:BitmapData = null;
         var _loc3_:BitmapData = param1.kiry()?param1.kiry().image_:null;
         if(_loc3_)
         {
            _loc4_=(param2-TextureRedrawer.lyvem)/_loc3_.width;
            _loc5_=TextureRedrawer.resize(_loc3_,param1.kiry().mask_,100,true,0,0,_loc4_);
            _loc5_=TextureRedrawer.outlineGlow(_loc5_,0,0,this.vyzesyv);
            return _loc5_;
         }
         return new BitmapData(param2,param2);
      }
   }

}