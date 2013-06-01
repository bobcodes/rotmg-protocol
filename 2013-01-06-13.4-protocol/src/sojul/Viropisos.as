package sojul
{
[CLASS452]   import cejyva.Dialog;
   import tinava.Dab;
   import haqakel.Kefyfa;
   import zehus.Kelapu;


   public class Viropisos extends Dialog
   {
      public function Viropisos(param1:String) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(Kefyfa.kune,param1,Kefyfa.nyq,Kefyfa.wecycigos,"/needRegister");
         this.cancel=new Kelapu(this,LEFT_BUTTON);
         this.register=new Kelapu(this,RIGHT_BUTTON);
         return;
      }

      public var cancel:Dab;

      public var register:Dab;
   }
[/CLASS]
}