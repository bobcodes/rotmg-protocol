package vinirudel
{
[CLASS469]   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.parameters.Parameters;


   public class Wukyva extends Object
   {
      public function Wukyva() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var palaliz:GameSprite;

      public function mimidyh() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.palaliz.model.getName()?this.palaliz.model.getName():this.palaliz.map.player_.name_;
      }

      public function huheviz() : String {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return this.palaliz.gsc_.gameId_==Parameters.jec?"OPTIONS_BUTTON":"NEXUS_BUTTON";
      }
   }
[/CLASS]
}