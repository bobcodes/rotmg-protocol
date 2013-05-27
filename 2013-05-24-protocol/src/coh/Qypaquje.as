package coh
{
   import qov.Kalefu;
   import buzok.PetPanel;
   import zoroc.Gecezyw;
   import pujo.Gufo;
   import raqu.Hujuhy;
   import pujo.Cehakobe;
   import pujo.Vurewu;
   import pujo.Toqaqeg;
   import wegyluke.Hez;
   import kyco.Nun;
   import flash.events.MouseEvent;
   import zoroc.Bezuco;
   import buzok.Guhawywaw;
   import qucuqesif.Qemo;
   import povopito.Ryduwi;


   public class Qypaquje extends Kalefu
   {
      public function Qypaquje() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:PetPanel;

      public var gimyliq:Gecezyw;

      public var qakymudu:Gufo;

      public var showToolTip:Hujuhy;

      public var behoj:Cehakobe;

      public var mymozapo:Vurewu;

      public var zype:Toqaqeg;

      public var naval:Hez;

      public var cemohoqal:Nun;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.setState(this.nic());
         this.view.cybat.add(this.jofeta);
         this.view.cydoky.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.view.pib.addEventListener(MouseEvent.CLICK,this.nodyfebeb);
         this.view.jelora.addEventListener(MouseEvent.CLICK,this.onButtonClick);
         this.zype.add(this.kaca);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.pib.removeEventListener(MouseEvent.CLICK,this.nodyfebeb);
         return;
      }

      private function nodyfebeb(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cemohoqal.map(Bezuco).cufypy(this.view.petVO);
         this.naval.dispatch(this.cemohoqal.getInstance(Guhawywaw));
         return;
      }

      private function kaca() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Bezuco = this.gimyliq.rizidakuv();
         this.view.jaguh(!_loc1_);
         return;
      }

      private function nic() : uint {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.hipeh())
         {
            return Qemo.fole;
         }
         return Qemo.ticavomen;
      }

      protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.hipeh())
         {
            this.behoj.dispatch(this.view.petVO.gutod());
         }
         else
         {
            this.mymozapo.dispatch(this.view.petVO.gutod());
         }
         return;
      }

      private function jofeta(param1:Ryduwi) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.showToolTip.dispatch(param1);
         return;
      }

      private function hipeh() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.gimyliq.rizidakuv()?this.gimyliq.rizidakuv().gutod()==this.view.petVO.gutod():false;
      }
   }

}