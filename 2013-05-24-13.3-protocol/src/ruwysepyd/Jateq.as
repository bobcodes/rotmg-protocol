package ruwysepyd
{
   import flash.display.Sprite;
   import vahejo.Kigokoci;


   public class Jateq extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jateq() {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Kigokoci = null;
         super();
         var _loc1_:* = 0;
         while(_loc1_<2)
         {
            _loc2_=new Kigokoci(this.gujoj[_loc1_],_loc1_);
            _loc2_.x=_loc1_*(Kigokoci.jyjimi+polini);
            addChild(_loc2_);
            _loc1_++;
         }
         return;
      }

      private static const gifupyq:Array = [1,0,0,1];

      private static const rawidomi:Array = [0,1,1,0];

      private static const polini:int = 4;

      private const gujoj:Array = [gifupyq,rawidomi];
   }

}