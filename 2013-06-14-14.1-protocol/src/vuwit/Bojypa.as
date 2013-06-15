package vuwit
{
   import tytojonib.Kyjefe;
   import jyhyzujyw.Bagebok;
   import fanij.Cun;


   public class Bojypa extends Kyjefe
   {
      public function Bojypa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Sogin;

      public var bapype:Bagebok;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.kapivod.add(this.kuzijen);
         this.view.init();
         return;
      }

      private function kuzijen(param1:Cun) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.bapype.dispatch(param1);
         return;
      }

      override public function destroy() : void {
         return;
      }
   }

}