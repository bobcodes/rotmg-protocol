package tefabezo
{
   import tytojonib.Kyjefe;
   import pomujukir.Bemivu;
   import lemugo.Zifi;
   import pomujukir.Raqy;
   import flash.display.Sprite;


   public class Cyvom extends Kyjefe
   {
      public function Cyvom() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Quvotuz;

      public var syfu:Bemivu;

      public var model:Zifi;

      public var bunubuceg:Raqy;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.add(this.qos);
         this.bunubuceg.add(this.bij);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.syfu.remove(this.qos);
         this.bunubuceg.add(this.bij);
         return;
      }

      private function qos(param1:Sprite) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.model.bytejetyc(Object(param1).constructor as Class);
         this.view.syfu(param1);
         return;
      }

      private function bij() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.syfu(this.view.ryvy());
         return;
      }
   }

}