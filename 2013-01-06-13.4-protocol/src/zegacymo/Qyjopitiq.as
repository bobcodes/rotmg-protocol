package zegacymo
{
[CLASS705]   import tysenyzy.Zovisis;
   import leselo.Account;
   import rysuho.Waluwyl;
   import kirofyny.Hehuf;


   public class Qyjopitiq extends Zovisis
   {
      public function Qyjopitiq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Raleke;

      public var account:Account;

      public var logout:Waluwyl;

      public var lyhog:Hehuf;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.login.add(this.qukojafe);
         this.view.register.add(this.qare);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.login.remove(this.qukojafe);
         this.view.register.remove(this.qare);
         return;
      }

      private function qare() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lyhog.dispatch(new Jugec());
         return;
      }

      private function qukojafe() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.account.tuq())
         {
            this.kurol();
         }
         else
         {
            this.lyhog.dispatch(new WebLoginDialog());
         }
         return;
      }

      private function kurol() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.logout.dispatch();
         this.view.rewe("",false);
         return;
      }
   }
[/CLASS]
}