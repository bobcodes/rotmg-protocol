package vaqob
{
   import movimet.Lufub;
   import com.company.assembleegameclient.ui.Dogyqijec;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.Nukomesih;
   import nec.Sire;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import ruwysepyd.Junefolef;


   public class TradeRequestPanel extends Panel
   {
      public function TradeRequestPanel(param1:Nukomesih, param2:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.name_=param2;
         this.zaba=new Lufub().setSize(18).setColor(16777215).setTextWidth(WIDTH);
         this.zaba.setStringBuilder(new Sire().setParams(I18nKeys.gafyruro,{name:param2}));
         this.zaba.setBold(true);
         this.zaba.setWordWrap(true).setMultiLine(true);
         this.zaba.setAutoSize(TextFieldAutoSize.CENTER);
         this.zaba.filters=[new DropShadowFilter(0,0,0)];
         this.zaba.y=0;
         addChild(this.zaba);
         this.fyruvu=new Dogyqijec(16,I18nKeys.peciqij);
         this.fyruvu.addEventListener(MouseEvent.CLICK,this.byr);
         addChild(this.fyruvu);
         this.jyviniq=new Dogyqijec(16,I18nKeys.selylor);
         this.jyviniq.addEventListener(MouseEvent.CLICK,this.cefubabic);
         addChild(this.jyviniq);
         this.qeliwaw=new Timer(20*1000,1);
         this.qeliwaw.start();
         this.qeliwaw.addEventListener(TimerEvent.TIMER,this.porykocaq);
         var _loc3_:Junefolef = new Junefolef();
         _loc3_.pushArgs(this.fyruvu.textChanged,this.jyviniq.textChanged);
         _loc3_.complete.addOnce(this.onComplete);
         return;
      }

      public var name_:String;

      private var zaba:Lufub;

      private var fyruvu:Dogyqijec;

      private var jyviniq:Dogyqijec;

      private var qeliwaw:Timer;

      private function onComplete() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fyruvu.x=WIDTH/4-this.fyruvu.width/2;
         this.jyviniq.x=3*WIDTH/4-this.jyviniq.width/2;
         this.fyruvu.y=HEIGHT-this.fyruvu.height-4;
         this.jyviniq.y=HEIGHT-this.jyviniq.height-4;
         return;
      }

      private function porykocaq(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function byr(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function cefubabic(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gs_.gsc_.requestTrade(this.name_);
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}