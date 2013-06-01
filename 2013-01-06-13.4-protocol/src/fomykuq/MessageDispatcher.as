package fomykuq
{
[CLASS1395]   import bikyvym.Redij;
   import flash.utils.Dictionary;


   public final class MessageDispatcher extends Object implements Redij
   {
      public function MessageDispatcher() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private const _handlers:Dictionary = new Dictionary();

      public function sunuhazaz(param1:Object, param2:Function) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Array = this._handlers[param1];
         if(_loc3_)
         {
            if(_loc3_.indexOf(param2)==-1)
            {
               _loc3_.push(param2);
            }
         }
         else
         {
            this._handlers[param1]=[param2];
         }
         return;
      }

      public function jipyqofi(param1:Object) : Boolean {
         return this._handlers[param1];
      }

      public function leso(param1:Object, param2:Function) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Array = null;
         _loc3_=this._handlers[param1];
         var _loc4_:int = _loc3_?_loc3_.indexOf(param2):-1;
         if(_loc4_!=-1)
         {
            _loc3_.splice(_loc4_,1);
            if(_loc3_.length==0)
            {
               delete this._handlers[[param1]];
            }
         }
         return;
      }

      public function kybe(param1:Object, param2:Function=null, param3:Boolean=false) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = this._handlers[param1];
         if(_loc4_)
         {
            _loc4_=_loc4_.concat();
            new MessageRunner(param1,_loc4_,param2).run();
         }
         return;
      }
   }
[/CLASS]
}[CLASS1394]   import fomykuq.safelyCallBack;


   class MessageRunner extends Object
   {
      function MessageRunner(param1:Object, param2:Array, param3:Function) {
         super();
         this._message=param1;
         this._handlers=param2;
         this._callback=param3;
         return;
      }

      private var _message:Object;

      private var _handlers:Array;

      private var _callback:Function;

      public function run() : void {
         this.next();
         return;
      }

      private function next() : void {
         var handler:Function = null;
         var handled:Boolean = false;
         while(handler=this._handlers.pop())
         {
            if(handler.length==0)
            {
               handler();
               continue;
            }
            if(handler.length==1)
            {
               handler(this._message);
               continue;
            }
            if(handler.length==2)
            {
               handler(this._message,new function(param1:Object=null, param2:Object=null):void
               {
                  if(handled)
                  {
                        return;
                  }
                  handled=true;
                  if((param1)||_handlers.length==0)
                  {
                  }
                  else
                  {
                        next();
                  }
                  return;
                  });
                  return;
               }
               throw new Error("Bad handler signature");
            }
            return;
      }
   }
[/CLASS]