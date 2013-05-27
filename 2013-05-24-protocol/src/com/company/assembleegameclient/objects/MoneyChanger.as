package com.company.assembleegameclient.objects
{
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import biqacufo.MoneyChangerPanel;


   public class MoneyChanger extends GameObject implements Putafyhil
   {
      public function MoneyChanger(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new MoneyChangerPanel(param1);
      }
   }

}