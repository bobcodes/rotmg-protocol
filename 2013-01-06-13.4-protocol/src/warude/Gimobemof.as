package warude
{
[CLASS1440]   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import flash.utils.Timer;
   import tidi.Dak;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.Tosahafu;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.filters.DropShadowFilter;
   import totuhare.Javo;


   public class Gimobemof extends Panel
   {
      public function Gimobemof(param1:Tosahafu, param2:String, param3:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.name_=param2;
         this.guildName_=param3;
         this.fyk=new Capitu().setSize(16).setColor(16777215).setTextWidth(WIDTH).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
         this.fyk.setStringBuilder(new Zufi().setParams(Kefyfa.locut,{playerName:param2}).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.fyk.filters=[new DropShadowFilter(0,0,0)];
         this.fyk.y=0;
         addChild(this.fyk);
         this.benynedi=new Capitu().setSize(16).setColor(16777215).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.benynedi.setStringBuilder(new Javo("<p align=\"center\">"+this.guildName_+"</p>"));
         this.benynedi.filters=[new DropShadowFilter(0,0,0)];
         this.benynedi.y=20;
         addChild(this.benynedi);
         this.lutuc=new Cid(16,Kefyfa.lotose);
         this.lutuc.addEventListener(MouseEvent.CLICK,this.vufelijac);
         this.juwocez.push(this.lutuc.textChanged);
         addChild(this.lutuc);
         this.loze=new Cid(16,Kefyfa.kikego);
         this.loze.addEventListener(MouseEvent.CLICK,this.vodav);
         this.juwocez.push(this.loze.textChanged);
         addChild(this.loze);
         this.sukitu=new Timer(20*1000,1);
         this.sukitu.start();
         this.sukitu.addEventListener(TimerEvent.TIMER,this.weqyliga);
         this.juwocez.complete.addOnce(this.alignUI);
         return;
      }

      public var name_:String;

      private var fyk:Capitu;

      private var guildName_:String;

      private var benynedi:Capitu;

      private var lutuc:Cid;

      private var loze:Cid;

      private var sukitu:Timer;

      private const juwocez:Dak = new Dak();

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.lutuc.x=WIDTH/4-this.lutuc.width/2;
         this.lutuc.y=HEIGHT-this.lutuc.height-4;
         this.loze.x=3*WIDTH/4-this.loze.width/2;
         this.loze.y=HEIGHT-this.loze.height-4;
         return;
      }

      private function weqyliga(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function vufelijac(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function vodav(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         gs_.gsc_.joinGuild(this.guildName_);
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }
[/CLASS]
}