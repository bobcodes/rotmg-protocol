package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import pitahelel.ReskinPanel;


   public class ReskinVendor extends GameObject implements Gim
   {
      public function ReskinVendor(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new ReskinPanel(param1);
      }
   }

}