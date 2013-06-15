package waryp
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.screens.charrects.CharacterRectList;
   import lemugo.Wokycuku;
   import flash.display.Shape;
   import flash.display.Graphics;


   public class Cocomim extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cocomim(param1:Wokycuku) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Shape = null;
         var _loc3_:Graphics = null;
         super();
         this.lib=new CharacterRectList();
         addChild(this.lib);
         if(height>400)
         {
            _loc2_=new Shape();
            _loc3_=_loc2_.graphics;
            _loc3_.beginFill(0);
            _loc3_.drawRect(0,0,WIDTH,HEIGHT);
            _loc3_.endFill();
            addChild(_loc2_);
            mask=_loc2_;
         }
         return;
      }

      public static const WIDTH:int = 760;

      public static const HEIGHT:int = 430;

      public var lib:CharacterRectList;

      public function quwakeco(param1:Number) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lib.y=param1;
         return;
      }
   }

}