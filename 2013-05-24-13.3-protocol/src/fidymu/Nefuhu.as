package fidymu
{
   import qov.Kalefu;
   import zoroc.Gecezyw;
   import wegyluke.Cowymute;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.util.Jutot;
   import com.company.assembleegameclient.util.Zuwomuguk;
   import com.company.assembleegameclient.util.Biloqu;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.BitmapData;


   public class Nefuhu extends Kalefu
   {
      public function Nefuhu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Nalyp;

      public var duqa:Gecezyw;

      public var tusagecu:Cowymute;

      override public function initialize() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bitmap = this.lyh();
         this.view.init(_loc1_);
         this.view.closed.add(this.pomuwok);
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tusagecu.dispatch();
         return;
      }

      private function lyh() : Bitmap {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:String = ObjectLibrary.pelek(this.view.skinType);
         var _loc2_:XML = ObjectLibrary.faviqykef(_loc1_);
         var _loc3_:String = _loc2_.AnimatedTexture.File;
         var _loc4_:int = _loc2_.AnimatedTexture.Index;
         var _loc5_:Zuwomuguk = Jutot.fyh(_loc3_,_loc4_);
         var _loc6_:Biloqu = _loc5_.imageFromAngle(0,Zuwomuguk.pazyladar,0);
         var _loc7_:BitmapData = TextureRedrawer.resize(_loc6_.image_,_loc6_.mask_,160,true,0,0);
         _loc7_=TextureRedrawer.outlineGlow(_loc7_,0,0,6);
         return new Bitmap(_loc7_);
      }
   }

}