package com.company.assembleegameclient.objects
{
[CLASS1297]   import tusidywuq.Vyle;
   import pigeguwo.Jazyv;
   import pigeguwo.Mefu;
   import haqakel.Kefyfa;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import rucedosu.TextPanel;
   import jutesesel.Qibigagal;


   public class ClosedGiftChest extends GameObject implements Gofa
   {
      public function ClosedGiftChest(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         wywag=true;
         this.wezibijad=Qibigagal.husuha().getInstance(Vyle);
         return;
      }

      private var wezibijad:Vyle;

      public function getTooltip() : Jazyv {
         var _loc1_:Jazyv = new Mefu(3552822,10197915,Kefyfa.zyva,Kefyfa.tobavi,200);
         return _loc1_;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wezibijad.dispatch(Kefyfa.tobavi);
         return new TextPanel(param1);
      }
   }
[/CLASS]
}