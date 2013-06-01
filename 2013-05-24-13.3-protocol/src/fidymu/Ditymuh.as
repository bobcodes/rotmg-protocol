package fidymu
{
   import coh.Riqi;
   import wujahega.Size;
   import com.company.assembleegameclient.ui.Luvu;
   import qucuqesif.Rasoqymi;


   public class Ditymuh extends Tuneji
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Ditymuh(param1:PetPicker) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super("PetPicker.title","PetPicker.text",null,null,null);
         this.qeqe=param1;
         this.cynybiqo();
         this.pisykyr=Rasoqymi.veruno(baw);
         box_.addChild(this.pisykyr);
         return;
      }

      private static const padding:int = 12;

      private static const tidu:int = 217;

      public var qeqe:PetPicker;

      public var pisykyr:Riqi;

      override protected function setDialogWidth() : int {
         return 330;
      }

      private function cynybiqo() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.qeqe.setSize(new Size(baw-padding*2,tidu));
         this.qeqe.gynivy(8);
         this.qeqe.cep(48);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.drawAdditionalUI();
         this.qydafo();
         this.desyseqyt();
         return;
      }

      private function desyseqyt() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.qeqe.x=padding;
         this.qeqe.y=this.raqapu();
         box_.addChild(this.qeqe);
         return;
      }

      private function qydafo() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Luvu = null;
         _loc1_=new Luvu(baw-padding*2,0);
         _loc1_.x=padding;
         _loc1_.y=this.raqapu();
         box_.addChild(_loc1_);
         return;
      }

      private function raqapu() : Number {
         return box_.getBounds(this).bottom+padding;
      }

      override protected function getBoxHeight() : Number {
         return super.getBoxHeight()-this.qeqe.height-tidu;
      }
   }

}