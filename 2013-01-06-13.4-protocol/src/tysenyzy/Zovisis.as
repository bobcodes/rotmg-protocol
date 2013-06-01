package tysenyzy
{
[CLASS75]   import wufyba.Rifu;
   import lutoroba.Gucyjopaw;
   import flash.events.IEventDispatcher;
   import flash.events.Event;


   public class Zovisis extends Object implements Rifu
   {
      public function Zovisis() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var figa:Gucyjopaw;

      public var luwe:IEventDispatcher;

      private var fonokegu:Object;

      public function set viewComponent(param1:Object) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fonokegu=param1;
         return;
      }

      public function initialize() : void {
         return;
      }

      public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.figa.dyjeka();
         return;
      }

      protected function jew(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.figa.dilofunu(IEventDispatcher(this.fonokegu),param1,param2,param3);
         return;
      }

      protected function bez(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.figa.dilofunu(this.luwe,param1,param2,param3);
         return;
      }

      protected function mojuc(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.figa.bytoh(IEventDispatcher(this.fonokegu),param1,param2,param3);
         return;
      }

      protected function petohuz(param1:String, param2:Function, param3:Class=null) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.figa.bytoh(this.luwe,param1,param2,param3);
         return;
      }

      protected function dispatch(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.luwe.hasEventListener(param1.type))
         {
            this.luwe.dispatchEvent(param1);
         }
         return;
      }
   }
[/CLASS]
}