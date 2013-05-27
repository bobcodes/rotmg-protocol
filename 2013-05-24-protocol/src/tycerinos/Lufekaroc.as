package tycerinos
{
   import qov.Kalefu;
   import ruwa.Account;
   import cyt.Zivovype;
   import wegyluke.Cowymute;
   import wegyluke.Hez;
   import com.company.util.Zutywapo;
   import kat.RegisterWebAccountDialog;
   import kat.LinkWebAccountDialog;


   public class Lufekaroc extends Kalefu
   {
      public function Lufekaroc() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:SteamAccountDetailDialog;

      public var account:Account;

      public var steam:Zivovype;

      public var tusagecu:Cowymute;

      public var naval:Hez;

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
         var _loc1_:String = this.steam.berygo();
         var _loc2_:String = this.account.nenyzeqe();
         var _loc3_:Boolean = Zutywapo.cuwuhuz(_loc2_);
         this.view.tepefufe(_loc1_,_loc2_,_loc3_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
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