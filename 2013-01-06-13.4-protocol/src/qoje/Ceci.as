package qoje
{
[CLASS1012]   import lutoroba.Gucyjopaw;
   import flash.events.IEventDispatcher;
   import __AS3__.vec.Vector;
   import flash.events.Event;


   public class Ceci extends Object implements Gucyjopaw
   {
      public function Ceci(param1:IEventDispatcher) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this._eventDispatcher=param1;
         return;
      }

      private var _eventDispatcher:IEventDispatcher;

      private const recapir:Vector.<Luqysinu> = new Vector.<Luqysinu>();

      private const mif:Vector.<Luqysinu> = new Vector.<Luqysinu>();

      private var dapelaj:Boolean = false;

      public function dilofunu(param1:IEventDispatcher, param2:String, param3:Function, param4:Class=null, param5:Boolean=false, param6:int=0, param7:Boolean=true) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var eventConfig:Luqysinu = null;
         var callback:Function = null;
         var dispatcher:IEventDispatcher = param1;
         var eventString:String = param2;
         var listener:Function = param3;
         var eventClass:Class = param4;
         var useCapture:Boolean = param5;
         var priority:int = param6;
         var useWeakReference:Boolean = param7;
         eventClass=(eventClass)||(Event);
         var currentListeners:Vector.<Luqysinu> = this.dapelaj?this.mif:this.recapir;
         var i:int = currentListeners.length;
         while(i--)
         {
            eventConfig=currentListeners[i];
            if(eventConfig.dispatcher==dispatcher&&eventConfig.eventString==eventString&&eventConfig.listener==listener&&eventConfig.useCapture==useCapture&&eventConfig.eventClass==eventClass)
            {
               return;
            }
         }
         if(eventClass!=Event)
         {
            callback=new function(param1:Event):void
            {
               routeEventToListener(param1,listener,eventClass);
               return;
            };
         }
         else
         {
            callback=listener;
         }
         eventConfig=new Luqysinu(dispatcher,eventString,listener,eventClass,callback,useCapture);
         currentListeners.push(eventConfig);
         if(!this.dapelaj)
         {
            dispatcher.addEventListener(eventString,callback,useCapture,priority,useWeakReference);
         }
         return;
      }

      public function bytoh(param1:IEventDispatcher, param2:String, param3:Function, param4:Class=null, param5:Boolean=false) : void {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc6_:Luqysinu = null;
         var param4:Class = (param4)||(Event);
         var _loc7_:Vector.<Luqysinu> = this.dapelaj?this.mif:this.recapir;
         var _loc8_:int = _loc7_.length;
         while(_loc8_--)
         {
            _loc6_=_loc7_[_loc8_];
            if(_loc6_.dispatcher==param1&&_loc6_.eventString==param2&&_loc6_.listener==param3&&_loc6_.useCapture==param5&&_loc6_.eventClass==param4)
            {
               if(!this.dapelaj)
               {
                  param1.removeEventListener(param2,_loc6_.callback,param5);
               }
               _loc7_.splice(_loc8_,1);
               return;
            }
         }
         return;
      }

      public function dyjeka() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Luqysinu = null;
         var _loc3_:IEventDispatcher = null;
         var _loc1_:Vector.<Luqysinu> = this.dapelaj?this.mif:this.recapir;
         while(_loc2_=_loc1_.pop())
         {
            if(!this.dapelaj)
            {
               _loc3_=_loc2_.dispatcher;
               _loc3_.removeEventListener(_loc2_.eventString,_loc2_.callback,_loc2_.useCapture);
            }
         }
         return;
      }

      public function suspend() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Luqysinu = null;
         var _loc2_:IEventDispatcher = null;
         if(this.dapelaj)
         {
            return;
         }
         this.dapelaj=true;
         while(_loc1_=this.recapir.pop())
         {
            _loc2_=_loc1_.dispatcher;
            _loc2_.removeEventListener(_loc1_.eventString,_loc1_.callback,_loc1_.useCapture);
            this.mif.push(_loc1_);
         }
         return;
      }

      public function resume() : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Luqysinu = null;
         var _loc2_:IEventDispatcher = null;
         if(!this.dapelaj)
         {
            return;
         }
         this.dapelaj=false;
         while(_loc1_=this.mif.pop())
         {
            _loc2_=_loc1_.dispatcher;
            _loc2_.addEventListener(_loc1_.eventString,_loc1_.callback,_loc1_.useCapture);
            this.recapir.push(_loc1_);
         }
         return;
      }

      private function routeEventToListener(param1:Event, param2:Function, param3:Class) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param1 is param3)
         {
            param2(param1);
         }
         return;
      }
   }
[/CLASS]
}