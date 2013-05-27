package com.company.assembleegameclient.objects
{
   import aaa.rotmg.i18n.I18nKeys;
   import povopito.Ryduwi;
   import povopito.Jodehozut;
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
         return I18nKeys.garucu;
      }

      override public function soldObjectInternalName() : String {
         return "Vault Chest";
      }

      override public function getTooltip() : Ryduwi {
         var _loc1_:Ryduwi = new Jodehozut(3552822,10197915,this.soldObjectName(),I18nKeys.nusyc,200);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(ObjectLibrary.tumu["Vault Chest"],80,true);
      }
   }

}