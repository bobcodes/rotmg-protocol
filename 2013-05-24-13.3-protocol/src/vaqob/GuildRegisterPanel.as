package vaqob
{
   import movimet.Lufub;
   import flash.display.Sprite;
   import tulunyno.Hugyqufyq;
   import ruwysepyd.Junefolef;
   import flash.events.MouseEvent;
   import qazoz.Nyzur;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.GuildUtil;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import aaa.rotmg.config.UserConfig;
   import com.company.assembleegameclient.util.Currency;


   public class GuildRegisterPanel extends Panel
   {
      public function GuildRegisterPanel(param1:GameSprite) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Player = null;
         var _loc3_:String = null;
         var _loc4_:Nyzur = null;
         super(param1);
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         _loc2_=gs_.map.player_;
         this.zaba=new Lufub().setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
         this.zaba.filters=[new DropShadowFilter(0,0,0)];
         if(!(_loc2_.guildName_==null)&&_loc2_.guildName_.length>0)
         {
            _loc3_=GuildUtil.kyrehorek(_loc2_.guildRank_);
            this.zaba.setStringBuilder(new Sire().setParams(I18nKeys.gelywofus,
               {
                  rank:_loc3_,
                  guildName:_loc2_.guildName_
               }
            ).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.zaba.y=0;
            addChild(this.zaba);
            this.mer=new Dogyqijec(16,I18nKeys.hucenipiv);
            this.mer.addEventListener(MouseEvent.CLICK,this.lofe);
            this.jiguvovu.push(Dogyqijec(this.mer).textChanged);
            addChild(this.mer);
         }
         else
         {
            this.zaba.setStringBuilder(new Sire().setParams(I18nKeys.pedewy).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.zaba.y=0;
            addChild(this.zaba);
            _loc4_=new Nyzur(I18nKeys.voje,16,UserConfig.zawojutu,Currency.FAME);
            _loc4_.addEventListener(MouseEvent.CLICK,this.zobakaru);
            this.jiguvovu.push(_loc4_.qecysiga);
            addChild(_loc4_);
            this.mer=_loc4_;
         }
         this.jiguvovu.complete.addOnce(this.alignUI);
         return;
      }

      private var zaba:Lufub;

      private var mer:Sprite;

      public const hyjun:Hugyqufyq = new Hugyqufyq();

      public const jiguvovu:Junefolef = new Junefolef();

      public const renounce:Hugyqufyq = new Hugyqufyq();

      private function lofe(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.renounce.dispatch();
         return;
      }

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mer.x=WIDTH/2-this.mer.width/2;
         this.mer.y=this.mer is Nyzur?HEIGHT-this.mer.height/2-31:HEIGHT-this.mer.height-4;
         return;
      }

      public function zobakaru(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         visible=false;
         this.hyjun.dispatch();
         return;
      }
   }

}