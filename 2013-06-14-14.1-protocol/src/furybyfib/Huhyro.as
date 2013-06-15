package furybyfib
{
   import tytojonib.Kyjefe;
   import fytalis.GuildRegisterPanel;
   import cizagamym.Boquzojul;
   import cizagamym.Lebovas;
   import micac.Ciqyl;
   import zekeqa.CreateGuildFrame;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import vysob.Dialog;
   import komi.Vibemod;
   import flash.events.Event;


   public class Huhyro extends Kyjefe
   {
      public function Huhyro() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var view:GuildRegisterPanel;

      public var ridecy:Boquzojul;

      public var gimenakal:Lebovas;

      public var fer:Ciqyl;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.fimudiv.add(this.dilep);
         this.view.renounce.add(this.nesoq);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.fimudiv.remove(this.dilep);
         this.view.renounce.remove(this.nesoq);
         return;
      }

      private function dilep() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.ridecy.dispatch(new CreateGuildFrame(this.fer.qyhowo));
         return;
      }

      public function nesoq() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GameSprite = this.fer.qyhowo;
         if(_loc1_.map==null||_loc1_.map.player_==null)
         {
            return;
         }
         var _loc2_:Player = _loc1_.map.player_;
         var _loc3_:Dialog = new Dialog(Vibemod.segapidug,Vibemod.rowumenyh,Vibemod.paki,Vibemod.jyzigaso,"/renounceGuild");
         _loc3_.vubah(Vibemod.rowumenyh,{guildName:_loc2_.guildName_});
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.ceqakykid);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.onCancel);
         this.ridecy.dispatch(_loc3_);
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gimenakal.dispatch();
         return;
      }

      private function ceqakykid(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:GameSprite = this.fer.qyhowo;
         if(_loc2_.map==null||_loc2_.map.player_==null)
         {
            return;
         }
         var _loc3_:Player = _loc2_.map.player_;
         _loc2_.gsc_.guildRemove(_loc3_.name_);
         this.gimenakal.dispatch();
         return;
      }
   }

}