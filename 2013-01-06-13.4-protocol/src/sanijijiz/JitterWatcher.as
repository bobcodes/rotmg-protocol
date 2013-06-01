package sanijijiz
{
[CLASS1414]   import flash.display.Sprite;
   import totuhare.Zufi;
   import pudev.Capitu;
   import __AS3__.vec.Vector;
   import flash.utils.getTimer;
   import flash.events.Event;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class JitterWatcher extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function JitterWatcher() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vynelu=new Vector.<int>();
         super();
         this.text_=new Capitu().setSize(14).setColor(16777215);
         this.text_.setAutoSize(TextFieldAutoSize.LEFT);
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text_);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const febup:Zufi = new Zufi();

      private var text_:Capitu = null;

      private var hyp:int = -1;

      private var vynelu:Vector.<int>;

      private var mimofevi:int;

      public function record() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc1_:int = getTimer();
         if(this.hyp==-1)
         {
            this.hyp=_loc1_;
            return;
         }
         var _loc2_:int = _loc1_-this.hyp;
         this.vynelu.push(_loc2_);
         this.mimofevi=this.mimofevi+_loc2_;
         if(this.vynelu.length>50)
         {
            _loc3_=this.vynelu.shift();
            this.mimofevi=this.mimofevi-_loc3_;
         }
         this.hyp=_loc1_;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text_.setStringBuilder(febup.setParams(Kefyfa.kezec,{jitter:this.jitter()}));
         return;
      }

      private function jitter() : Number {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = 0;
         var _loc1_:int = this.vynelu.length;
         if(_loc1_==0)
         {
            return 0;
         }
         var _loc2_:Number = this.mimofevi/_loc1_;
         var _loc3_:Number = 0;
         for each (_loc4_ in this.vynelu)
         {
            _loc3_=_loc3_+(_loc4_-_loc2_)*(_loc4_-_loc2_);
         }
         return Math.sqrt(_loc3_/_loc1_);
      }
   }
[/CLASS]
}