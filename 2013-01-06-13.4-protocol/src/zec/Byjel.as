package zec
{
[CLASS263]   import tysenyzy.Zovisis;
   import jat.CaretakerQueryDialog;
   import qypupet.Tuhyfutos;
   import kirofyny.Tiqimav;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Byjel extends Zovisis
   {
      public function Byjel() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CaretakerQueryDialog;

      public var model:Tuhyfutos;

      public var closeDialogs:Tiqimav;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.addOnce(this.zykekulucy);
         this.view.ferevu(this.bojad());
         return;
      }

      private function bojad() : BitmapData {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.model.pybatah();
         return ObjectLibrary.getRedrawnTextureFromType(_loc1_,80,true);
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.removeAll();
         return;
      }

      private function zykekulucy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }
[/CLASS]
}