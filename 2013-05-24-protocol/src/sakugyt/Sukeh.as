package sakugyt
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.screens.charrects.CharacterRectList;
   import hotewa.Baqifa;
   import flash.display.Shape;
   import flash.display.Graphics;


   public class Sukeh extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sukeh(param1:Baqifa) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Shape = null;
         var _loc3_:Graphics = null;
         super();
         this.zetit=new CharacterRectList();
         addChild(this.zetit);
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

      public var zetit:CharacterRectList;

      public function ricos(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.zetit.y=param1;
         return;
      }
   }

}