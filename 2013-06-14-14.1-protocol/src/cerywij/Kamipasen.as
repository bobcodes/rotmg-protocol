package cerywij
{
   import flash.display.Sprite;


   public class Kamipasen extends Sprite
   {
      public function Kamipasen() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         graphics.beginFill(Kog.losecas);
         graphics.drawRoundRect(0,0,Kog.kokicok,Kog.nepejoc,Kog.kubecaby,Kog.kubecaby);
         graphics.endFill();
         return;
      }
   }

}