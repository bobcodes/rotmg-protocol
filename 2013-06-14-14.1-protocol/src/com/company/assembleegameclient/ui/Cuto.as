package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.Player;
   import mavew.EquipmentToolTip;


   public class Cuto extends Object
   {
      public function Cuto() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function make(param1:int, param2:Player, param3:int, param4:String, param5:uint) : Sprite {
         return new EquipmentToolTip(param1,param2,param3,param4);
      }
   }

}