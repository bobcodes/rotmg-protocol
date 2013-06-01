package fomykuq
{
[CLASS851]   import tecif.Kajehe;


   public class ObjectProcessor extends Object
   {
      public function ObjectProcessor() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const _handlers:Array = [];

      public function jihobe(param1:Kajehe, param2:Function) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this._handlers.push(new ObjectHandler(param1,param2));
         return;
      }

      public function nibi(param1:Object) : void {
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
[/CLASS]
}[CLASS852]   import tecif.Kajehe;


   class ObjectHandler extends Object
   {
      function ObjectHandler(param1:Kajehe, param2:Function) {
         super();
         this._matcher=param1;
         this._handler=param2;
         return;
      }

      private var _matcher:Kajehe;

      private var _handler:Function;

      public function handle(param1:Object) : void {
         return;
      }
   }
[/CLASS]