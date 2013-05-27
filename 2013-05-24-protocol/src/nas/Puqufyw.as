package nas
{
   import qov.Kalefu;
   import wegyluke.Cowymute;
   import tulunyno.Hugyqufyq;


   public class Puqufyw extends Kalefu
   {
      public function Puqufyw() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var kycusoqum:Facuca;

      public var kezubydur:Cowymute;

      private var filedyqo:Hugyqufyq;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.filedyqo=this.kycusoqum.polojubu();
         this.filedyqo.add(this.onClose);
         return;
      }

      private function onClose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kezubydur.dispatch();
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.filedyqo.remove(this.onClose);
         return;
      }
   }

}