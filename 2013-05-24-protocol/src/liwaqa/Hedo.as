package liwaqa
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import movimet.Lufub;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.Bitmap;
   import nec.Nara;


   public class Hedo extends Sprite
   {
      public function Hedo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text=new Lufub().setSize(18).setColor(16777215);
         super();
         return;
      }

      var bywudo:DisplayObject;

      var text:Lufub;

      public function init() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:BitmapData = AssetLibrary.jeqycu("lofiObj3",225);
         _loc1_=TextureRedrawer.redraw(_loc1_,40,true,0,0);
         this.bywudo=new Bitmap(_loc1_);
         addChild(this.bywudo);
         addChild(this.text);
         this.bywudo.x=-this.bywudo.width-8;
         this.bywudo.y=-this.bywudo.height/2-6;
         this.text.textChanged.add(this.onTextChanged);
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text.x=this.bywudo.x-this.text.width+4;
         this.text.y=-this.text.height/2-6;
         return;
      }

      public function noqubosyp(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text.setStringBuilder(new Nara(String(param1)));
         return;
      }
   }

}