package warude
{
[CLASS1481]   import pudev.Capitu;
   import com.company.assembleegameclient.ui.Cid;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.Tosahafu;
   import totuhare.Zufi;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import tidi.Dak;


   public class TradeRequestPanel extends Panel
   {
      public function TradeRequestPanel(param1:Tosahafu, param2:String) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1);
         this.name_=param2;
         this.fyk=new Capitu().setSize(18).setColor(16777215).setTextWidth(WIDTH);
         this.fyk.setStringBuilder(new Zufi().setParams(Kefyfa.cybibyli,{name:param2}));
         this.fyk.setBold(true);
         this.fyk.setWordWrap(true).setMultiLine(true);
         this.fyk.setAutoSize(TextFieldAutoSize.CENTER);
         this.fyk.filters=[new DropShadowFilter(0,0,0)];
         this.fyk.y=0;
         addChild(this.fyk);
         this.lutuc=new Cid(16,Kefyfa.jebesik);
         this.lutuc.addEventListener(MouseEvent.CLICK,this.vufelijac);
         addChild(this.lutuc);
         this.loze=new Cid(16,Kefyfa.tyqekivy);
         this.loze.addEventListener(MouseEvent.CLICK,this.vodav);
         addChild(this.loze);
         this.sukitu=new Timer(20*1000,1);
         this.sukitu.start();
         this.sukitu.addEventListener(TimerEvent.TIMER,this.weqyliga);
         var _loc3_:Dak = new Dak();
         _loc3_.pushArgs(this.lutuc.textChanged,this.loze.textChanged);
         _loc3_.complete.addOnce(this.onComplete);
         return;
      }

      public var name_:String;

      private var fyk:Capitu;

      private var lutuc:Cid;

      private var loze:Cid;

      private var sukitu:Timer;

      private function onComplete() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lutuc.x=WIDTH/4-this.lutuc.width/2;
         this.loze.x=3*WIDTH/4-this.loze.width/2;
         this.lutuc.y=HEIGHT-this.lutuc.height-4;
         this.loze.y=HEIGHT-this.loze.height-4;
         return;
      }

      private function weqyliga(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function vufelijac(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }

      private function vodav(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         gs_.gsc_.requestTrade(this.name_);
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }
[/CLASS]
}