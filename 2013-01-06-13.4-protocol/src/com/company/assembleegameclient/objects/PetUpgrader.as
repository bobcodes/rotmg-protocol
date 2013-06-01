package com.company.assembleegameclient.objects
{
[CLASS1284]   import pigeguwo.Jazyv;
   import pigeguwo.Mefu;
   import haqakel.Kefyfa;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import fyvanod.Qumevyd;


   public class PetUpgrader extends GameObject implements Gofa
   {
      public function PetUpgrader(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         return;
      }

      public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new Mefu(3552822,10197915,Kefyfa.zyva,Kefyfa.tobavi,200);
         return _loc1_;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         return new Qumevyd(param1,objectType_);
      }
   }
[/CLASS]
}