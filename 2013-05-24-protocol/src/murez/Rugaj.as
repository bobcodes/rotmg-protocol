package murez
{
   import qov.Kalefu;
   import hotewa.Baqifa;
   import fulaw.Vihekivuc;
   import najilihak.Putinil;
   import wegyluke.Cowymute;
   import fulaw.Toloku;


   public class Rugaj extends Kalefu
   {
      public function Rugaj() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:ReskinCharacterView;

      public var player:Baqifa;

      public var model:Vihekivuc;

      public var gowegosy:Putinil;

      public var closeDialogs:Cowymute;

      private var socucu:Toloku;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.socucu=this.husybebyq();
         this.view.selected.add(this.pamucelo);
         this.view.pila.add(this.naw);
         return;
      }

      private function husybebyq() : Toloku {
         return this.model.zega().socucu;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.selected.remove(this.pamucelo);
         this.view.pila.remove(this.naw);
         return;
      }

      private function pamucelo() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         this.gowegosy.dispatch(this.socucu.mipozilin());
         return;
      }

      private function naw() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.closeDialogs.dispatch();
         return;
      }
   }

}