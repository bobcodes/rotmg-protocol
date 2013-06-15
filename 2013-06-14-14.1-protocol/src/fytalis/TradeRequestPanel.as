package fytalis
{
   import hivysif.Guzowoja;
   import com.company.assembleegameclient.ui.Tivinu;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import com.company.assembleegameclient.game.Pajemiz;
   import jediwip.Kybidu;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;
   import wenono.Nuri;


   public class TradeRequestPanel extends Panel
   {
      public function TradeRequestPanel(param1:Pajemiz, param2:String) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1);
         this.name_=param2;
         this.gehivyky=new Guzowoja().setSize(18).setColor(16777215).setTextWidth(WIDTH);
         this.gehivyky.setStringBuilder(new Kybidu().setParams(Vibemod.zudahe,{name:param2}));
         this.gehivyky.setBold(true);
         this.gehivyky.setWordWrap(true).setMultiLine(true);
         this.gehivyky.setAutoSize(TextFieldAutoSize.CENTER);
         this.gehivyky.filters=[new DropShadowFilter(0,0,0)];
         this.gehivyky.y=0;
         addChild(this.gehivyky);
         this.rekegoga=new Tivinu(16,Vibemod.voro);
         this.rekegoga.addEventListener(MouseEvent.CLICK,this.mupibu);
         addChild(this.rekegoga);
         this.sabose=new Tivinu(16,Vibemod.qecyricuc);
         this.sabose.addEventListener(MouseEvent.CLICK,this.kosuw);
         addChild(this.sabose);
         this.nahivug=new Timer(20*1000,1);
         this.nahivug.start();
         this.nahivug.addEventListener(TimerEvent.TIMER,this.pivaw);
         var _loc3_:Nuri = new Nuri();
         _loc3_.pushArgs(this.rekegoga.textChanged,this.sabose.textChanged);
         _loc3_.complete.addOnce(this.onComplete);
         return;
      }

      public var name_:String;

      private var gehivyky:Guzowoja;

      private var rekegoga:Tivinu;

      private var sabose:Tivinu;

      private var nahivug:Timer;

      private function onComplete() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.rekegoga.x=WIDTH/4-this.rekegoga.width/2;
         this.sabose.x=3*WIDTH/4-this.sabose.width/2;
         this.rekegoga.y=HEIGHT-this.rekegoga.height-4;
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
         gs_.gsc_.requestTrade(this.name_);
         dispatchEvent(new Event(Event.COMPLETE));
         return;
      }
   }

}