package jat
{
[CLASS307]   import tysenyzy.Zovisis;
   import qypupet.Tuhyfutos;
   import kirofyny.Tiqimav;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Pecipaham;
   import com.company.assembleegameclient.util.Huroj;
   import com.company.assembleegameclient.util.Gejugut;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;


   public class Fugefehij extends Zovisis
   {
      public function Fugefehij() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Bijaf;

      public var lycufasoc:Tuhyfutos;

      public var madeve:Tiqimav;

      override public function initialize() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Bitmap = this.tugefiqac();
         this.view.init(_loc1_);
         this.view.closed.add(this.zykekulucy);
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.madeve.dispatch();
         return;
      }

      private function tugefiqac() : Bitmap {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:String = ObjectLibrary.peboda(this.view.skinType);
         var _loc2_:XML = ObjectLibrary.bisera(_loc1_);
         var _loc3_:String = _loc2_.AnimatedTexture.File;
         var _loc4_:int = _loc2_.AnimatedTexture.Index;
         var _loc5_:Huroj = Pecipaham.jujagikan(_loc3_,_loc4_);
         var _loc6_:Gejugut = _loc5_.imageFromAngle(0,Huroj.wyqel,0);
         var _loc7_:BitmapData = TextureRedrawer.resize(_loc6_.image_,_loc6_.mask_,160,true,0,0);
         _loc7_=TextureRedrawer.outlineGlow(_loc7_,0,0,6);
         return new Bitmap(_loc7_);
      }
   }
[/CLASS]
}