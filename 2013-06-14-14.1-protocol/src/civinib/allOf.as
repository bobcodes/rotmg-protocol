package civinib
{
      public function allOf(... rest) : Dyn {
         var _loc2_:Array = rest;
         if(rest.length==1&&rest[0] is Array)
         {
            _loc2_=rest[0];
         }
         return new Gyzicipu(_loc2_);
      }
}