package tilo
{
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import hivysif.Guzowoja;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.Bitmap;
   import jediwip.Vofezuzy;


   public class Jyfone extends Sprite
   {
      public function Jyfone() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text=new Guzowoja().setSize(18).setColor(16777215);
         super();
         return;
      }

      var ficebedok:DisplayObject;

      var text:Guzowoja;

      public function init() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = AssetLibrary.tem("lofiObj3",225);
         _loc1_=TextureRedrawer.redraw(_loc1_,40,true,0,0);
         this.ficebedok=new Bitmap(_loc1_);
         addChild(this.ficebedok);
         addChild(this.text);
         this.ficebedok.x=-this.ficebedok.width-8;
         this.ficebedok.y=-this.ficebedok.height/2-6;
         this.text.textChanged.add(this.onTextChanged);
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text.x=this.ficebedok.x-this.text.width+4;
         this.text.y=-this.text.height/2-6;
         return;
      }

      public function zovisa(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text.setStringBuilder(new Vofezuzy(String(param1)));
         return;
      }
   }

}