package taruco
{
   import tytojonib.Kyjefe;


   public class Tyl extends Kyjefe
   {
      public function Tyl() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:KongregateAccountInfoView;

      public var ciqocu:Hosoqoqy;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.add(this.mijy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.remove(this.mijy);
         return;
      }

      private function mijy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ciqocu.fijehiv();
         return;
      }
   }

}