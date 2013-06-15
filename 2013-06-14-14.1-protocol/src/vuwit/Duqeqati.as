package vuwit
{
   import tytojonib.Kyjefe;
   import racitagy.CaretakerQueryDialog;
   import fanij.Namejaja;
   import cizagamym.Lebovas;
   import flash.display.BitmapData;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Duqeqati extends Kyjefe
   {
      public function Duqeqati() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CaretakerQueryDialog;

      public var model:Namejaja;

      public var closeDialogs:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.closed.addOnce(this.nydegazeq);
         this.view.fapysiqo(this.lavamyny());
         return;
      }

      private function lavamyny() : BitmapData {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:int = this.model.kifuqim();
         return ObjectLibrary.getRedrawnTextureFromType(_loc1_,80,true);
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.closed.removeAll();
         return;
      }

      private function nydegazeq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}