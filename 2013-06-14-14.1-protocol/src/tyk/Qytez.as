package tyk
{
   import tytojonib.Kyjefe;
   import zekeqa.CreateGuildFrame;
   import cizagamym.Lebovas;


   public class Qytez extends Kyjefe
   {
      public function Qytez() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CreateGuildFrame;

      public var gimenakal:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.add(this.lyb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.close.remove(this.lyb);
         return;
      }

      private function lyb() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }
   }

}