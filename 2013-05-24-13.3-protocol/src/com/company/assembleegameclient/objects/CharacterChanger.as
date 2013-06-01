package com.company.assembleegameclient.objects
{
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import vaqob.CharacterChangerPanel;


   public class CharacterChanger extends GameObject implements Putafyhil
   {
      public function CharacterChanger(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         tar=true;
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new CharacterChangerPanel(param1);
      }
   }

}