package haj
{
   import fanij.Cun;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.TextureRedrawer;


   public class Sevuvomyn extends Object
   {
      public function Sevuvomyn() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var dajuhok:Number = 1.4;

      public function create(param1:Cun, param2:int) : Linocele {
         var _loc3_:BitmapData = this.vimuh(param1,param2);
         var _loc4_:Bitmap = new Bitmap(_loc3_);
         var _loc5_:Linocele = new Linocele(param1);
         _loc5_.cavatak(_loc4_);
         return _loc5_;
      }

      public function vimuh(param1:Cun, param2:int) : BitmapData {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:BitmapData = null;
         var _loc3_:BitmapData = param1.juqodutyp()?param1.juqodutyp().image_:null;
         if(_loc3_)
         {
            _loc4_=(param2-TextureRedrawer.juzynupyg)/_loc3_.width;
            _loc5_=TextureRedrawer.resize(_loc3_,param1.juqodutyp().mask_,100,true,0,0,_loc4_);
            _loc5_=TextureRedrawer.outlineGlow(_loc5_,0,0,this.dajuhok);
            return _loc5_;
         }
         return new BitmapData(param2,param2);
      }
   }

}