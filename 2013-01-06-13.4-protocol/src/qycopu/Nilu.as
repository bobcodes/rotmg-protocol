package qycopu
{
[CLASS1316]   import tysenyzy.Zovisis;
   import wociwa.Samejutac;


   public class Nilu extends Zovisis
   {
      public function Nilu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ReskinPanel;

      public var nycoqu:Samejutac;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.reskin.add(this.gocy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.reskin.remove(this.gocy);
         return;
      }

      private function gocy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.nycoqu.dispatch();
         return;
      }
   }
[/CLASS]
}