package gepa
{
   import qov.Kalefu;
   import fidymu.CaretakerQueryDialog;
   import zoroc.Gecezyw;
   import wegyluke.Cowymute;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Lujeg extends Kalefu
   {
      public function Lujeg() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CaretakerQueryDialog;

      public var model:Gecezyw;

      public var closeDialogs:Cowymute;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.addOnce(this.pomuwok);
         this.view.cemis(this.waforubot());
         return;
      }

      private function waforubot() : BitmapData {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.model.seqev();
         return ObjectLibrary.getRedrawnTextureFromType(_loc1_,80,true);
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.removeAll();
         return;
      }

      private function pomuwok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}