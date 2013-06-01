package com.company.assembleegameclient.objects
{
[CLASS1276]   import pigeguwo.Jazyv;
   import pigeguwo.Mefu;
   import haqakel.Kefyfa;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fyvanod.Byzozit;


   public class YardUpgrader extends GameObject implements Gofa
   {
      public function YardUpgrader(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         wywag=true;
         return;
      }

      public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new Mefu(3552822,10197915,Kefyfa.zyva,Kefyfa.tobavi,200);
         return _loc1_;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new Byzozit(param1,objectType_);
      }
   }
[/CLASS]
}