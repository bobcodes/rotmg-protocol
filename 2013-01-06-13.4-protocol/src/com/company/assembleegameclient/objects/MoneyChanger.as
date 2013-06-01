package com.company.assembleegameclient.objects
{
[CLASS1289]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import rucedosu.MoneyChangerPanel;


   public class MoneyChanger extends GameObject implements Gofa
   {
      public function MoneyChanger(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new MoneyChangerPanel(param1);
      }
   }
[/CLASS]
}