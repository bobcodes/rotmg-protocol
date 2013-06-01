package rucedosu
{
[CLASS533]   import tysenyzy.Zovisis;
   import wiwojaz.Fato;
   import tusidywuq.Zacu;
   import guvakipe.Jymyqene;
   import leselo.Account;
   import guvakipe.Rakawidu;
   import wiwojaz.Sisofil;


   public class Kigevovoq extends Zovisis
   {
      public function Kigevovoq() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Fato;

      public var addSpeechBalloon:Zacu;

      public var cimagyryw:Jymyqene;

      public var account:Account;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.addSpeechBalloon.add(this.sykot);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.addSpeechBalloon.remove(this.sykot);
         return;
      }

      private function sykot(param1:Rakawidu) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = (this.account.tuq())||(this.cimagyryw.hinupaj(param1.go.name_))?param1.text:". . .";
         this.view.addSpeechBalloon(new Sisofil(param1.go,_loc2_,param1.background,param1.gazi,param1.jelozu,param1.qatetas,param1.textColor,param1.pobofyvi,param1.bold,param1.bytu));
         return;
      }
   }
[/CLASS]
}