package wyzoz
{
[CLASS365]   import flash.display.Sprite;


   public class Tubywuk extends Sprite
   {
      public function Tubywuk() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var tucot:Sprite;

      private var zumu:Sprite;

      public function cucec(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.tucot==param1)
         {
            return;
         }
         this.rogidud();
         this.tucot=param1;
         addChild(param1);
         return;
      }

      private function rogidud() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.tucot)&&(contains(this.tucot)))
         {
            this.zumu=this.tucot;
            removeChild(this.tucot);
         }
         return;
      }

      public function qeg() : Sprite {
         return this.zumu;
      }
   }
[/CLASS]
}