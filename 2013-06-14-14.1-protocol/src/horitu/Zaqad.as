package horitu
{
   import racitagy.Sis;
   import vysob.Voni;
   import vysob.Kuwon;
   import fanij.Cun;
   import vysob.Dialog;
   import flash.events.Event;
   import mukyrosu.Qanyduk;
   import komi.Vibemod;


   public class Zaqad extends Sis implements Voni
   {
      public function Zaqad(param1:Cun) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(Vibemod.weriga,Vibemod.fozybiqip,Vibemod.fyr,Vibemod.diqysyk,null);
         this.petVO=param1;
         this.furisakir();
         return;
      }

      public var release:Qujuryq;

      private const nuzopabav:Kuwon = new Kuwon();

      private var petVO:Cun;

      override protected function setDialogWidth() : int {
         return 400;
      }

      private function furisakir() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.nuzopabav.add(this,Dialog.RIGHT_BUTTON);
         this.nuzopabav.add(this,Dialog.LEFT_BUTTON);
         addEventListener(Dialog.LEFT_BUTTON,this.velecokuf);
         return;
      }

      private function velecokuf(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Dialog.LEFT_BUTTON,this.velecokuf);
         this.release.dispatch(this.petVO.lepuve());
         return;
      }

      public function dadezum() : Qanyduk {
         return this.nuzopabav.dadezum();
      }

      public function getPetVO() : Cun {
         return this.petVO;
      }
   }

}