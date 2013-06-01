package warude
{
[CLASS1671]   import com.company.assembleegameclient.util.Vureriju;
   import com.company.assembleegameclient.objects.GuildHallPortal;
   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import tidi.Dak;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.parameters.Parameters;
   import com.company.assembleegameclient.game.Tosahafu;
   import com.company.assembleegameclient.objects.Player;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;


   public class GuildHallPortalPanel extends Panel
   {
      public function GuildHallPortalPanel(param1:Tosahafu, param2:GuildHallPortal) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Player = null;
         super(param1);
         this.kebycos=new Vureriju(this);
         this.gibeho=param2;
         if(gs_.map==null||gs_.map.player_==null)
         {
            return;
         }
         _loc3_=gs_.map.player_;
         this.nameText_=new Capitu().setSize(18).setColor(16777215).setTextWidth(WIDTH).setWordWrap(true).setMultiLine(true).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.nameText_.setStringBuilder(new Zufi().setParams(Kefyfa.hyvavy).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         this.nameText_.y=6;
         addChild(this.nameText_);
         if(!(_loc3_.guildName_==null)&&_loc3_.guildName_.length>0)
         {
            this.woki=new Cid(16,Kefyfa.bih);
            this.woki.addEventListener(MouseEvent.CLICK,this.nokewohom);
            addChild(this.woki);
            this.juwocez.push(this.woki.textChanged);
            addEventListener(Event.ADDED_TO_STAGE,this.cuqozi);
         }
         else
         {
            this.qodi=new Capitu().setSize(18).setColor(16711680).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true).setBold(true);
            this.qodi.setStringBuilder(new Zufi().setParams(Kefyfa.nima).setPrefix("<p align=\"center\">").setPostfix("</p>"));
            this.qodi.filters=[new DropShadowFilter(0,0,0)];
            this.juwocez.push(this.qodi.textChanged);
            addChild(this.qodi);
         }
         this.juwocez.complete.addOnce(this.alignUI);
         return;
      }

      public var kebycos:Vureriju;

      private var gibeho:GuildHallPortal;

      private var nameText_:Capitu;

      private var woki:Cid;

      private var qodi:Capitu;

      private const juwocez:Dak = new Dak();

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.qodi)
         {
            this.qodi.y=HEIGHT-this.qodi.height-12;
         }
         if(this.woki)
         {
            this.woki.x=WIDTH/2-this.woki.width/2;
            this.woki.y=HEIGHT-this.woki.height-4;
         }
         return;
      }

      private function cuqozi(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kebycos.addEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         addEventListener(Event.REMOVED_FROM_STAGE,this.tucyr);
         return;
      }

      private function tucyr(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kebycos.removeEventListener(KeyboardEvent.KEY_DOWN,this.wuja);
         return;
      }

      private function nokewohom(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.enterPortal();
         return;
      }

      private function wuja(param1:KeyboardEvent) : void {
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
         gs_.gsc_.usePortal(this.gibeho.objectId_);
         return;
      }
   }
[/CLASS]
}