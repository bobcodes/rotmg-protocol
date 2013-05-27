package biqacufo
{
   import qov.Kalefu;
   import wyrovu.Tivehy;
   import zubamyki.Mogedut;
   import cuwyg.Zubo;
   import aaa.rotmg.account.Account;
   import cuwyg.Dyqy;
   import wyrovu.Tyjo;


   public class Fegypeh extends Kalefu
   {
      public function Fegypeh() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Tivehy;

      public var addSpeechBalloon:Mogedut;

      public var burizahyk:Zubo;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.addSpeechBalloon.add(this.leropusyb);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.addSpeechBalloon.remove(this.leropusyb);
         return;
      }

      private function leropusyb(param1:Dyqy) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:String = (this.account.bugi())||(this.burizahyk.tavozygal(param1.go.name_))?param1.text:". . .";
         this.view.addSpeechBalloon(new Tyjo(param1.go,_loc2_,param1.background,param1.lotezika,param1.hyrir,param1.pam,param1.textColor,param1.wytevenum,param1.bold,param1.sesipaly));
         return;
      }
   }

}