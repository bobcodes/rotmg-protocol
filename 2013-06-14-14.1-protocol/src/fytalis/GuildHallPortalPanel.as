package fytalis
{
   import com.company.assembleegameclient.util.Cokinomu;
   import com.company.assembleegameclient.objects.GuildHallPortal;
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import wenono.Nuri;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.Pajemiz;
   import com.company.assembleegameclient.objects.Player;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;


   public class GuildHallPortalPanel extends Panel
   {
      public function GuildHallPortalPanel(param1:Pajemiz, param2:GuildHallPortal) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Player = null;
         super(param1);
         this.gap=new Cokinomu(this);
         this.gilyzygag=param2;
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         _loc3_=gs_.map.player_;
         this.nameText_=new Guzowoja().setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.nameText_.setStringBuilder(new Kybidu().setParams(Vibemod.qyqi).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         this.nameText_.y=6;
         addChild(this.nameText_);
         if(!(_loc3_.guildName_==null)&&_loc3_.guildName_.length>0)
         {
            this.hudyqipo=new Tivinu(16,Vibemod.suzalame);
            this.hudyqipo.addEventListener(MouseEvent.CLICK,this.hocig);
            addChild(this.hudyqipo);
            this.ryfoc.push(this.hudyqipo.textChanged);
            addEventListener(Event.ADDED_TO_STAGE,this.wypyguzata);
         }
         else
         {
            this.suje=new Guzowoja().setSize(18).setColor(16711680).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true).setBold(true);
            this.suje.setStringBuilder(new Kybidu().setParams(Vibemod.dyhuhy).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.suje.filters=[new DropShadowFilter(0,0,0)];
            this.ryfoc.push(this.suje.textChanged);
            addChild(this.suje);
         }
         this.ryfoc.complete.addOnce(this.alignUI);
         return;
      }

      public var gap:Cokinomu;

      private var gilyzygag:GuildHallPortal;

      private var nameText_:Guzowoja;

      private var hudyqipo:Tivinu;

      private var suje:Guzowoja;

      private const ryfoc:Nuri = new Nuri();

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.suje)
         {
            this.suje.y=HEIGHT-this.suje.height-12;
         }
         if(this.hudyqipo)
         {
            this.hudyqipo.x=WIDTH/2-this.hudyqipo.width/2;
            this.hudyqipo.y=HEIGHT-this.hudyqipo.height-4;
         }
         return;
      }

      private function wypyguzata(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gap.addEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         addEventListener(Event.REMOVED_FROM_STAGE,this.lydo);
         return;
      }

      private function lydo(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gap.removeEventListener(KeyboardEvent.KEY_DOWN,this.tuv);
         return;
      }

      private function hocig(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.enterPortal();
         return;
      }

      private function tuv(param1:KeyboardEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1.keyCode==Parameters.data_.interact&&stage.focus==null)
         {
            this.enterPortal();
         }
         return;
      }

      private function enterPortal() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         gs_.gsc_.usePortal(this.gilyzygag.objectId_);
         return;
      }
   }

}