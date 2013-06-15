package ducojoryn
{
   import flash.display.Sprite;
   import jediwip.Kybidu;
   import hivysif.Guzowoja;
   import __AS3__.vec.Vector;
   import flash.utils.getTimer;
   import flash.events.Event;
   import komi.Vibemod;
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
         this.zavedigit=new Vector.<int>();
         super();
         this.text_=new Guzowoja().setSize(14).setColor(16777215);
         this.text_.setAutoSize(TextFieldAutoSize.LEFT);
         this.text_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.text_);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      private static const begiqo:Kybidu = new Kybidu();

      private var text_:Guzowoja = null;

      private var gejon:int = -1;

      private var zavedigit:Vector.<int>;

      private var pucebyty:int;

      public function record() : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc1_:int = getTimer();
         if(this.gejon==-1)
         {
            this.gejon=_loc1_;
            return;
         }
         var _loc2_:int = _loc1_-this.gejon;
         this.zavedigit.push(_loc2_);
         this.pucebyty=this.pucebyty+_loc2_;
         if(this.zavedigit.length>50)
         {
            _loc3_=this.zavedigit.shift();
            this.pucebyty=this.pucebyty-_loc3_;
         }
         this.gejon=_loc1_;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         stage.removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.text_.setStringBuilder(begiqo.setParams(Vibemod.mawojaca,{jitter:this.jitter()}));
         return;
      }

      private function jitter() : Number {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = 0;
         var _loc1_:int = this.zavedigit.length;
         if(_loc1_==0)
         {
            return 0;
         }
         var _loc2_:Number = this.pucebyty/_loc1_;
         var _loc3_:Number = 0;
         for each (_loc4_ in this.zavedigit)
         {
            _loc3_=_loc3_+(_loc4_-_loc2_)*(_loc4_-_loc2_);
         }
         return Math.sqrt(_loc3_/_loc1_);
      }
   }

}