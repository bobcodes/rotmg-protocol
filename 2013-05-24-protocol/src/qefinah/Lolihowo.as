package qefinah
{
   import qov.Kalefu;
   import sasacen.Baquja;
   import ruwysepyd.Qah;
   import com.company.assembleegameclient.objects.Player;
   import flash.events.MouseEvent;


   public class Lolihowo extends Kalefu
   {
      public function Lolihowo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Miqik;

      public var zihy:Baquja;

      public var vozori:Quwaku;

      public var qyli:Qah;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.wudufi.add(this.mubolity);
         this.zihy.add(this.gageg);
         this.qyli.add(this.fogy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.wudufi.remove(this.mubolity);
         this.zihy.remove(this.gageg);
         return;
      }

      private function gageg(param1:Player) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.draw(param1);
         return;
      }

      private function mubolity(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.view.tycycim==Miqik.dyha)
         {
            this.view.weqyjulov();
            this.vozori.dispatch(this.view);
         }
         return;
      }

      private function fogy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gajuwyqi();
         return;
      }
   }

}