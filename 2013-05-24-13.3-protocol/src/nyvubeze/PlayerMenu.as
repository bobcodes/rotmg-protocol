package nyvubeze
{
   import com.company.assembleegameclient.game.Nukomesih;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Ses;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.GuildUtil;
   import com.company.util.AssetLibrary;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.events.Event;


   public class PlayerMenu extends Menu
   {
      public function PlayerMenu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(3552822,16777215);
         return;
      }

      public var gs_:Nukomesih;

      public var doher:String;

      public var player_:Player;

      public var gupudylon:Ses;

      public function init(param1:Nukomesih, param2:Player) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Wuzyq = null;
         this.gs_=param1;
         this.doher=param2.name_;
         this.player_=param2;
         this.gupudylon=new Ses(11776947,true,this.player_);
         addChild(this.gupudylon);
         if((this.gs_.map.allowPlayerTeleport_)&&(this.player_.milozanim(this.player_)))
         {
            _loc3_=new TeleportMenuOption(this.gs_.map.player_);
            _loc3_.addEventListener(MouseEvent.CLICK,this.qeqi);
            zusuwe(_loc3_);
         }
         if(this.gs_.map.player_.guildRank_>=GuildUtil.cuzigol&&(param2.guildName_==null||param2.guildName_.length==0))
         {
            _loc3_=new Wuzyq(AssetLibrary.jeqycu("lofiInterfaceBig",10),16777215,I18nKeys.gijunytoq);
            _loc3_.addEventListener(MouseEvent.CLICK,this.kabakeja);
            zusuwe(_loc3_);
         }
         if(!this.player_.starred_)
         {
            _loc3_=new Wuzyq(AssetLibrary.jeqycu("lofiInterface2",5),16777215,I18nKeys.cuqysop);
            _loc3_.addEventListener(MouseEvent.CLICK,this.vesany);
            zusuwe(_loc3_);
         }
         else
         {
            _loc3_=new Wuzyq(AssetLibrary.jeqycu("lofiInterface2",6),16777215,I18nKeys.jyn);
            _loc3_.addEventListener(MouseEvent.CLICK,this.migeno);
            zusuwe(_loc3_);
         }
         _loc3_=new Wuzyq(AssetLibrary.jeqycu("lofiInterfaceBig",7),16777215,I18nKeys.hulimivab);
         _loc3_.addEventListener(MouseEvent.CLICK,this.desog);
         zusuwe(_loc3_);
         if(!this.player_.diqyj)
         {
            _loc3_=new Wuzyq(AssetLibrary.jeqycu("lofiInterfaceBig",8),16777215,I18nKeys.ryfet);
            _loc3_.addEventListener(MouseEvent.CLICK,this.zah);
            zusuwe(_loc3_);
         }
         else
         {
            _loc3_=new Wuzyq(AssetLibrary.jeqycu("lofiInterfaceBig",9),16777215,I18nKeys.gihefy);
            _loc3_.addEventListener(MouseEvent.CLICK,this.kyzyp);
            zusuwe(_loc3_);
         }
         return;
      }

      private function qeqi(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.player_.piqu(this.player_);
         remove();
         return;
      }

      private function kabakeja(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.gsc_.guildInvite(this.doher);
         remove();
         return;
      }

      private function vesany(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.party_.vyha(this.player_);
         remove();
         return;
      }

      private function migeno(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.party_.zusis(this.player_);
         remove();
         return;
      }

      private function desog(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.gsc_.requestTrade(this.doher);
         remove();
         return;
      }

      private function zah(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.party_.jujedemo(this.player_);
         remove();
         return;
      }

      private function kyzyp(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.party_.fybofip(this.player_);
         remove();
         return;
      }
   }

}