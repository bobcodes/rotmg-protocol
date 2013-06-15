package micac
{
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Ciqyl extends Object
   {
      public function Ciqyl() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var qyhowo:GameSprite;

      public function lusikur() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.qyhowo.model.getName()?this.qyhowo.model.getName():this.qyhowo.map.player_.name_;
      }

      public function rykowibi() : String {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.qyhowo.gsc_.gameId_==Parameters.myjedib?"OPTIONS_BUTTON":"NEXUS_BUTTON";
      }
   }

}