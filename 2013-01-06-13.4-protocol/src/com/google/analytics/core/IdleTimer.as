package com.google.analytics.core
{
[CLASS1571]   import flash.display.Stage;
   import flash.utils.Timer;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   import com.google.analytics.debug.VisualDebugMode;
   import com.google.analytics.debug.DebugConfiguration;
   import flash.events.TimerEvent;
   import com.google.analytics.v4.Configuration;
   import flash.display.DisplayObject;


   public class IdleTimer extends Object
   {
      public function IdleTimer(param1:Configuration, param2:DebugConfiguration, param3:DisplayObject, param4:Buffer) {
         super();
         var _loc5_:Number = param1.idleLoop;
         var _loc6_:Number = param1.idleTimeout;
         var _loc7_:Number = param1.sessionTimeout;
         _loop=new Timer(_loc5_*1000);
         _session=new Timer(_loc7_*1000,1);
         _debug=param2;
         _stage=param3.stage;
         _buffer=param4;
         _lastMove=getTimer();
         _inactivity=_loc6_*1000;
         _loop.addEventListener(TimerEvent.TIMER,checkForIdle);
         _session.addEventListener(TimerEvent.TIMER_COMPLETE,endSession);
         _stage.addEventListener(MouseEvent.MOUSE_MOVE,onMouseMove);
         _debug.info("delay: "+_loc5_+"sec , inactivity: "+_loc6_+"sec, sessionTimeout: "+_loc7_,VisualDebugMode.geek);
         _loop.start();
         return;
      }

      private var _stage:Stage;

      private var _loop:Timer;

      private var _lastMove:int;

      private function onMouseMove(param1:MouseEvent) : void {
         _lastMove=getTimer();
         if(_session.running)
         {
            _debug.info("session timer reset",VisualDebugMode.geek);
            _session.reset();
         }
         return;
      }

      private var _inactivity:Number;

      private var _debug:DebugConfiguration;

      private var _session:Timer;

      public function endSession(param1:TimerEvent) : void {
         _session.removeEventListener(TimerEvent.TIMER_COMPLETE,endSession);
         _debug.info("session timer end session",VisualDebugMode.geek);
         _session.reset();
         _buffer.resetCurrentSession();
         _debug.info(_buffer.utmb.toString(),VisualDebugMode.geek);
         _debug.info(_buffer.utmc.toString(),VisualDebugMode.geek);
         _session.addEventListener(TimerEvent.TIMER_COMPLETE,endSession);
         return;
      }

      public function checkForIdle(param1:TimerEvent) : void {
         var _loc2_:int = getTimer();
         if(_loc2_-_lastMove>=_inactivity)
         {
            if(!_session.running)
            {
               _debug.info("session timer start",VisualDebugMode.geek);
               _session.start();
            }
         }
         return;
      }

      private var _buffer:Buffer;
   }
[/CLASS]
}