package fytalis
{
   import flash.events.MouseEvent;
   import kyhela.Zenil;
   import com.company.assembleegameclient.game.GameSprite;
   import komi.Vibemod;


   public class GuildChroniclePanel extends Pyresir
   {
      public function GuildChroniclePanel(param1:GameSprite) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1,Vibemod.labojy,Vibemod.meriz);
         return;
      }

      override protected function onButtonClick(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gs_.mui_.clearInput();
         gs_.addChild(new Zenil(gs_));
         return;
      }
   }

}