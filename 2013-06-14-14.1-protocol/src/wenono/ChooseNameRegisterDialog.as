package wenono
{
   import vysob.Dialog;
   import mukyrosu.Qanyduk;
   import komi.Vibemod;
   import qykifavol.Rulavowaz;


   public class ChooseNameRegisterDialog extends Dialog
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ChooseNameRegisterDialog() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Vibemod.lemev,Vibemod.giwov,Vibemod.nuhewefij,Vibemod.gywykewu,koda);
         this.cancel=new Rulavowaz(this,LEFT_BUTTON);
         this.register=new Rulavowaz(this,RIGHT_BUTTON);
         return;
      }

      private static const koda:String = "/chooseNameNeedRegister";

      public var cancel:Qanyduk;

      public var register:Qanyduk;
   }

}