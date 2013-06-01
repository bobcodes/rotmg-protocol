package qutobiv
{
[CLASS228]   import tysenyzy.Zovisis;
   import supozuti.Rupat;
   import gyqadewa.Hod;
   import __AS3__.vec.Vector;
   import gyqadewa.Jycomynig;


   public class Qacorepa extends Zovisis
   {
      public function Qacorepa() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:Jinutyqi;

      public var update:Rupat;

      public var model:Hod;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.update(this.model.news);
         this.update.add(this.nunaduz);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.update.remove(this.nunaduz);
         return;
      }

      private function nunaduz(param1:Vector.<Jycomynig>) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.view.update(param1);
         return;
      }
   }
[/CLASS]
}