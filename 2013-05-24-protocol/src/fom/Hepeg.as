package fom
{
   import com.company.assembleegameclient.game.GameSprite;
   import aaa.rotmg.config.UserConfig;


   public class Hepeg extends Object
   {
      public function Hepeg() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var qizys:GameSprite;

      public function vofe() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.qizys.model.getName()?this.qizys.model.getName():this.qizys.map.player_.name_;
      }

      public function haw() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.qizys.gsc_.gameId_==UserConfig.SEND_TO_NEXUS?"OPTIONS_BUTTON":"NEXUS_BUTTON";
      }
   }

}