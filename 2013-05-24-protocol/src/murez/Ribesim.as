package murez
{
   import qov.Kalefu;
   import najilihak.Tofud;


   public class Ribesim extends Kalefu
   {
      public function Ribesim() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ReskinPanel;

      public var kawiqo:Tofud;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.reskin.add(this.pigopeq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.reskin.remove(this.pigopeq);
         return;
      }

      private function pigopeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.kawiqo.dispatch();
         return;
      }
   }

}