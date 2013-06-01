package com.company.assembleegameclient.objects
{
[CLASS1300]   import haqakel.Kefyfa;
   import pigeguwo.Jazyv;
   import pigeguwo.Mefu;
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
         return Kefyfa.daroha;
      }

      override public function soldObjectInternalName() : String {
         return "Vault Chest";
      }

      override public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new Mefu(3552822,10197915,this.soldObjectName(),Kefyfa.cyjevygoj,200);
         return _loc1_;
      }

      override public function getIcon() : BitmapData {
         return ObjectLibrary.getRedrawnTextureFromType(ObjectLibrary.ronifyva["Vault Chest"],80,true);
      }
   }
[/CLASS]
}