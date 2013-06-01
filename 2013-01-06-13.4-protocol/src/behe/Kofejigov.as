package behe
{
[CLASS343]   import tysenyzy.Zovisis;
   import jet.Varusici;
   import sakaja.Zuvejos;


   public class Kofejigov extends Zovisis
   {
      public function Kofejigov() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Cydepyk;

      public var model:Varusici;

      public var tiki:Zuvejos;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.rudysenih.addOnce(this.loj);
         this.view.zokokof.add(this.onButtonClick);
         this.view.wifewyh(this.model.jaluky());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.rudysenih.remove(this.loj);
         this.view.zokokof.remove(this.onButtonClick);
         return;
      }

      private function onButtonClick() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tiki.dispatch();
         return;
      }

      private function loj() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.destroy();
         return;
      }
   }
[/CLASS]
}