package fumyl
{
[CLASS95]   import tysenyzy.Zovisis;
   import tehakab.Supuvygac;
   import zeky.Kukiqinez;
   import zeky.Huwe;
   import tehakab.Copaqufiv;


   public class Bag extends Zovisis
   {
      public function Bag() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:CharacterSkinListItem;

      public var model:Supuvygac;

      public var wuma:Kukiqinez;

      public var fogebyles:Huwe;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.buy.add(this.dasuco);
         this.view.jotykug.add(this.pysumejob);
         this.view.out.add(this.dawatu);
         this.view.selected.add(this.wyralovoz);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.buy.remove(this.dasuco);
         this.view.jotykug.remove(this.pysumejob);
         this.view.out.remove(this.dawatu);
         this.view.selected.remove(this.wyralovoz);
         this.view.duzopuly(null);
         return;
      }

      private function pysumejob() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.fogebyles.dispatch(this.view.salapy());
         return;
      }

      private function dawatu() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fogebyles.dispatch(null);
         return;
      }

      private function dasuco() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Copaqufiv = this.view.salapy();
         this.wuma.dispatch(_loc1_);
         return;
      }

      private function wyralovoz(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.salapy().ryb(param1);
         return;
      }
   }
[/CLASS]
}