package qylir
{
   import qov.Kalefu;
   import vaqob.GuildRegisterPanel;
   import wegyluke.Hez;
   import wegyluke.Cowymute;
   import fom.Hepeg;
   import gib.CreateGuildFrame;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import nas.Dialog;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class Meku extends Kalefu
   {
      public function Meku() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public var view:GuildRegisterPanel;

      public var naval:Hez;

      public var tusagecu:Cowymute;

      public var ruhakony:Hepeg;

      override public function initialize() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.hyjun.add(this.hehad);
         this.view.renounce.add(this.lofe);
         return;
      }

      override public function destroy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.view.hyjun.remove(this.hehad);
         this.view.renounce.remove(this.lofe);
         return;
      }

      private function hehad() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.naval.dispatch(new CreateGuildFrame(this.ruhakony.qizys));
         return;
      }

      public function lofe() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:GameSprite = this.ruhakony.qizys;
         if(_loc1_.map==null||_loc1_.map.player_==null)
         {
            return;
         }
         var _loc2_:Player = _loc1_.map.player_;
         var _loc3_:Dialog = new Dialog(I18nKeys.zisohak,I18nKeys.kosolyr,I18nKeys.pep,I18nKeys.waq,"/renounceGuild");
         _loc3_.bipefybo(I18nKeys.kosolyr,{guildName:_loc2_.guildName_});
         _loc3_.addEventListener(Dialog.LEFT_BUTTON,this.beqyh);
         _loc3_.addEventListener(Dialog.RIGHT_BUTTON,this.onCancel);
         this.naval.dispatch(_loc3_);
         return;
      }

      private function onCancel(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tusagecu.dispatch();
         return;
      }

      private function beqyh(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:GameSprite = this.ruhakony.qizys;
         if(_loc2_.map==null||_loc2_.map.player_==null)
         {
            return;
         }
         var _loc3_:Player = _loc2_.map.player_;
         _loc2_.gsc_.guildRemove(_loc3_.name_);
         this.tusagecu.dispatch();
         return;
      }
   }

}