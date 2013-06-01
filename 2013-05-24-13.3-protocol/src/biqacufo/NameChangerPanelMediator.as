package biqacufo
{
   import qov.Kalefu;
   import aaa.rotmg.account.Account;
   import wegyluke.Hez;
   import sasacen.Mygotuwo;
   import gib.Zymas;
   import kat.Puqyfebal;
   import aaa.rotmg.i18n.I18nKeys;


   public class NameChangerPanelMediator extends Kalefu
   {
      public function NameChangerPanelMediator() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var account:Account;

      public var view:NameChangerPanel;

      public var naval:Hez;

      public var ryqo:Mygotuwo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.chooseName.add(this.safekuq);
         this.ryqo.add(this.poc);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.chooseName.remove(this.safekuq);
         this.ryqo.remove(this.poc);
         return;
      }

      private function safekuq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.bugi())
         {
            this.naval.dispatch(new Zymas(this.view.gs_,this.view.rap));
         }
         else
         {
            this.naval.dispatch(new Puqyfebal(I18nKeys.kogovome));
         }
         return;
      }

      private function poc(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.synusybys(param1);
         return;
      }
   }

}