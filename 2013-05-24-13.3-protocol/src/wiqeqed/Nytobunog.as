package wiqeqed
{
   import qov.Kalefu;
   import rejukohub.Nemygyq;
   import lijite.Sapes;
   import __AS3__.vec.Vector;
   import lijite.Nyzena;


   public class Nytobunog extends Kalefu
   {
      public function Nytobunog() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Tycofeq;

      public var update:Nemygyq;

      public var model:Sapes;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.update(this.model.news);
         this.update.add(this.zogow);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.update.remove(this.zogow);
         return;
      }

      private function zogow(param1:Vector.<Nyzena>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }
   }

}