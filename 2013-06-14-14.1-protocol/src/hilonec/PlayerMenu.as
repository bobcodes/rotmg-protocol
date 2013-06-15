package hilonec
{
   import com.company.assembleegameclient.game.Pajemiz;
   import com.company.assembleegameclient.objects.Player;
   import com.company.assembleegameclient.ui.Nyre;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.util.GuildUtil;
   import com.company.util.AssetLibrary;
   import komi.Vibemod;
   import flash.events.Event;


   public class PlayerMenu extends Menu
   {
      public function PlayerMenu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(3552822,16777215);
         return;
      }

      public var gs_:Pajemiz;

      public var sotilehip:String;

      public var player_:Player;

      public var jypiryqy:Nyre;

      public function init(param1:Pajemiz, param2:Player) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Vazodav = null;
         this.gs_=param1;
         this.sotilehip=param2.name_;
         this.player_=param2;
         this.jypiryqy=new Nyre(11776947,true,this.player_);
         addChild(this.jypiryqy);
         if((this.gs_.map.allowPlayerTeleport_)&&(this.player_.nopyv(this.player_)))
         {
            _loc3_=new TeleportMenuOption(this.gs_.map.player_);
            _loc3_.addEventListener(MouseEvent.CLICK,this.zoduceni);
            jobilu(_loc3_);
         }
         if(this.gs_.map.player_.guildRank_>=GuildUtil.legahuquk&&(param2.guildName_==null||param2.guildName_.length==0))
         {
            _loc3_=new Vazodav(AssetLibrary.tem("lofiInterfaceBig",10),16777215,Vibemod.cicocyqid);
            _loc3_.addEventListener(MouseEvent.CLICK,this.huwib);
            jobilu(_loc3_);
         }
         if(!this.player_.starred_)
         {
            _loc3_=new Vazodav(AssetLibrary.tem("lofiInterface2",5),16777215,Vibemod.kisiz);
            _loc3_.addEventListener(MouseEvent.CLICK,this.ruro);
            jobilu(_loc3_);
         }
         else
         {
            _loc3_=new Vazodav(AssetLibrary.tem("lofiInterface2",6),16777215,Vibemod.fuza);
            _loc3_.addEventListener(MouseEvent.CLICK,this.ledohyhuz);
            jobilu(_loc3_);
         }
         _loc3_=new Vazodav(AssetLibrary.tem("lofiInterfaceBig",7),16777215,Vibemod.lyf);
         _loc3_.addEventListener(MouseEvent.CLICK,this.wafehetol);
         jobilu(_loc3_);
         if(!this.player_.hehah)
         {
            _loc3_=new Vazodav(AssetLibrary.tem("lofiInterfaceBig",8),16777215,Vibemod.sijyhonav);
            _loc3_.addEventListener(MouseEvent.CLICK,this.duri);
            jobilu(_loc3_);
         }
         else
         {
            _loc3_=new Vazodav(AssetLibrary.tem("lofiInterfaceBig",9),16777215,Vibemod.seg);
            _loc3_.addEventListener(MouseEvent.CLICK,this.vasew);
            jobilu(_loc3_);
         }
         return;
      }

      private function zoduceni(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.player_.dozizan(this.player_);
         remove();
         return;
      }

      private function huwib(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.gsc_.guildInvite(this.sotilehip);
         remove();
         return;
      }

      private function ruro(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.party_.setur(this.player_);
         remove();
         return;
      }

      private function ledohyhuz(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.party_.supocuser(this.player_);
         remove();
         return;
      }

      private function wafehetol(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.gsc_.requestTrade(this.sotilehip);
         remove();
         return;
      }

      private function duri(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gs_.map.party_.dyzafeju(this.player_);
         remove();
         return;
      }

      private function vasew(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gs_.map.party_.taseje(this.player_);
         remove();
         return;
      }
   }

}