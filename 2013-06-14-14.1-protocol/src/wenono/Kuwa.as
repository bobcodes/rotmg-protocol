package wenono
{
   import tytojonib.Kyjefe;
   import pusy.Rycanepiq;
   import pusy.Tebozaso;
   import dicyl.Sed;
   import micac.Gibydupu;


   public class Kuwa extends Kyjefe
   {
      public function Kuwa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Hyc;

      public var deru:Rycanepiq;

      public var bateji:Tebozaso;

      public var dacasoze:Sed;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.deru.add(this.luroqobi);
         this.bateji.add(this.hugycoke);
         this.dacasoze.add(this.tehyrejo);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.deru.remove(this.luroqobi);
         this.bateji.remove(this.hugycoke);
         this.dacasoze.remove(this.tehyrejo);
         return;
      }

      private function luroqobi(param1:Gibydupu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.deru(param1);
         return;
      }

      private function hugycoke(param1:Gibydupu) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.bateji(param1);
         return;
      }

      private function tehyrejo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }
   }

}