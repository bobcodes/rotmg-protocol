package tidi
{
[CLASS1664]   import flash.display.Sprite;
   import rymuhuduh.Beqalag;


   public class Necad extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Necad() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Beqalag = null;
         super();
         var _loc1_:* = 0;
         while(_loc1_<2)
         {
            _loc2_=new Beqalag(this.kuwakap[_loc1_],_loc1_);
            _loc2_.x=_loc1_*(Beqalag.fob+bohusyqo);
            addChild(_loc2_);
            _loc1_++;
         }
         return;
      }

      private static const dagepywo:Array = [1,0,0,1];

      private static const sotas:Array = [0,1,1,0];

      private static const bohusyqo:int = 4;

      private const kuwakap:Array = [dagepywo,sotas];
   }
[/CLASS]
}