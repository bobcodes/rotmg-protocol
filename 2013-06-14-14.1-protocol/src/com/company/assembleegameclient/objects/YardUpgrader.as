package com.company.assembleegameclient.objects
{
   import mavew.Qyryl;
   import mavew.Qyrola;
   import komi.Vibemod;
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import haj.Tiba;


   public class YardUpgrader extends GameObject implements Gim
   {
      public function YardUpgrader(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         bura=true;
         return;
      }

      public function getTooltip() : Qyryl {
         var _loc1_:Qyryl = new Qyrola(3552822,10197915,Vibemod.tyr,Vibemod.maciroli,200);
         return _loc1_;
      }

      public function getPanel(param1:GameSprite) : Panel {
         return new Tiba(param1,objectType_);
      }
   }

}