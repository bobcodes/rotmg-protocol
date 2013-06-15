package wenono
{
   import flash.display.Sprite;
   import qymoho.Vivezupig;


   public class Goz extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Goz() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vivezupig = null;
         super();
         var _loc1_:* = 0;
         while(_loc1_<2)
         {
            _loc2_=new Vivezupig(this.bowyc[_loc1_],_loc1_);
            _loc2_.x=_loc1_*(Vivezupig.curymemi+ruhav);
            addChild(_loc2_);
            _loc1_++;
         }
         return;
      }

      private static const byg:Array = [1,0,0,1];

      private static const kicopamym:Array = [0,1,1,0];

      private static const ruhav:int = 4;

      private const bowyc:Array = [byg,kicopamym];
   }

}