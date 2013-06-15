package com.company.assembleegameclient.tutorial
{
      public function doneAction(param1:Pajemiz, param2:String) : void {
         if(param1.tutorial_==null)
         {
            return;
         }
         param1.tutorial_.doneAction(param2);
         return;
      }
}