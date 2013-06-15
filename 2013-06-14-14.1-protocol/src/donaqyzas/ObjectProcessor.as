package donaqyzas
{
   import buf.Dyn;


   public class ObjectProcessor extends Object
   {
      public function ObjectProcessor() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const _handlers:Array = [];

      public function cuvanud(param1:Dyn, param2:Function) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this._handlers.push(new ObjectHandler(param1,param2));
         return;
      }

      public function gahowug(param1:Object) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:ObjectHandler = null;
         for each (_loc2_ in this._handlers)
         {
            _loc2_.handle(param1);
         }
         return;
      }
   }

}   import buf.Dyn;


   class ObjectHandler extends Object
   {
      function ObjectHandler(param1:Dyn, param2:Function) {
         super();
         this._matcher=param1;
         this._handler=param2;
         return;
      }

      private var _matcher:Dyn;

      private var _handler:Function;

      public function handle(param1:Object) : void {
         return;
      }
   }
