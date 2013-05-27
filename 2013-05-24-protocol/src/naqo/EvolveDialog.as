package naqo
{
   import fidymu.Tuneji;
   import nas.Facuca;
   import nas.Num;
   import tulunyno.Hugyqufyq;
   import nas.Dialog;


   public class EvolveDialog extends Tuneji implements Facuca
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function EvolveDialog(param1:Mibis) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.mypog=param1;
         super("EvolveDialog.title","","ErrorDialog.ok",null,null);
         this.magymi.add(this,Dialog.LEFT_BUTTON);
         baw=param1.width+1;
         return;
      }

      private static const vijip:int = 6;

      public var mypog:Mibis;

      private const magymi:Num = new Num();

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         box_.addChild(this.mypog);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mypog.x=(baw-this.mypog.width)/2;
         this.mypog.y=pevyh.getBounds(box_).bottom+vijip;
         return;
      }

      override protected function drawGraphicsTemplate() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.drawGraphicsTemplate();
         var _loc1_:Number = this.mypog.getBounds(rect_).bottom;
         zowopilo.drawLine(_loc1_);
         return;
      }

      public function polojubu() : Hugyqufyq {
         return this.magymi.polojubu();
      }
   }

}