package tefabezo
{
   import flash.display.Sprite;


   public class Quvotuz extends Sprite
   {
      public function Quvotuz() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var wede:Sprite;

      private var hejiri:Sprite;

      public function syfu(param1:Sprite) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.wede==param1)
         {
            return;
         }
         this.disurudo();
         this.wede=param1;
         addChild(param1);
         return;
      }

      private function disurudo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.wede)&&(contains(this.wede)))
         {
            this.hejiri=this.wede;
            removeChild(this.wede);
         }
         return;
      }

      public function ryvy() : Sprite {
         return this.hejiri;
      }
   }

}