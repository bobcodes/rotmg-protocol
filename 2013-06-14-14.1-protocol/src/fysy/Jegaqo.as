package fysy
{
   import tytojonib.Kyjefe;
   import poho.Kyhy;
   import zycysoj.Zeqo;
   import zycysoj.Zoju;
   import poho.Pom;


   public class Jegaqo extends Kyjefe
   {
      public function Jegaqo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:CharacterSkinListItem;

      public var model:Kyhy;

      public var kyhy:Zeqo;

      public var vyfi:Zoju;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.add(this.ficenu);
         this.view.nifim.add(this.nirohud);
         this.view.out.add(this.raneqamy);
         this.view.selected.add(this.tyhecete);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.buy.remove(this.ficenu);
         this.view.nifim.remove(this.nirohud);
         this.view.out.remove(this.raneqamy);
         this.view.selected.remove(this.tyhecete);
         this.view.qej(null);
         return;
      }

      private function nirohud() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.vyfi.dispatch(this.view.womude());
         return;
      }

      private function raneqamy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vyfi.dispatch(null);
         return;
      }

      private function ficenu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Pom = this.view.womude();
         this.kyhy.dispatch(_loc1_);
         return;
      }

      private function tyhecete(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.womude().gowek(param1);
         return;
      }
   }

}