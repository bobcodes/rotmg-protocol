package com.company.assembleegameclient.objects
{
[CLASS1283]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import qycopu.ReskinPanel;


   public class ReskinVendor extends GameObject implements Gofa
   {
      public function ReskinVendor(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new ReskinPanel(param1);
      }
   }
[/CLASS]
}