package buzok
{
   import fidymu.Tuneji;
   import nas.Facuca;
   import nas.Num;
   import zoroc.Bezuco;
   import nas.Dialog;
   import flash.events.Event;
   import tulunyno.Hugyqufyq;
   import aaa.rotmg.i18n.I18nKeys;


   public class Guhawywaw extends Tuneji implements Facuca
   {
      public function Guhawywaw(param1:Bezuco) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(I18nKeys.bemuwy,I18nKeys.caqytylip,I18nKeys.qabysu,I18nKeys.toryryqos,null);
         this.petVO=param1;
         this.sihuwugi();
         return;
      }

      public var release:Jewy;

      private const magymi:Num = new Num();

      private var petVO:Bezuco;

      override protected function setDialogWidth() : int {
         return 400;
      }

      private function sihuwugi() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.magymi.add(this,Dialog.RIGHT_BUTTON);
         this.magymi.add(this,Dialog.LEFT_BUTTON);
         addEventListener(Dialog.LEFT_BUTTON,this.bijipiqih);
         return;
      }

      private function bijipiqih(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Dialog.LEFT_BUTTON,this.bijipiqih);
         this.release.dispatch(this.petVO.gutod());
         return;
      }

      public function polojubu() : Hugyqufyq {
         return this.magymi.polojubu();
      }

      public function getPetVO() : Bezuco {
         return this.petVO;
      }
   }

}