package rucedosu
{
[CLASS538]   import tysenyzy.Zovisis;
   import leselo.Account;
   import kirofyny.Hehuf;
   import rysuho.Loku;
   import sojul.Viropisos;
   import haqakel.Kefyfa;


   public class Zavidi extends Zovisis
   {
      public function Zavidi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var view:MoneyChangerPanel;

      public var lyhog:Hehuf;

      public var vume:Loku;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.bago.add(this.voj);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.bago.remove(this.voj);
         return;
      }

      private function voj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.tuq())
         {
            this.vume.dispatch();
         }
         else
         {
            this.lyhog.dispatch(new Viropisos(Kefyfa.sijyq));
         }
         return;
      }
   }
[/CLASS]
}