package gepa
{
   import flash.display.Sprite;
   import fidymu.Zanewuhy;
   import com.company.assembleegameclient.util.Votif;


   public class Kes extends Sprite implements Zanewuhy
   {
      public function Kes() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.tuleva=new Votif(this);
         return;
      }

      public var tuleva:Votif;

      protected function keqej() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.x=(this.tuleva.qyru()-this.width)*0.5;
         this.y=(this.tuleva.rociku()-this.height)*0.5;
         return;
      }
   }

}