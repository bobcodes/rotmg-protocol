package ruwysepyd
{
   import qov.Kalefu;
   import fom.Hepeg;
   import sasacen.Baquja;
   import com.company.assembleegameclient.objects.Player;


   public class Rumuqap extends Kalefu
   {
      public function Rumuqap() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Lujaj;

      public var ruhakony:Hepeg;

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
         this.zihy.add(this.gageg);
         return;
      }

      private function gageg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }
   }

}