package tidi
{
[CLASS408]   import tysenyzy.Zovisis;
   import qilarag.Nenovudym;
   import dutes.Lezoh;


   public class Mahive extends Zovisis
   {
      public function Mahive() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Nenovudym;

      public var ritoji:Lezoh;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ritoji.add(this.hucyz);
         this.view.newotikeh("Loading.text");
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ritoji.remove(this.hucyz);
         return;
      }

      private function hucyz(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.newotikeh(param1);
         return;
      }
   }
[/CLASS]
}