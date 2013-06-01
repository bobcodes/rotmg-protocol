package wynuqehej
{
[CLASS970]   import jat.Rymowig;
   import cejyva.Qopatir;
   import cejyva.Revaz;
   import qypupet.Vuravipyg;
   import cejyva.Dialog;
   import flash.events.Event;
   import tinava.Dab;
   import haqakel.Kefyfa;


   public class Necudyt extends Rymowig implements Qopatir
   {
      public function Necudyt(param1:Vuravipyg) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(Kefyfa.dogej,Kefyfa.himekegog,Kefyfa.tahivo,Kefyfa.palysiqu,null);
         this.petVO=param1;
         this.higywyj();
         return;
      }

      public var release:Cejusy;

      private const momy:Revaz = new Revaz();

      private var petVO:Vuravipyg;

      override protected function setDialogWidth() : int {
         return 400;
      }

      private function higywyj() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.momy.add(this,Dialog.RIGHT_BUTTON);
         this.momy.add(this,Dialog.LEFT_BUTTON);
         addEventListener(Dialog.LEFT_BUTTON,this.qapisocu);
         return;
      }

      private function qapisocu(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Dialog.LEFT_BUTTON,this.qapisocu);
         this.release.dispatch(this.petVO.lecafis());
         return;
      }

      public function gif() : Dab {
         return this.momy.gif();
      }

      public function getPetVO() : Vuravipyg {
         return this.petVO;
      }
   }
[/CLASS]
}