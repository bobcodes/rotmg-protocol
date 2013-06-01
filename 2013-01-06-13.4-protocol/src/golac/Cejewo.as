package golac
{
[CLASS900]   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import pudev.Capitu;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import flash.display.Bitmap;
   import totuhare.Javo;


   public class Cejewo extends Sprite
   {
      public function Cejewo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.text=new Capitu().setSize(18).setColor(16777215);
         super();
         return;
      }

      var fejo:DisplayObject;

      var text:Capitu;

      public function init() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = AssetLibrary.zovy("lofiObj3",225);
         _loc1_=TextureRedrawer.redraw(_loc1_,40,true,0,0);
         this.fejo=new Bitmap(_loc1_);
         addChild(this.fejo);
         addChild(this.text);
         this.fejo.x=-this.fejo.width-8;
         this.fejo.y=-this.fejo.height/2-6;
         this.text.textChanged.add(this.onTextChanged);
         return;
      }

      private function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.text.x=this.fejo.x-this.text.width+4;
         this.text.y=-this.text.height/2-6;
         return;
      }

      public function bego(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text.setStringBuilder(new Javo(String(param1)));
         return;
      }
   }
[/CLASS]
}