package nukobi
{
   import qov.Kalefu;
   import aaa.rotmg.account.Account;
   import wegyluke.Cowymute;
   import wegyluke.Hez;
   import com.company.util.Zutywapo;
   import kat.RegisterWebAccountDialog;
   import kat.LinkWebAccountDialog;


   public class Capamubi extends Kalefu
   {
      public function Capamubi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:KongregateAccountDetailDialog;

      public var account:Account;

      public var tusagecu:Cowymute;

      public var naval:Hez;

      public var zefy:Fozydo;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.zudaqut();
         this.view.gow.add(this.zun);
         this.view.register.add(this.cydypugoq);
         this.view.link.add(this.onLink);
         return;
      }

      private function zudaqut() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = this.zefy.nenyzeqe();
         var _loc2_:String = this.account.nenyzeqe();
         var _loc3_:Boolean = Zutywapo.cuwuhuz(_loc2_);
         this.view.tepefufe(_loc1_,_loc2_,_loc3_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.gow.remove(this.zun);
         this.view.register.remove(this.cydypugoq);
         this.view.link.remove(this.onLink);
         return;
      }

      private function zun() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tusagecu.dispatch();
         return;
      }

      private function cydypugoq() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new RegisterWebAccountDialog());
         return;
      }

      private function onLink() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.naval.dispatch(new LinkWebAccountDialog());
         return;
      }
   }

}