package fumala
{
   import tytojonib.Kyjefe;
   import ranu.Hydogozeq;
   import ranu.Hapyvisow;
   import ranu.Fiwot;
   import ranu.Bivu;


   public class Seq extends Kyjefe
   {
      public function Seq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Lagoge;

      public var mikipu:Hydogozeq;

      public var show:Hapyvisow;

      public var hide:Fiwot;

      public var remove:Bivu;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.remove.add(this.lidiqep);
         this.mikipu.add(this.buhusoh);
         this.show.add(this.behik);
         this.hide.add(this.qolilat);
         this.view.visible=false;
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.remove.remove(this.lidiqep);
         this.mikipu.remove(this.buhusoh);
         this.show.remove(this.behik);
         this.hide.remove(this.qolilat);
         return;
      }

      private function lidiqep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.parent.removeChild(this.view);
         return;
      }

      private function buhusoh() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=!this.view.visible;
         return;
      }

      private function behik() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.visible=true;
         return;
      }

      private function qolilat() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.visible=false;
         return;
      }
   }

}