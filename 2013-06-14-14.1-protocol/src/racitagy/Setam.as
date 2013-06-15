package racitagy
{
   import tytojonib.Kyjefe;
   import fanij.Namejaja;
   import cizagamym.Lebovas;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Hekisona;
   import com.company.assembleegameclient.util.Jiqefatok;
   import com.company.assembleegameclient.util.Kebinuhi;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;


   public class Setam extends Kyjefe
   {
      public function Setam() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Gelyz;

      public var cybeco:Namejaja;

      public var gimenakal:Lebovas;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = this.nesohipo();
         this.view.init(_loc1_);
         this.view.closed.add(this.nydegazeq);
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }

      private function nesohipo() : Bitmap {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc1_:String = ObjectLibrary.ryqovol(this.view.skinType);
         var _loc2_:XML = ObjectLibrary.jesycegoc(_loc1_);
         var _loc3_:String = _loc2_.AnimatedTexture.File;
         var _loc4_:int = _loc2_.AnimatedTexture.Index;
         var _loc5_:Jiqefatok = Hekisona.woseku(_loc3_,_loc4_);
         var _loc6_:Kebinuhi = _loc5_.imageFromAngle(0,Jiqefatok.radev,0);
         var _loc7_:BitmapData = TextureRedrawer.resize(_loc6_.image_,_loc6_.mask_,160,true,0,0);
         _loc7_=TextureRedrawer.outlineGlow(_loc7_,0,0,6);
         return new Bitmap(_loc7_);
      }
   }

}