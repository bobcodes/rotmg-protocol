package donaqyzas
{
      public function applyHooks(param1:Array, param2:Mes=null) : void {
         var _loc3_:Object = null;
         for each (_loc3_ in param1)
         {
            if(_loc3_ is Function)
            {
               (_loc3_ as Function)();
            }
            else
            {
               if(_loc3_ is Class)
               {
                  _loc3_=param2?param2.getInstance(_loc3_ as Class):new _loc3_ as Class();
               }
               _loc3_.hook();
            }
         }
         return;
      }
}