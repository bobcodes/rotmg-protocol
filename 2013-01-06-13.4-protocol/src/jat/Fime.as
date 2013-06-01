package jat
{
[CLASS938]   import cejyva.Dialog;
   import flash.text.TextFormatAlign;
   import pudev.Capitu;


   public class Fime extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Fime(param1:Dialog) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vit=param1;
         return;
      }

      private static const mugol:int = 14;

      private var vit:Dialog;

      public function gutapydep() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vit.danypifev.setColor(Dialog.nijurec);
         this.vit.wan.setHorizontalAlign(TextFormatAlign.CENTER);
         this.vit.holinecuc=4;
         this.vit.siqed=18;
         this.vit.vitufefaz=18;
         return;
      }

      public function wakyg() : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Capitu = this.vit.danypifev;
         var _loc2_:Number = _loc1_.getBounds(this.vit.rect_).bottom+this.vit.holinecuc;
         this.drawLine(_loc2_);
         return;
      }

      public function drawLine(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vit.rect_.graphics.moveTo(0,param1);
         this.vit.rect_.graphics.beginFill(6710886,1);
         this.vit.rect_.graphics.drawRect(0,param1,this.vit.qureje-1,2);
         return;
      }

      public function positionText() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Capitu = this.vit.danypifev;
         this.vit.wan.y=_loc1_.getBounds(this.vit.rect_).bottom+this.vit.holinecuc+mugol;
         return;
      }
   }
[/CLASS]
}