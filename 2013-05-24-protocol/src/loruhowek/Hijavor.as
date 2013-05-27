package loruhowek
{
   import qov.Kalefu;
   import raqu.Hujuhy;
   import raqu.Goq;
   import povopito.Ryduwi;


   public class Hijavor extends Kalefu
   {
      public function Hijavor() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Lis;

      public var kyzytanuh:Hujuhy;

      public var tihe:Goq;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kyzytanuh.add(this.jinu);
         this.tihe.add(this.hanew);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kyzytanuh.remove(this.jinu);
         this.tihe.remove(this.hanew);
         return;
      }

      private function jinu(param1:Ryduwi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.show(param1);
         return;
      }

      private function hanew() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hide();
         return;
      }
   }

}