package tidi
{
[CLASS403]   import tysenyzy.Zovisis;
   import nylos.Rywo;
   import nylos.Ziturek;
   import tusidywuq.Nonedeloh;
   import vinirudel.Zic;


   public class Nonoqawur extends Zovisis
   {
      public function Nonoqawur() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Jewom;

      public var goda:Rywo;

      public var fubopecybo:Ziturek;

      public var vuqo:Nonedeloh;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.goda.add(this.gitada);
         this.fubopecybo.add(this.hogejukah);
         this.vuqo.add(this.naqycyzof);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.goda.remove(this.gitada);
         this.fubopecybo.remove(this.hogejukah);
         this.vuqo.remove(this.naqycyzof);
         return;
      }

      private function gitada(param1:Zic) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.view.goda(param1);
         return;
      }

      private function hogejukah(param1:Zic) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.fubopecybo(param1);
         return;
      }

      private function naqycyzof() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.parent.removeChild(this.view);
         return;
      }
   }
[/CLASS]
}