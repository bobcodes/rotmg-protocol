package golac
{
[CLASS192]   import tysenyzy.Zovisis;
   import kirofyny.Tiqimav;


   public class Barewapo extends Zovisis
   {
      public function Barewapo() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Juc;

      public var closeDialogs:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.add(this.zykekulucy);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.remove(this.zykekulucy);
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}