package com.company.assembleegameclient.objects
{
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import kofaz.NameChangerPanel;


   public class NameChanger extends GameObject implements Gim
   {
      public function NameChanger(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         return;
      }

      public var wuvo:int = 0;

      public function govakywa(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wuvo=param1;
         return;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new NameChangerPanel(param1,this.wuvo);
      }
   }

}