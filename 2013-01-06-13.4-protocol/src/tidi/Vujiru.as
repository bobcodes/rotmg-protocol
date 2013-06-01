package tidi
{
[CLASS436]   import cejyva.Dialog;
   import tinava.Dab;
   import haqakel.Kefyfa;
   import zehus.Kelapu;


   public class Vujiru extends Dialog
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vujiru() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(Kefyfa.fovab,Kefyfa.tujuvi,Kefyfa.palysiqu,Kefyfa.kegyh,foq);
         this.cancel=new Kelapu(this,LEFT_BUTTON);
         this.wynare=new Kelapu(this,RIGHT_BUTTON);
         return;
      }

      private static const foq:String = "/notEnoughGold";

      public var cancel:Dab;

      public var wynare:Dab;
   }
[/CLASS]
}