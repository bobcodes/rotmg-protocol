package refeced
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import tam.Sav;
   import cizagamym.Lebovas;
   import cizagamym.Boquzojul;
   import com.company.util.Jyjoburib;
   import sefylew.RegisterWebAccountDialog;
   import sefylew.LinkWebAccountDialog;


   public class Lohag extends Kyjefe
   {
      public function Lohag() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:SteamAccountDetailDialog;

      public var account:Account;

      public var steam:Sav;

      public var gimenakal:Lebovas;

      public var ridecy:Boquzojul;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.sosygon();
         this.view.helifob.add(this.vum);
         this.view.register.add(this.mijy);
         this.view.link.add(this.onLink);
         return;
      }

      private function sosygon() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:String = this.steam.lakovoma();
         var _loc2_:String = this.account.dodet();
         var _loc3_:Boolean = Jyjoburib.mag(_loc2_);
         this.view.zyfa(_loc1_,_loc2_,_loc3_);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.helifob.remove(this.vum);
         this.view.register.remove(this.mijy);
         this.view.link.remove(this.onLink);
         return;
      }

      private function vum() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.gimenakal.dispatch();
         return;
      }

      private function mijy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new RegisterWebAccountDialog());
         return;
      }

      private function onLink() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.ridecy.dispatch(new LinkWebAccountDialog());
         return;
      }
   }

}