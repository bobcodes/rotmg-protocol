package com.company.assembleegameclient.screens.charrects
{
[CLASS1102]   import pigeguwo.MyPlayerToolTip;
   import com.company.assembleegameclient.appengine.Wus;


   public class MyPlayerToolTipFactory extends Object
   {
      public function MyPlayerToolTipFactory() {
         super();
         return;
      }

      public function create(param1:String, param2:XML, param3:Wus) : MyPlayerToolTip {
         return new MyPlayerToolTip(param1,param2,param3);
      }
   }
[/CLASS]
}