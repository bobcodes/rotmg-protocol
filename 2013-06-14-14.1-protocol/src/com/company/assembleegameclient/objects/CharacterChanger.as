package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fytalis.CharacterChangerPanel;


   public class CharacterChanger extends GameObject implements Gim
   {
      public function CharacterChanger(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         bura=true;
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new CharacterChangerPanel(param1);
      }
   }

}