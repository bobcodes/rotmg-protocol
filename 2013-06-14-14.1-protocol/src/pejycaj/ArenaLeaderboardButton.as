package pejycaj
{
   import flash.display.Sprite;
   import hivysif.Liwyny;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import com.company.util.AssetLibrary;
   import flash.display.BitmapData;
   import com.company.util.BitmapUtil;
   import jediwip.Kybidu;
   import komi.Vibemod;


   public class ArenaLeaderboardButton extends Sprite
   {
      public function ArenaLeaderboardButton() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.guviqejy();
         this.align();
         return;
      }

      private const WIDTH:int = 95;

      private const HEIGHT:int = 25;

      private const label:Liwyny = this.haq();

      private const vazejuwam:Bitmap = this.qisyf(true);

      private const koco:Bitmap = this.qisyf(false);

      private function align() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.koco.x=-10;
         this.label.x=this.koco.x+this.koco.width-10;
         this.label.y=3;
         this.vazejuwam.x=this.label.x+this.label.width-10;
         return;
      }

      private function guviqejy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         graphics.beginFill(0,0.4);
         graphics.drawRoundRect(0,0,this.WIDTH,this.HEIGHT,12,12);
         graphics.endFill();
         return;
      }

      private function qisyf(param1:Boolean) : Bitmap {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:BitmapData = TextureRedrawer.redraw(AssetLibrary.tem("lofiInterface2",8),42,true,0,0,true);
         if(param1)
         {
            _loc2_=BitmapUtil.mirror(_loc2_);
         }
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         _loc3_.y=-7;
         addChild(_loc3_);
         return _loc3_;
      }

      private function haq() : Liwyny {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Liwyny = new Liwyny();
         _loc1_.setSize(18).setColor(16777215).setBold(true);
         _loc1_.setStringBuilder(new Kybidu().setParams(Vibemod.kacutu));
         addChild(_loc1_);
         return _loc1_;
      }
   }

}