package hedewi
{
   import flash.utils.Timer;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import suko.Rerapipy;


   public class Moho extends Zyciwu
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Moho(param1:int, param2:Rerapipy, param3:Boolean) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super(param1,param2);
         mouseChildren=false;
         this.buvew=new Timer(kikadyze,1);
         this.buvew.addEventListener(TimerEvent.TIMER_COMPLETE,this.fyhaf);
         this.vifyk(param3);
         return;
      }

      private static const kikadyze:uint = 250;

      private static const cigim:int = 3;

      private var buvew:Timer;

      private var cujucaquq:Point;

      private var zid:Boolean;

      private var qifyni:Boolean;

      public function vifyk(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1)
         {
            addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            addEventListener(MouseEvent.MOUSE_UP,this.gomivy);
            addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         }
         else
         {
            removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
            removeEventListener(MouseEvent.MOUSE_UP,this.gomivy);
            removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         }
         return;
      }

      public function deqivivu() : DisplayObject {
         return cyjop.dropTarget;
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
         this.vupy(false);
         return;
      }

      private function gomivy(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.qifyni)
         {
            return;
         }
         if(param1.shiftKey)
         {
            this.vupy(false);
            dispatchEvent(new Wyze(Wyze.ITEM_SHIFT_CLICK,this));
         }
         else
         {
            if(param1.ctrlKey)
            {
               this.vupy(false);
               dispatchEvent(new Wyze(Wyze.ITEM_CTRL_CLICK,this));
            }
            else
            {
               if(!this.zid)
               {
                  this.vupy(true);
               }
               else
               {
                  this.vupy(false);
                  dispatchEvent(new Wyze(Wyze.ITEM_DOUBLE_CLICK,this));
               }
            }
         }
         return;
      }

      private function onMouseDown(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ponuk(param1);
         return;
      }

      private function vupy(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.zid=param1;
         if(this.zid)
         {
            this.buvew.reset();
            this.buvew.start();
         }
         else
         {
            this.buvew.stop();
         }
         return;
      }

      private function ponuk(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cujucaquq=new Point(param1.stageX,param1.stageY);
         addEventListener(MouseEvent.MOUSE_MOVE,this.cutyj);
         addEventListener(MouseEvent.MOUSE_OUT,this.laqa);
         addEventListener(MouseEvent.MOUSE_UP,this.laqa);
         return;
      }

      private function laqa(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(MouseEvent.MOUSE_MOVE,this.cutyj);
         removeEventListener(MouseEvent.MOUSE_OUT,this.laqa);
         removeEventListener(MouseEvent.MOUSE_UP,this.laqa);
         return;
      }

      private function cutyj(param1:MouseEvent) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Number = param1.stageX-this.cujucaquq.x;
         var _loc3_:Number = param1.stageY-this.cujucaquq.y;
         var _loc4_:Number = Math.sqrt(_loc2_*_loc2_+_loc3_*_loc3_);
         if(_loc4_>cigim)
         {
            this.laqa(null);
            this.vupy(false);
            this.mymogo(param1);
         }
         return;
      }

      private function fyhaf(param1:TimerEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.vupy(false);
         dispatchEvent(new Wyze(Wyze.ITEM_CLICK,this));
         return;
      }

      private function mymogo(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qifyni=true;
         stage.addChild(cyjop);
         cyjop.startDrag(true);
         cyjop.x=param1.stageX;
         cyjop.y=param1.stageY;
         cyjop.addEventListener(MouseEvent.MOUSE_UP,this.tahij);
         this.beginDragCallback();
         return;
      }

      private function tahij(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qifyni=false;
         cyjop.stopDrag();
         cyjop.removeEventListener(MouseEvent.MOUSE_UP,this.tahij);
         dispatchEvent(new Wyze(Wyze.ITEM_MOVE,this));
         this.endDragCallback();
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vupy(false);
         this.laqa(null);
         if(this.qifyni)
         {
            cyjop.stopDrag();
         }
         return;
      }
   }

}