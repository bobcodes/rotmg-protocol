package vyvomevac
{
   import racitagy.Sis;
   import vysob.Voni;
   import vysob.Kuwon;
   import mukyrosu.Qanyduk;
   import vysob.Dialog;


   public class EvolveDialog extends Sis implements Voni
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function EvolveDialog(param1:Nycaru) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qimaky=param1;
         super("EvolveDialog.title","","ErrorDialog.ok",null,null);
         this.nuzopabav.add(this,Dialog.LEFT_BUTTON);
         lavi=param1.width+1;
         return;
      }

      private static const pavuwekus:int = 6;

      public var qimaky:Nycaru;

      private const nuzopabav:Kuwon = new Kuwon();

      override protected function makeUIAndAdd() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         box_.addChild(this.qimaky);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qimaky.x=(lavi-this.qimaky.width)/2;
         this.qimaky.y=tob.getBounds(box_).bottom+pavuwekus;
         return;
      }

      override protected function drawGraphicsTemplate() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super.drawGraphicsTemplate();
         var _loc1_:Number = this.qimaky.getBounds(rect_).bottom;
         jahucot.drawLine(_loc1_);
         return;
      }

      public function dadezum() : Qanyduk {
         return this.nuzopabav.dadezum();
      }
   }

}