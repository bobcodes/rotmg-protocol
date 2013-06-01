package fidymu
{
   import nas.Dialog;
   import flash.text.TextFormatAlign;
   import movimet.Lufub;


   public class Lyqumoq extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Lyqumoq(param1:Dialog) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.kycusoqum=param1;
         return;
      }

      private static const bavoz:int = 14;

      private var kycusoqum:Dialog;

      public function seba() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kycusoqum.pevyh.setColor(Dialog.jezupydu);
         this.kycusoqum.qicoqymuj.setHorizontalAlign(TextFormatAlign.CENTER);
         this.kycusoqum.myno=4;
         this.kycusoqum.wotasyduh=18;
         this.kycusoqum.susu=18;
         return;
      }

      public function mudikom() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Lufub = this.kycusoqum.pevyh;
         var _loc2_:Number = _loc1_.getBounds(this.kycusoqum.rect_).bottom+this.kycusoqum.myno;
         this.drawLine(_loc2_);
         return;
      }

      public function drawLine(param1:Number) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kycusoqum.rect_.graphics.moveTo(0,param1);
         this.kycusoqum.rect_.graphics.beginFill(6710886,1);
         this.kycusoqum.rect_.graphics.drawRect(0,param1,this.kycusoqum.baw-1,2);
         return;
      }

      public function positionText() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Lufub = this.kycusoqum.pevyh;
         this.kycusoqum.qicoqymuj.y=_loc1_.getBounds(this.kycusoqum.rect_).bottom+this.kycusoqum.myno+bavoz;
         return;
      }
   }

}