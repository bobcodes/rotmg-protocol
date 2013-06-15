package fytalis
{
   import hivysif.Guzowoja;
   import flash.display.Sprite;
   import mukyrosu.Qanyduk;
   import wenono.Nuri;
   import flash.events.MouseEvent;
   import bemav.Telir;
   import com.company.assembleegameclient.game.GameSprite;
   import com.company.assembleegameclient.objects.Player;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import com.company.assembleegameclient.util.GuildUtil;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import com.company.assembleegameclient.ui.Tivinu;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.util.Currency;


   public class GuildRegisterPanel extends Panel
   {
      public function GuildRegisterPanel(param1:GameSprite) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Player = null;
         var _loc3_:String = null;
         var _loc4_:Telir = null;
         super(param1);
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         _loc2_=gs_.map.player_;
         this.gehivyky=new Guzowoja().setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
         this.gehivyky.filters=[new DropShadowFilter(0,0,0)];
         if(!(_loc2_.guildName_==null)&&_loc2_.guildName_.length>0)
         {
            _loc3_=GuildUtil.hecuj(_loc2_.guildRank_);
            this.gehivyky.setStringBuilder(new Kybidu().setParams(Vibemod.qomuly,
               {
                  rank:_loc3_,
                  guildName:_loc2_.guildName_
               }
            ).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.gehivyky.y=0;
            addChild(this.gehivyky);
            this.namaqaloj=new Tivinu(16,Vibemod.sikesow);
            this.namaqaloj.addEventListener(MouseEvent.CLICK,this.nesoq);
            this.ryfoc.push(Tivinu(this.namaqaloj).textChanged);
            addChild(this.namaqaloj);
         }
         else
         {
            this.gehivyky.setStringBuilder(new Kybidu().setParams(Vibemod.naq).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.gehivyky.y=0;
            addChild(this.gehivyky);
            _loc4_=new Telir(Vibemod.hefocolal,16,Parameters.wurysobu,Currency.FAME);
            _loc4_.addEventListener(MouseEvent.CLICK,this.dit);
            this.ryfoc.push(_loc4_.zesi);
            addChild(_loc4_);
            this.namaqaloj=_loc4_;
         }
         this.ryfoc.complete.addOnce(this.alignUI);
         return;
      }

      private var gehivyky:Guzowoja;

      private var namaqaloj:Sprite;

      public const fimudiv:Qanyduk = new Qanyduk();

      public const ryfoc:Nuri = new Nuri();

      public const renounce:Qanyduk = new Qanyduk();

      private function nesoq(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.renounce.dispatch();
         return;
      }

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.namaqaloj.x=WIDTH/2-this.namaqaloj.width/2;
         this.namaqaloj.y=this.namaqaloj is Telir?HEIGHT-this.namaqaloj.height/2-31:HEIGHT-this.namaqaloj.height-4;
         return;
      }

      public function dit(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         visible=false;
         this.fimudiv.dispatch();
         return;
      }
   }

}