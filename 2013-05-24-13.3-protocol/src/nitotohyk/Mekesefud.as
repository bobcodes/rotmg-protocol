package nitotohyk
{
   import flash.display.Sprite;


   public class Mekesefud extends Sprite
   {
      public function Mekesefud() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var jabakywip:Sprite;

      private var pupahyk:Sprite;

      public function zogytuso(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.jabakywip==param1)
         {
            return;
         }
         this.kom();
         this.jabakywip=param1;
         addChild(param1);
         return;
      }

      private function kom() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if((this.jabakywip)&&(contains(this.jabakywip)))
         {
            this.pupahyk=this.jabakywip;
            removeChild(this.jabakywip);
         }
         return;
      }

      public function wuhebef() : Sprite {
         return this.pupahyk;
      }
   }

}