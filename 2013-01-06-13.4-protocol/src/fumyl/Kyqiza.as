package fumyl
{
[CLASS106]   import tysenyzy.Zovisis;
   import tehakab.Supuvygac;
   import tehakab.Cusifyha;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObject;


   public class Kyqiza extends Zovisis
   {
      public function Kyqiza() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:Kynabisi;

      public var model:Supuvygac;

      public var factory:Beci;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.model.selected.add(this.tytakawit);
         this.tytakawit(this.model.docew());
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.model.selected.remove(this.tytakawit);
         return;
      }

      private function tytakawit(param1:Cusifyha) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Vector.<DisplayObject> = this.factory.make(param1.pikyremo);
         this.view.setItems(_loc2_);
         return;
      }
   }
[/CLASS]
}