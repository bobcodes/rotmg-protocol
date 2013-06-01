package rucedosu
{
[CLASS429]   import tysenyzy.Zovisis;
   import leselo.Account;
   import kirofyny.Hehuf;
   import nylos.Tifada;
   import nonyna.Sodymazur;
   import sojul.Viropisos;
   import haqakel.Kefyfa;


   public class NameChangerPanelMediator extends Zovisis
   {
      public function NameChangerPanelMediator() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:NameChangerPanel;

      public var lyhog:Hehuf;

      public var mecanalos:Tifada;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.chooseName.add(this.tugugubiv);
         this.mecanalos.add(this.kabe);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.chooseName.remove(this.tugugubiv);
         this.mecanalos.remove(this.kabe);
         return;
      }

      private function tugugubiv() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.tuq())
         {
            this.lyhog.dispatch(new Sodymazur(this.view.gs_,this.view.ruvemy));
         }
         else
         {
            this.lyhog.dispatch(new Viropisos(Kefyfa.paqulina));
         }
         return;
      }

      private function kabe(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.wege(param1);
         return;
      }
   }
[/CLASS]
}