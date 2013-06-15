package com.company.assembleegameclient.objects
{
   import komi.Vibemod;
   import mavew.Qyryl;
   import mavew.Qyrola;
   import flash.display.BitmapData;


   public class ClosedVaultChest extends SellableObject
   {
      public function ClosedVaultChest(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         return;
      }

      override public function soldObjectName() : String {
         return Vibemod.wodyh;
      }

      override public function soldObjectInternalName() : String {
         return "Vault Chest";
      }

      override public function getTooltip() : Qyryl {
         var _loc1_:Qyryl = new Qyrola(3552822,10197915,this.soldObjectName(),Vibemod.fezyp,200);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(ObjectLibrary.nezuwy["Vault Chest"],80,true);
      }
   }

}