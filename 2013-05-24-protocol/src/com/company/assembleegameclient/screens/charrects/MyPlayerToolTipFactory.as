package com.company.assembleegameclient.screens.charrects
{
   import povopito.MyPlayerToolTip;
   import com.company.assembleegameclient.appengine.Lycuhej;


   public class MyPlayerToolTipFactory extends Object
   {
      public function MyPlayerToolTipFactory() {
         super();
         return;
      }

      public function create(param1:String, param2:XML, param3:Lycuhej) : MyPlayerToolTip {
         return new MyPlayerToolTip(param1,param2,param3);
      }
   }

}