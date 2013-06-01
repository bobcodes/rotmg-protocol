package tizozowof
{
[CLASS751]   import tysenyzy.Zovisis;
   import sojul.RegisterWebAccountDialog;
   import rysuho.Zubukyby;
   import kyhawibyc.Fapu;


   public class Kirideq extends Zovisis
   {
      public function Kirideq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:RegisterWebAccountDialog;

      public var register:Zubukyby;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.register.add(this.qare);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.qare);
         return;
      }

      private function qare(param1:Fapu) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.register.dispatch(param1);
         return;
      }
   }
[/CLASS]
}