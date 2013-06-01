package tidi
{
[CLASS422]   import tysenyzy.Zovisis;
   import rysuho.Kitypagur;


   public class Vyfa extends Zovisis
   {
      public function Vyfa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:ChooseNameRegisterDialog;

      public var luturesyb:Kitypagur;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.add(this.qare);
         this.view.cancel.add(this.onCancel);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.register.remove(this.qare);
         this.view.cancel.remove(this.onCancel);
         return;
      }

      private function qare() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.onCancel();
         this.luturesyb.dispatch();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.parent.removeChild(this.view);
         return;
      }
   }
[/CLASS]
}