package wenono
{
   import tytojonib.Kyjefe;
   import waryp.Sigaqo;
   import pomujukir.Simoqo;


   public class Wagazoj extends Kyjefe
   {
      public function Wagazoj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Sigaqo;

      public var dezylihy:Simoqo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dezylihy.add(this.hawil);
         this.view.somaqu("Loading.text");
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.dezylihy.remove(this.hawil);
         return;
      }

      private function hawil(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.somaqu(param1);
         return;
      }
   }

}