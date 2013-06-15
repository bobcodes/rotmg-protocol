package fytalis
{
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import flash.utils.Timer;
   import wenono.Nuri;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.Pajemiz;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.filters.DropShadowFilter;
   import jediwip.Vofezuzy;


   public class Dazu extends Panel
   {
      public function Dazu(param1:Pajemiz, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.name_=param2;
         this.guildName_=param3;
         this.gehivyky=new Guzowoja().setSize(16).setColor(16777215).setTextWidth(WIDTH).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
         this.gehivyky.setStringBuilder(new Kybidu().setParams(Vibemod.guborakim,{playerName:param2}).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.gehivyky.filters=[new DropShadowFilter(0,0,0)];
         this.gehivyky.y=0;
         addChild(this.gehivyky);
         this.mivy=new Guzowoja().setSize(16).setColor(16777215).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.mivy.setStringBuilder(new Vofezuzy("<p align=\"center\">"+this.guildName_+"</p>"));
         this.mivy.filters=[new DropShadowFilter(0,0,0)];
         this.mivy.y=20;
         addChild(this.mivy);
         this.rekegoga=new Tivinu(16,Vibemod.hegafo);
         this.rekegoga.addEventListener(MouseEvent.CLICK,this.mupibu);
         this.ryfoc.push(this.rekegoga.textChanged);
         addChild(this.rekegoga);
         this.sabose=new Tivinu(16,Vibemod.vyhiny);
         this.sabose.addEventListener(MouseEvent.CLICK,this.kosuw);
         this.ryfoc.push(this.sabose.textChanged);
         addChild(this.sabose);
         this.nahivug=new Timer(20*1000,1);
         this.nahivug.start();
         this.nahivug.addEventListener(TimerEvent.TIMER,this.pivaw);
         this.ryfoc.complete.addOnce(this.alignUI);
         return;
      }

      public var name_:String;

      private var gehivyky:Guzowoja;

      private var guildName_:String;

      private var mivy:Guzowoja;

      private var rekegoga:Tivinu;

      private var sabose:Tivinu;

      private var nahivug:Timer;

      private const ryfoc:Nuri = new Nuri();

      private function alignUI() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.rekegoga.x=WIDTH/4-this.rekegoga.width/2;
         this.rekegoga.y=HEIGHT-this.rekegoga.height-4;
         this.sabose.x=3*WIDTH/4-this.sabose.width/2;
         this.sabose.y=HEIGHT-this.sabose.height-4;
         return;
      }

      private function pivaw(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function mupibu(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function kosuw(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         gs_.gsc_.joinGuild(this.guildName_);
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}