package daloraf
{
[CLASS1068]   import flash.utils.Timer;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import ferozosyf.Jogohyh;


   public class Humy extends Fiboqumag
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Humy(param1:int, param2:Jogohyh, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1,param2);
         mouseChildren=false;
         this.setowybuz=new Timer(togyzoda,1);
         this.setowybuz.addEventListener(TimerEvent.TIMER_COMPLETE,this.nulyty);
         this.nyqynujo(param3);
         return;
      }

      private static const togyzoda:uint = 250;

      private static const saso:int = 3;

      private var setowybuz:Timer;

      private var kyqaseha:Point;

      private var cufis:Boolean;

      private var jysatil:Boolean;

      public function nyqynujo(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP,this.jefazus);
            addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
         else
         {
            removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            removeEventListener(MouseEvent.MOUSE_UP,this.jefazus);
            removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
         return;
      }

      public function fofuqodih() : DisplayObject {
         return cawiluz.dropTarget;
      }

      protected function beginDragCallback() : void {
         return;
      }

      protected function endDragCallback() : void {
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.magucali(false);
         return;
      }

      private function jefazus(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.jysatil)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.magucali(false);
            dispatchEvent(new Walafe(Walafe.ITEM_SHIFT_CLICK,this));
         }
         else
         {
            if(param1.ctrlKey)
            {
               this.magucali(false);
               dispatchEvent(new Walafe(Walafe.ITEM_CTRL_CLICK,this));
            }
            else
            {
               if(!this.cufis)
               {
                  this.magucali(true);
               }
               else
               {
                  this.magucali(false);
                  dispatchEvent(new Walafe(Walafe.ITEM_DOUBLE_CLICK,this));
               }
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.coda(param1);
         return;
      }

      private function magucali(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cufis=param1;
         if(this.cufis)
         {
            this.setowybuz.reset();
            this.setowybuz.start();
         }
         else
         {
            this.setowybuz.stop();
         }
         return;
      }

      private function coda(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kyqaseha=new Point(param1.stageX,param1.stageY);
         addEventListener(MouseEvent.MOUSE_MOVE,this.pipiv);
         addEventListener(MouseEvent.MOUSE_OUT,this.wigocojyd);
         addEventListener(MouseEvent.MOUSE_UP,this.wigocojyd);
         return;
      }

      private function wigocojyd(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(MouseEvent.MOUSE_MOVE,this.pipiv);
         removeEventListener(MouseEvent.MOUSE_OUT,this.wigocojyd);
         removeEventListener(MouseEvent.MOUSE_UP,this.wigocojyd);
         return;
      }

      private function pipiv(param1:MouseEvent) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:Number = param1.stageX-this.kyqaseha.x;
         var _loc3_:Number = param1.stageY-this.kyqaseha.y;
         var _loc4_:Number = Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
         if(_loc4_>saso)
         {
            this.wigocojyd(null);
            this.magucali(false);
            this.rozehuc(param1);
         }
         return;
      }

      private function nulyty(param1:TimerEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.magucali(false);
         dispatchEvent(new Walafe(Walafe.ITEM_CLICK,this));
         return;
      }

      private function rozehuc(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jysatil=true;
         stage.addChild(cawiluz);
         cawiluz.startDrag(true);
         cawiluz.x=param1.stageX;
         cawiluz.y=param1.stageY;
         cawiluz.addEventListener(MouseEvent.MOUSE_UP,this.kyfav);
         this.beginDragCallback();
         return;
      }

      private function kyfav(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jysatil=false;
         cawiluz.stopDrag();
         cawiluz.removeEventListener(MouseEvent.MOUSE_UP,this.kyfav);
         dispatchEvent(new Walafe(Walafe.ITEM_MOVE,this));
         this.endDragCallback();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.magucali(false);
         this.wigocojyd(null);
         if(this.jysatil)
         {
            cawiluz.stopDrag();
         }
         return;
      }
   }
[/CLASS]
}