package sybyzowo
{
[CLASS1162]   import com.company.assembleegameclient.game.Tosahafu;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Semytuqa;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.GuildUtil;
   import com.company.util.AssetLibrary;
   import haqakel.Kefyfa;
   import flash.events.Event;


   public class PlayerMenu extends Menu
   {
      public function PlayerMenu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(3552822,16777215);
         return;
      }

      public var gs_:Tosahafu;

      public var bicon:String;

      public var player_:Player;

      public var dodiny:Semytuqa;

      public function init(param1:Tosahafu, param2:Player) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vaqasor = null;
         this.gs_=param1;
         this.bicon=param2.name_;
         this.player_=param2;
         this.dodiny=new Semytuqa(11776947,true,this.player_);
         addChild(this.dodiny);
         if((this.gs_.map.allowPlayerTeleport_)&&(this.player_.vymevydyt(this.player_)))
         {
            _loc3_=new TeleportMenuOption(this.gs_.map.player_);
            _loc3_.addEventListener(MouseEvent.CLICK,this.ruromo);
            sesir(_loc3_);
         }
         if(this.gs_.map.player_.guildRank_>=GuildUtil.jaw&&(param2.guildName_==null||param2.guildName_.length==0))
         {
            _loc3_=new Vaqasor(AssetLibrary.zovy("lofiInterfaceBig",10),16777215,Kefyfa.dahezyg);
            _loc3_.addEventListener(MouseEvent.CLICK,this.muleboleq);
            sesir(_loc3_);
         }
         if(!this.player_.starred_)
         {
            _loc3_=new Vaqasor(AssetLibrary.zovy("lofiInterface2",5),16777215,Kefyfa.rin);
            _loc3_.addEventListener(MouseEvent.CLICK,this.teta);
            sesir(_loc3_);
         }
         else
         {
            _loc3_=new Vaqasor(AssetLibrary.zovy("lofiInterface2",6),16777215,Kefyfa.nyqyvu);
            _loc3_.addEventListener(MouseEvent.CLICK,this.kajon);
            sesir(_loc3_);
         }
         _loc3_=new Vaqasor(AssetLibrary.zovy("lofiInterfaceBig",7),16777215,Kefyfa.sago);
         _loc3_.addEventListener(MouseEvent.CLICK,this.botem);
         sesir(_loc3_);
         if(!this.player_.goc)
         {
            _loc3_=new Vaqasor(AssetLibrary.zovy("lofiInterfaceBig",8),16777215,Kefyfa.tunesij);
            _loc3_.addEventListener(MouseEvent.CLICK,this.ryke);
            sesir(_loc3_);
         }
         else
         {
            _loc3_=new Vaqasor(AssetLibrary.zovy("lofiInterfaceBig",9),16777215,Kefyfa.sewuw);
            _loc3_.addEventListener(MouseEvent.CLICK,this.sekaz);
            sesir(_loc3_);
         }
         return;
      }

      private function ruromo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.player_.pawuhopa(this.player_);
         remove();
         return;
      }

      private function muleboleq(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.guildInvite(this.bicon);
         remove();
         return;
      }

      private function teta(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.party_.tuda(this.player_);
         remove();
         return;
      }

      private function kajon(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.party_.pacy(this.player_);
         remove();
         return;
      }

      private function botem(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.gsc_.requestTrade(this.bicon);
         remove();
         return;
      }

      private function ryke(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.party_.hajavekiw(this.player_);
         remove();
         return;
      }

      private function sekaz(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.party_.qajiryg(this.player_);
         remove();
         return;
      }
   }
[/CLASS]
}