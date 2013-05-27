package coh
{
   import qov.Kalefu;
   import zoroc.Gecezyw;
   import zoroc.Taqosohuf;
   import zoroc.Zyqusomub;


   public class Jokatimy extends Kalefu
   {
      public function Jokatimy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:FusionStrength;

      public var duqa:Gecezyw;

      public var paqocahu:Taqosohuf;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(!this.paqocahu.puda)
         {
            this.paqocahu.puda=this.duqa.rizidakuv();
         }
         if(this.paqocahu.donekecip())
         {
            this.view.sawepe(Zyqusomub.pamicaq(this.paqocahu.puda,this.paqocahu.wehyte));
         }
         else
         {
            this.view.reset();
         }
         return;
      }
   }

}