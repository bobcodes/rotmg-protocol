package vaqob
{
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.utils.Timer;
   import ruwysepyd.Junefolef;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.Nukomesih;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.filters.DropShadowFilter;
   import nec.Nara;


   public class Kihu extends Panel
   {
      public function Kihu(param1:Nukomesih, param2:String, param3:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.name_=param2;
         this.guildName_=param3;
         this.zaba=new Lufub().setSize(16).setColor(16777215).setTextWidth(WIDTH).setBold(true).setAutoSize(TextFieldAutoSize.CENTER).setHTML(true);
         this.zaba.setStringBuilder(new Sire().setParams(I18nKeys.satileva,{playerName:param2}).setPrefix("<p align=\"center\">").setPostfix("</p>"));
         this.zaba.filters=[new DropShadowFilter(0,0,0)];
         this.zaba.y=0;
         addChild(this.zaba);
         this.nygiq=new Lufub().setSize(16).setColor(16777215).setTextWidth(WIDTH).setAutoSize(TextFieldAutoSize.CENTER).setBold(true).setHTML(true);
         this.nygiq.setStringBuilder(new Nara("<p align=\"center\">"+this.guildName_+"</p>"));
         this.nygiq.filters=[new DropShadowFilter(0,0,0)];
         this.nygiq.y=20;
         addChild(this.nygiq);
         this.fyruvu=new Dogyqijec(16,I18nKeys.genacuqur);
         this.fyruvu.addEventListener(MouseEvent.CLICK,this.byr);
         this.jiguvovu.push(this.fyruvu.textChanged);
         addChild(this.fyruvu);
         this.jyviniq=new Dogyqijec(16,I18nKeys.numaji);
         this.jyviniq.addEventListener(MouseEvent.CLICK,this.cefubabic);
         this.jiguvovu.push(this.jyviniq.textChanged);
         addChild(this.jyviniq);
         this.qeliwaw=new Timer(20*1000,1);
         this.qeliwaw.start();
         this.qeliwaw.addEventListener(TimerEvent.TIMER,this.porykocaq);
         this.jiguvovu.complete.addOnce(this.alignUI);
         return;
      }

      public var name_:String;

      private var zaba:Lufub;

      private var guildName_:String;

      private var nygiq:Lufub;

      private var fyruvu:Dogyqijec;

      private var jyviniq:Dogyqijec;

      private var qeliwaw:Timer;

      private const jiguvovu:Junefolef = new Junefolef();

      private function alignUI() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fyruvu.x=WIDTH/4-this.fyruvu.width/2;
         this.fyruvu.y=HEIGHT-this.fyruvu.height-4;
         this.jyviniq.x=3*WIDTH/4-this.jyviniq.width/2;
         this.jyviniq.y=HEIGHT-this.jyviniq.height-4;
         return;
      }

      private function porykocaq(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function byr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function cefubabic(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gs_.gsc_.joinGuild(this.guildName_);
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}