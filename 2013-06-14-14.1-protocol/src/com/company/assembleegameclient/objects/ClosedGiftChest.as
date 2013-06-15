package com.company.assembleegameclient.objects
{
   import dicyl.Munif;
   import mavew.Qyryl;
   import mavew.Qyrola;
   import komi.Vibemod;
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import kofaz.TextPanel;
   import sijizoh.Duq;


   public class ClosedGiftChest extends GameObject implements Gim
   {
      public function ClosedGiftChest(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         this.kigenyp=Duq.pamazo().getInstance(Munif);
         return;
      }

      private var kigenyp:Munif;

      public function getTooltip() : Qyryl {
         var _loc1_:Qyryl = new Qyrola(3552822,10197915,Vibemod.tyr,Vibemod.maciroli,200);
         return _loc1_;
      }

      public function getPanel(param1:GameSprite) : Panel {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kigenyp.dispatch(Vibemod.maciroli);
         return new TextPanel(param1);
      }
   }

}