package tidi
{
[CLASS509]   import tysenyzy.Zovisis;
   import rysuho.Kitypagur;
   import kirofyny.Tiqimav;


   public class Mewygukyt extends Zovisis
   {
      public function Mewygukyt() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Qudel;

      public var luturesyb:Kitypagur;

      public var close:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cancel.add(this.onCancel);
         this.view.register.add(this.qare);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.cancel.remove(this.onCancel);
         this.view.register.remove(this.qare);
         return;
      }

      private function qare() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.luturesyb.dispatch();
         return;
      }

      private function onCancel() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.close.dispatch();
         return;
      }
   }
[/CLASS]
}