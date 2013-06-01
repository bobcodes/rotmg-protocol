package fomykuq
{
[CLASS853]   import __AS3__.vec.Vector;
   import bikyvym.Gejoqolu;


   public class Kekikaf extends Object
   {
      public function Kekikaf(param1:String, param2:Bupepi) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this._name=param1;
         this.rot=param2;
         return;
      }

      private const ciw:Vector.<String> = new Vector.<String>();

      private const maw:MessageDispatcher = new MessageDispatcher();

      private const _callbacks:Array = [];

      private var _name:String;

      private var rot:Bupepi;

      private var meboz:String;

      private var _finalState:String;

      private var _preTransitionEvent:String;

      private var _transitionEvent:String;

      private var _postTransitionEvent:String;

      private var pufome:Boolean;

      public function fromStates(... rest) : Kekikaf {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for each (_loc2_ in rest)
         {
            this.ciw.push(_loc2_);
         }
         return this;
      }

      public function toStates(param1:String, param2:String) : Kekikaf {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.meboz=param1;
         this._finalState=param2;
         return this;
      }

      public function withEvents(param1:String, param2:String, param3:String) : Kekikaf {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this._preTransitionEvent=param1;
         this._transitionEvent=param2;
         this._postTransitionEvent=param3;
         return this;
      }

      public function inReverse() : Kekikaf {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.pufome=true;
         this.rot.zyje(this._preTransitionEvent,this._transitionEvent,this._postTransitionEvent);
         return this;
      }

      public function hik(param1:Function) : Kekikaf {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.maw.sunuhazaz(this._name,param1);
         return this;
      }

      public function enter(param1:Function=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var initialState:String = null;
         var callback:Function = param1;
         if(this.rot.state==this._finalState)
         {
            return;
         }
         if(this.rot.state==this.meboz)
         {
            return;
         }
         if(this.jukuc())
         {
            this.reportError("Invalid transition",[callback]);
            return;
         }
         initialState=this.rot.state;
         this.setState(this.meboz);
         this.maw.kybe(this._name,new function(param1:Object):void
         {
            var _loc3_:Function = null;
            if(param1)
            {
                  setState(initialState);
                  reportError(param1,_callbacks);
                  return;
            }
            dispatch(_preTransitionEvent);
            dispatch(_transitionEvent);
            setState(_finalState);
            var _loc2_:Array = _callbacks.concat();
            _callbacks.length=0;
            for each (_loc3_ in _loc2_)
            {
                  safelyCallBack(_loc3_,null,_name);
            }
            dispatch(_postTransitionEvent);
            return;
            },this.pufome);
            return;
      }

      private function jukuc() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.ciw.length>0&&this.ciw.indexOf(this.rot.state)==-1;
      }

      private function setState(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      private function dispatch(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if((param1)&&(this.rot.hasEventListener(param1)))
         {
            this.rot.dispatchEvent(new Gejoqolu(param1));
         }
         return;
      }

      private function reportError(param1:Object, param2:Array=null) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Gejoqolu = null;
         var _loc5_:Function = null;
         var _loc3_:Error = param1 is Error?param1 as Error:new Error(param1);
         if(this.rot.hasEventListener(Gejoqolu.ERROR))
         {
            _loc4_=new Gejoqolu(Gejoqolu.ERROR);
            _loc4_.error=_loc3_;
            this.rot.dispatchEvent(_loc4_);
            if(param2)
            {
               for each (_loc5_ in param2)
               {
               }
               param2.length=0;
            }
            return;
         }
         throw _loc3_;
      }
   }
[/CLASS]
}