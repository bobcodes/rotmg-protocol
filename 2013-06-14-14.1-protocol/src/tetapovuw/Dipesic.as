package tetapovuw
{
   import tytojonib.Kyjefe;
   import pugem.Account;
   import cizagamym.Lebovas;


   public class Dipesic extends Kyjefe
   {
      public function Dipesic() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var account:Account;

      public var view:KabamAccountDetailDialog;

      public var gimenakal:Lebovas;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.helifob.add(this.vum);
         this.view.zyfa(this.account.dodet());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.helifob.remove(this.vum);
         return;
      }

      private function vum() : void {
         var [OFS3]_loc1_:* = [/OFS]false;
         var _loc2_:* = true;
         this.gimenakal.dispatch();
         return;
      }
   }

}