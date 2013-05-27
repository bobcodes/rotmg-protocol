package bisok
{
   import flash.display.Sprite;
   import nec.Sire;
   import movimet.Lufub;
   import __AS3__.vec.Vector;
   import flash.utils.getTimer;
   import flash.events.Event;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class JitterWatcher extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function JitterWatcher() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vas=new Vector.<int>();
         super();
         this.text_=new Lufub().setSize(14).setColor(16777215);
         this.text_.setAutoSize(TextFieldAutoSize.LEFT);
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text_);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const hicawel:Sire = new Sire();

      private var text_:Lufub = null;

      private var liqolu:int = -1;

      private var vas:Vector.<int>;

      private var sorenit:int;

      public function record() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc1_:int = getTimer();
         if(this.liqolu==-1)
         {
            this.liqolu=_loc1_;
            return;
         }
         var _loc2_:int = _loc1_-this.liqolu;
         this.vas.push(_loc2_);
         this.sorenit=this.sorenit+_loc2_;
         if(this.vas.length>50)
         {
            _loc3_=this.vas.shift();
            this.sorenit=this.sorenit-_loc3_;
         }
         this.liqolu=_loc1_;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.text_.setStringBuilder(hicawel.setParams(I18nKeys.wemah,{jitter:this.jitter()}));
         return;
      }

      private function jitter() : Number {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = 0;
         var _loc1_:int = this.vas.length;
         if(_loc1_==0)
         {
            return 0;
         }
         var _loc2_:Number = this.sorenit/_loc1_;
         var _loc3_:Number = 0;
         for each (_loc4_ in this.vas)
         {
            _loc3_=_loc3_+(_loc4_-_loc2_)*(_loc4_-_loc2_);
         }
         return Math.sqrt(_loc3_/_loc1_);
      }
   }

}