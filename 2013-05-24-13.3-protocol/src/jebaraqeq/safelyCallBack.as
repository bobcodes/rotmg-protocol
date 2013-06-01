package jebaraqeq
{
      public function safelyCallBack(param1:Function, param2:Object=null, param3:Object=null) : void {
         if(param1.length==0)
         {
            param1();
         }
         else
         {
            if(param1.length==1)
            {
               param1(param2);
            }
            else
            {
               param1(param2,param3);
            }
         }
         return;
      }
}