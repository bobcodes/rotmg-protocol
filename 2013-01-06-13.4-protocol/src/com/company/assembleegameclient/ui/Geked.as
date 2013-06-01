package com.company.assembleegameclient.ui
{
[CLASS1120]   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.Player;
   import pigeguwo.EquipmentToolTip;


   public class Geked extends Object
   {
      public function Geked() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function make(param1:int, param2:Player, param3:int, param4:String, param5:uint) : Sprite {
         return new EquipmentToolTip(param1,param2,param3,param4);
      }
   }
[/CLASS]
}