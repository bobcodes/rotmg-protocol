package zegacymo
{
[CLASS703]   import tysenyzy.Zovisis;
   import leselo.Account;
   import dutes.Rumevo;
   import rysuho.Mafo;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import rysuho.Zubusuge;
   import jezi.Pyruleq;


   public class Moziqyha extends Zovisis
   {
      public function Moziqyha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:WebAccountDetailDialog;

      public var account:Account;

      public var pukyso:Rumevo;

      public var verify:Mafo;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      public var mijezymul:Zubusuge;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.holygyhi(this.account.paweral(),this.account.kekupenuj());
         this.view.change.add(this.sunanah);
         this.view.logout.add(this.zycovozi);
         this.view.cancel.add(this.kur);
         this.view.verify.add(this.byzijyq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.change.remove(this.sunanah);
         this.view.logout.remove(this.zycovozi);
         this.view.cancel.remove(this.kur);
         this.view.verify.remove(this.byzijyq);
         return;
      }

      private function sunanah() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new WebChangePasswordDialog());
         return;
      }

      private function zycovozi() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.remezotydy();
         this.account.clear();
         this.mijezymul.dispatch();
         this.lyhog.dispatch(new WebLoginDialog());
         return;
      }

      private function remezotydy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pyruleq = new Pyruleq();
         _loc1_.category="account";
         _loc1_.bozegyt="loggedOut";
         this.pukyso.dispatch(_loc1_);
         return;
      }

      private function kur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.madeve.dispatch();
         return;
      }

      private function byzijyq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.verify.dispatch();
         return;
      }
   }
[/CLASS]
}