package warude
{
[CLASS433]   import pudev.Capitu;
   import flash.display.Sprite;
   import tinava.Dab;
   import tidi.Dak;
   import flash.events.MouseEvent;
   import gicuzum.Caty;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.GuildUtil;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import com.company.assembleegameclient.ui.Cid;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.util.Currency;


   public class GuildRegisterPanel extends Panel
   {
      public function GuildRegisterPanel(param1:GameSprite) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Player = null;
         var _loc3_:String = null;
         var _loc4_:Caty = null;
         super(param1);
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         _loc2_=gs_.map.player_;
         this.fyk=new Capitu().setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
         this.fyk.filters=[new DropShadowFilter(0,0,0)];
         if(!(_loc2_.guildName_==null)&&_loc2_.guildName_.length>0)
         {
            _loc3_=GuildUtil.bihuw(_loc2_.guildRank_);
            this.fyk.setStringBuilder(new Zufi().setParams(Kefyfa.sujucusu,
               {
                  rank:_loc3_,
                  guildName:_loc2_.guildName_
               }
            ).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.fyk.y=0;
            addChild(this.fyk);
            this.faguki=new Cid(16,Kefyfa.qozunibo);
            this.faguki.addEventListener(MouseEvent.CLICK,this.byhir);
            this.juwocez.push(Cid(this.faguki).textChanged);
            addChild(this.faguki);
         }
         else
         {
            this.fyk.setStringBuilder(new Zufi().setParams(Kefyfa.fapeni).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.fyk.y=0;
            addChild(this.fyk);
            _loc4_=new Caty(Kefyfa.hovigyda,16,Parameters.melade,Currency.FAME);
            _loc4_.addEventListener(MouseEvent.CLICK,this.filybaji);
            this.juwocez.push(_loc4_.necilywe);
            addChild(_loc4_);
            this.faguki=_loc4_;
         }
         this.juwocez.complete.addOnce(this.alignUI);
         return;
      }

      private var fyk:Capitu;

      private var faguki:Sprite;

      public const dis:Dab = new Dab();

      public const juwocez:Dak = new Dak();

      public const renounce:Dab = new Dab();

      private function byhir(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.renounce.dispatch();
         return;
      }

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.faguki.x=WIDTH/2-this.faguki.width/2;
         this.faguki.y=this.faguki is Caty?HEIGHT-this.faguki.height/2-31:HEIGHT-this.faguki.height-4;
         return;
      }

      public function filybaji(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         visible=false;
         this.dis.dispatch();
         return;
      }
   }
[/CLASS]
}