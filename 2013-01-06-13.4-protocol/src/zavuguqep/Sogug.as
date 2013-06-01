package zavuguqep
{
[CLASS477]   import tysenyzy.Zovisis;
   import warude.GuildRegisterPanel;
   import kirofyny.Hehuf;
   import kirofyny.Tiqimav;
   import vinirudel.Wukyva;
   import nonyna.CreateGuildFrame;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import cejyva.Dialog;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class Sogug extends Zovisis
   {
      public function Sogug() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:GuildRegisterPanel;

      public var lyhog:Hehuf;

      public var madeve:Tiqimav;

      public var fysufapav:Wukyva;

      override public function initialize() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.dis.add(this.misize);
         this.view.renounce.add(this.byhir);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.view.dis.remove(this.misize);
         this.view.renounce.remove(this.byhir);
         return;
      }

      private function misize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lyhog.dispatch(new CreateGuildFrame(this.fysufapav.palaliz));
         return;
      }

      public function byhir() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GameSprite = this.fysufapav.palaliz;
         if(_loc1_.map==null||_loc1_.map.player_==null)
         {
            return;
         }
         var _loc2_:Player = _loc1_.map.player_;
         var _loc3_:Dialog = new Dialog(Kefyfa.zomikab,Kefyfa.zawobu,Kefyfa.hyqapu,Kefyfa.huvaku,"/renounceGuild");
         _loc3_.rezynobik(Kefyfa.zawobu,{guildName:_loc2_.guildName_});
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.puq);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.onCancel);
         this.lyhog.dispatch(_loc3_);
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.madeve.dispatch();
         return;
      }

      private function puq(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:GameSprite = this.fysufapav.palaliz;
         if(_loc2_.map==null||_loc2_.map.player_==null)
         {
            return;
         }
         var _loc3_:Player = _loc2_.map.player_;
         _loc2_.gsc_.guildRemove(_loc3_.name_);
         this.madeve.dispatch();
         return;
      }
   }
[/CLASS]
}