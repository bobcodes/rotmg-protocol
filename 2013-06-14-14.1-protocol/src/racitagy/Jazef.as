package racitagy
{
   import haj.Hiquhifu;
   import typoc.Size;
   import com.company.assembleegameclient.ui.Gymajyzu;
   import fypeba.Zikorur;


   public class Jazef extends Sis
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jazef(param1:PetPicker) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super("PetPicker.title","PetPicker.text",null,null,null);
         this.cicijydij=param1;
         this.kok();
         this.gopubotag=Zikorur.totaca(lavi);
         box_.addChild(this.gopubotag);
         return;
      }

      private static const padding:int = 12;

      private static const qysyfeb:int = 217;

      public var cicijydij:PetPicker;

      public var gopubotag:Hiquhifu;

      override protected function setDialogWidth() : int {
         return 330;
      }

      private function kok() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cicijydij.setSize(new Size(lavi-padding*2,qysyfeb));
         this.cicijydij.wysycoviw(8);
         this.cicijydij.geva(48);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super.drawAdditionalUI();
         this.faqut();
         this.qubuqofus();
         return;
      }

      private function qubuqofus() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.cicijydij.x=padding;
         this.cicijydij.y=this.tumigyk();
         box_.addChild(this.cicijydij);
         return;
      }

      private function faqut() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Gymajyzu = null;
         _loc1_=new Gymajyzu(lavi-padding*2,0);
         _loc1_.x=padding;
         _loc1_.y=this.tumigyk();
         box_.addChild(_loc1_);
         return;
      }

      private function tumigyk() : Number {
         return box_.getBounds(this).bottom+padding;
      }

      override protected function getBoxHeight() : Number {
         return super.getBoxHeight()-this.cicijydij.height-qysyfeb;
      }
   }

}