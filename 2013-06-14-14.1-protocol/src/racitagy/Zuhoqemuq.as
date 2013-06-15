package racitagy
{
   import vysob.Dialog;
   import flash.text.TextFormatAlign;
   import hivysif.Guzowoja;


   public class Zuhoqemuq extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Zuhoqemuq(param1:Dialog) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.pevojal=param1;
         return;
      }

      private static const wafe:int = 14;

      private var pevojal:Dialog;

      public function kenofejyn() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pevojal.tob.setColor(Dialog.ratuz);
         this.pevojal.wybibe.setHorizontalAlign(TextFormatAlign.CENTER);
         this.pevojal.qipuvymo=4;
         this.pevojal.vytozof=18;
         this.pevojal.cyni=18;
         return;
      }

      public function qigeju() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Guzowoja = this.pevojal.tob;
         var _loc2_:Number = _loc1_.getBounds(this.pevojal.rect_).bottom+this.pevojal.qipuvymo;
         this.drawLine(_loc2_);
         return;
      }

      public function drawLine(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pevojal.rect_.graphics.moveTo(0,param1);
         this.pevojal.rect_.graphics.beginFill(6710886,1);
         this.pevojal.rect_.graphics.drawRect(0,param1,this.pevojal.lavi-1,2);
         return;
      }

      public function positionText() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Guzowoja = this.pevojal.tob;
         this.pevojal.wybibe.y=_loc1_.getBounds(this.pevojal.rect_).bottom+this.pevojal.qipuvymo+wafe;
         return;
      }
   }

}