package tidi
{
[CLASS459]   import tysenyzy.Zovisis;
   import qilarag.Wyqahi;
   import wyjimigo.Tykum;
   import dutes.Sycanetal;


   public class Tawy extends Zovisis
   {
      public function Tawy() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Wyqahi;

      public var servers:Tykum;

      public var cucec:Sycanetal;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.fanores.add(this.defukijyb);
         this.view.initialize(this.servers.ris());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.fanores.remove(this.defukijyb);
         return;
      }

      private function defukijyb() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.cucec.dispatch(new TitleView());
         return;
      }
   }
[/CLASS]
}