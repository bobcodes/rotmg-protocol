package jat
{
[CLASS243]   import fyvanod.Jasuhoco;
   import lehih.Size;
   import com.company.assembleegameclient.ui.Detys;
   import kozaligov.Bapipe;


   public class Linuzape extends Rymowig
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Linuzape(param1:PetPicker) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super("PetPicker.title","PetPicker.text",null,null,null);
         this.lyb=param1;
         this.gimyji();
         this.giqezi=Bapipe.dupypy(qureje);
         box_.addChild(this.giqezi);
         return;
      }

      private static const padding:int = 12;

      private static const tuqaryt:int = 217;

      public var lyb:PetPicker;

      public var giqezi:Jasuhoco;

      override protected function setDialogWidth() : int {
         return 330;
      }

      private function gimyji() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyb.setSize(new Size(qureje-padding*2,tuqaryt));
         this.lyb.qege(8);
         this.lyb.fatetoky(48);
         return;
      }

      override protected function drawAdditionalUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super.drawAdditionalUI();
         this.vidipe();
         this.won();
         return;
      }

      private function won() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyb.x=padding;
         this.lyb.y=this.dyjyhegew();
         box_.addChild(this.lyb);
         return;
      }

      private function vidipe() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Detys = null;
         _loc1_=new Detys(qureje-padding*2,0);
         _loc1_.x=padding;
         _loc1_.y=this.dyjyhegew();
         box_.addChild(_loc1_);
         return;
      }

      private function dyjyhegew() : Number {
         return box_.getBounds(this).bottom+padding;
      }

      override protected function getBoxHeight() : Number {
         return super.getBoxHeight()-this.lyb.height-tuqaryt;
      }
   }
[/CLASS]
}