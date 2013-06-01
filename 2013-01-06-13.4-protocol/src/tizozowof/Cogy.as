package tizozowof
{
[CLASS762]   import tysenyzy.Zovisis;
   import leselo.Account;
   import kirofyny.Tiqimav;
   import kirofyny.Hehuf;
   import com.company.util.Vutem;
   import sojul.RegisterWebAccountDialog;
   import sojul.LinkWebAccountDialog;


   public class Cogy extends Zovisis
   {
      public function Cogy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:KongregateAccountDetailDialog;

      public var account:Account;

      public var madeve:Tiqimav;

      public var lyhog:Hehuf;

      public var lowemycu:Fedyl;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lagil();
         this.view.hosinutow.add(this.kur);
         this.view.register.add(this.qare);
         this.view.link.add(this.onLink);
         return;
      }

      private function lagil() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = this.lowemycu.paweral();
         var _loc2_:String = this.account.paweral();
         var _loc3_:Boolean = Vutem.hil(_loc2_);
         this.view.rewe(_loc1_,_loc2_,_loc3_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.hosinutow.remove(this.kur);
         this.view.register.remove(this.qare);
         this.view.link.remove(this.onLink);
         return;
      }

      private function kur() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.madeve.dispatch();
         return;
      }

      private function qare() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new RegisterWebAccountDialog());
         return;
      }

      private function onLink() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new LinkWebAccountDialog());
         return;
      }
   }
[/CLASS]
}