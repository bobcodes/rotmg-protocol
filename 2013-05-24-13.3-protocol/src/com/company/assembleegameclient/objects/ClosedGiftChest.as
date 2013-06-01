package com.company.assembleegameclient.objects
{
   import zubamyki.Wybuhehuf;
   import povopito.Ryduwi;
   import povopito.Jodehozut;
   import aaa.rotmg.i18n.I18nKeys;
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import biqacufo.TextPanel;
   import jag.Giq;


   public class ClosedGiftChest extends GameObject implements Putafyhil
   {
      public function ClosedGiftChest(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         tar=true;
         this.noqi=Giq.kid().getInstance(Wybuhehuf);
         return;
      }

      private var noqi:Wybuhehuf;

      public function getTooltip() : Ryduwi {
         var _loc1_:Ryduwi = new Jodehozut(3552822,10197915,I18nKeys.hafu,I18nKeys.nibylahe,200);
         return _loc1_;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.noqi.dispatch(I18nKeys.nibylahe);
         return new TextPanel(param1);
      }
   }

}