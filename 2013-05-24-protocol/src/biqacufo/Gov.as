package biqacufo
{
   import qov.Kalefu;
   import ruwa.Account;
   import wegyluke.Hez;
   import jiha.Hevorim;
   import kat.Puqyfebal;
   import aaa.rotmg.i18n.I18nKeys;


   public class Gov extends Kalefu
   {
      public function Gov() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:MoneyChangerPanel;

      public var naval:Hez;

      public var biwihih:Hevorim;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.taz.add(this.kadipoty);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.taz.remove(this.kadipoty);
         return;
      }

      private function kadipoty() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.account.bugi())
         {
            this.biwihih.dispatch();
         }
         else
         {
            this.naval.dispatch(new Puqyfebal(I18nKeys.qiveza));
         }
         return;
      }
   }

}