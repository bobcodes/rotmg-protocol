package com.company.assembleegameclient.tutorial
{
	import com.company.assembleegameclient.game.Nukomesih;
      public function doneAction(param1:Nukomesih, param2:String) : void {
         if(param1.tutorial_==null)
         {
            return;
         }
         param1.tutorial_.doneAction(param2);
         return;
      }
}