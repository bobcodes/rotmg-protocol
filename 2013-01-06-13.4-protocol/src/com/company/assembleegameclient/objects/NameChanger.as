package com.company.assembleegameclient.objects
{
[CLASS1302]   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import rucedosu.NameChangerPanel;


   public class NameChanger extends GameObject implements Gofa
   {
      public function NameChanger(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         wywag=true;
         return;
      }

      public var lutylevet:int = 0;

      public function wyqywydeci(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lutylevet=param1;
         return;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new NameChangerPanel(param1,this.lutylevet);
      }
   }
[/CLASS]
}