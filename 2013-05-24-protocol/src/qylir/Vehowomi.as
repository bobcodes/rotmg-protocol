package qylir
{
   import qov.Kalefu;
   import suko.Tarus;
   import sasacen.Baquja;
   import com.company.assembleegameclient.objects.Player;


   public class Vehowomi extends Kalefu
   {
      public function Vehowomi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Tarus;

      public var zihy:Baquja;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zihy.add(this.gageg);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zihy.remove(this.gageg);
         return;
      }

      private function gageg(param1:Player) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.draw();
         return;
      }
   }

}