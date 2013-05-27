package com.company.assembleegameclient.objects
{
   import povopito.Ryduwi;
   import povopito.Jodehozut;
   import aaa.rotmg.i18n.I18nKeys;
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import coh.Lid;


   public class PetUpgrader extends GameObject implements Putafyhil
   {
      public function PetUpgrader(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         tar=true;
         return;
      }

      public function getTooltip() : Ryduwi {
         var _loc1_:Ryduwi = new Jodehozut(3552822,10197915,I18nKeys.hafu,I18nKeys.nibylahe,200);
         return _loc1_;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new Lid(param1,objectType_);
      }
   }

}