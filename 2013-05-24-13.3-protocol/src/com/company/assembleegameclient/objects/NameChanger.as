package com.company.assembleegameclient.objects
{
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import biqacufo.NameChangerPanel;


   public class NameChanger extends GameObject implements Putafyhil
   {
      public function NameChanger(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         return;
      }

      public var fejocywig:int = 0;

      public function tazar(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fejocywig=param1;
         return;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         return new NameChangerPanel(param1,this.fejocywig);
      }
   }

}