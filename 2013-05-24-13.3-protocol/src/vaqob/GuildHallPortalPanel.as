package vaqob
{
   import com.company.assembleegameclient.util.Votif;
   import com.company.assembleegameclient.objects.GuildHallPortal;
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import ruwysepyd.Junefolef;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.game.Nukomesih;
   import com.company.assembleegameclient.objects.Player;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;


   public class GuildHallPortalPanel extends Panel
   {
      public function GuildHallPortalPanel(param1:Nukomesih, param2:GuildHallPortal) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Player = null;
         super(param1);
         this.tuleva=new Votif(this);
         this.muduv=param2;
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         _loc3_=gs_.map.player_;
         this.nameText_=new Lufub().setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.nameText_.setStringBuilder(new Sire().setParams(I18nKeys.rykoso).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         this.nameText_.y=6;
         addChild(this.nameText_);
         if(!(_loc3_.guildName_==null)&&_loc3_.guildName_.length>0)
         {
            this.kameg=new Dogyqijec(16,I18nKeys.wabase);
            this.kameg.addEventListener(MouseEvent.CLICK,this.jecaneves);
            addChild(this.kameg);
            this.jiguvovu.push(this.kameg.textChanged);
            addEventListener(Event.ADDED_TO_STAGE,this.dyl);
         }
         else
         {
            this.duhy=new Lufub().setSize(18).setColor(16711680).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true).setBold(true);
            this.duhy.setStringBuilder(new Sire().setParams(I18nKeys.tugy).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.duhy.filters=[new DropShadowFilter(0,0,0)];
            this.jiguvovu.push(this.duhy.textChanged);
            addChild(this.duhy);
         }
         this.jiguvovu.complete.addOnce(this.alignUI);
         return;
      }

      public var tuleva:Votif;

      private var muduv:GuildHallPortal;

      private var nameText_:Lufub;

      private var kameg:Dogyqijec;

      private var duhy:Lufub;

      private const jiguvovu:Junefolef = new Junefolef();

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.duhy)
         {
            this.duhy.y=HEIGHT-this.duhy.height-12;
         }
         if(this.kameg)
         {
            this.kameg.x=WIDTH/2-this.kameg.width/2;
            this.kameg.y=HEIGHT-this.kameg.height-4;
         }
         return;
      }

      private function dyl(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuleva.addEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         addEventListener(Event.REMOVED_FROM_STAGE,this.paj);
         return;
      }

      private function paj(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuleva.removeEventListener(KeyboardEvent.KEY_DOWN,this.desis);
         return;
      }

      private function jecaneves(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.enterPortal();
         return;
      }

      private function desis(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==UserConfig.data_.interact&&stage.focus==null)
         {
            this.enterPortal();
         }
         return;
      }

      private function enterPortal() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         gs_.gsc_.usePortal(this.muduv.objectId_);
         return;
      }
   }

}