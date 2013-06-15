package loqaj
{
   import flash.utils.Timer;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import copano.Byz;


   public class Kuk extends Lokaz
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kuk(param1:int, param2:Byz, param3:Boolean) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super(param1,param2);
         mouseChildren=false;
         this.poniwamo=new Timer(jely,1);
         this.poniwamo.addEventListener(TimerEvent.TIMER_COMPLETE,this.lonuny);
         this.camubabeh(param3);
         return;
      }

      private static const jely:uint = 250;

      private static const bigi:int = 3;

      private var poniwamo:Timer;

      private var rutot:Point;

      private var hyva:Boolean;

      private var fum:Boolean;

      public function camubabeh(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP,this.honoraj);
            addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
         else
         {
            removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            removeEventListener(MouseEvent.MOUSE_UP,this.honoraj);
            removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
         return;
      }

      public function cazujubud() : DisplayObject {
         return soqugarol.dropTarget;
      }

      protected function beginDragCallback() : void {
         return;
      }

      protected function endDragCallback() : void {
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lulu(false);
         return;
      }

      private function honoraj(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.fum)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.lulu(false);
            dispatchEvent(new Pamave(Pamave.ITEM_SHIFT_CLICK,this));
         }
         else
         {
            if(param1.ctrlKey)
            {
               this.lulu(false);
               dispatchEvent(new Pamave(Pamave.ITEM_CTRL_CLICK,this));
            }
            else
            {
               if(!this.hyva)
               {
                  this.lulu(true);
               }
               else
               {
                  this.lulu(false);
                  dispatchEvent(new Pamave(Pamave.ITEM_DOUBLE_CLICK,this));
               }
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gyna(param1);
         return;
      }

      private function lulu(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hyva=param1;
         if(this.hyva)
         {
            this.poniwamo.reset();
            this.poniwamo.start();
         }
         else
         {
            this.poniwamo.stop();
         }
         return;
      }

      private function gyna(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.rutot=new Point(param1.stageX,param1.stageY);
         addEventListener(MouseEvent.MOUSE_MOVE,this.loqywakepy);
         addEventListener(MouseEvent.MOUSE_OUT,this.rijibyfus);
         addEventListener(MouseEvent.MOUSE_UP,this.rijibyfus);
         return;
      }

      private function rijibyfus(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_MOVE,this.loqywakepy);
         removeEventListener(MouseEvent.MOUSE_OUT,this.rijibyfus);
         removeEventListener(MouseEvent.MOUSE_UP,this.rijibyfus);
         return;
      }

      private function loqywakepy(param1:MouseEvent) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Number = param1.stageX-this.rutot.x;
         var _loc3_:Number = param1.stageY-this.rutot.y;
         var _loc4_:Number = Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
         if(_loc4_>bigi)
         {
            this.rijibyfus(null);
            this.lulu(false);
            this.biceju(param1);
         }
         return;
      }

      private function lonuny(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lulu(false);
         dispatchEvent(new Pamave(Pamave.ITEM_CLICK,this));
         return;
      }

      private function biceju(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fum=true;
         stage.addChild(soqugarol);
         soqugarol.startDrag(true);
         soqugarol.x=param1.stageX;
         soqugarol.y=param1.stageY;
         soqugarol.addEventListener(MouseEvent.MOUSE_UP,this.rekyb);
         this.beginDragCallback();
         return;
      }

      private function rekyb(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fum=false;
         soqugarol.stopDrag();
         soqugarol.removeEventListener(MouseEvent.MOUSE_UP,this.rekyb);
         dispatchEvent(new Pamave(Pamave.ITEM_MOVE,this));
         this.endDragCallback();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lulu(false);
         this.rijibyfus(null);
         if(this.fum)
         {
            soqugarol.stopDrag();
         }
         return;
      }
   }

}