package gepa
{
   import qov.Kalefu;
   import zoroc.Taqosohuf;
   import janopep.Qujetivas;


   public class Qysoduz extends Kalefu
   {
      public function Qysoduz() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var paqocahu:Taqosohuf;

      public var wijyf:Qujetivas;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wijyf.add(this.hahuj);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.wijyf.remove(this.hahuj);
         return;
      }

      private function hahuj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.paqocahu.clear();
         return;
      }
   }

}