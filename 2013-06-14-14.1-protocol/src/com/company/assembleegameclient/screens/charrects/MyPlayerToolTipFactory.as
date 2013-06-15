package com.company.assembleegameclient.screens.charrects
{
   import mavew.MyPlayerToolTip;
   import com.company.assembleegameclient.appengine.Zef;


   public class MyPlayerToolTipFactory extends Object
   {
      public function MyPlayerToolTipFactory() {
         super();
         return;
      }

      public function create(param1:String, param2:XML, param3:Zef) : MyPlayerToolTip {
         return new MyPlayerToolTip(param1,param2,param3);
      }
   }

}