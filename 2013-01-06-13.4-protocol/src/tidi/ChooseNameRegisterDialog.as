package tidi
{
[CLASS505]   import cejyva.Dialog;
   import tinava.Dab;
   import haqakel.Kefyfa;
   import zehus.Kelapu;


   public class ChooseNameRegisterDialog extends Dialog
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function ChooseNameRegisterDialog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(Kefyfa.kune,Kefyfa.qidikowa,Kefyfa.nyq,Kefyfa.wecycigos,foq);
         this.cancel=new Kelapu(this,LEFT_BUTTON);
         this.register=new Kelapu(this,RIGHT_BUTTON);
         return;
      }

      private static const foq:String = "/chooseNameNeedRegister";

      public var cancel:Dab;

      public var register:Dab;
   }
[/CLASS]
}