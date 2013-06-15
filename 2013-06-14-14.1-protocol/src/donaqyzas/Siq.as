package donaqyzas
{
   import __AS3__.vec.Vector;
   import hunavefeg.Ryt;


   public class Siq extends Object
   {
      public function Siq(param1:String, param2:Syqurovij) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this._name=param1;
         this.kypiqow=param2;
         return;
      }

      private const kusyp:Vector.<String> = new Vector.<String>();

      private const jepyqibip:MessageDispatcher = new MessageDispatcher();

      private const _callbacks:Array = [];

      private var _name:String;

      private var kypiqow:Syqurovij;

      private var lam:String;

      private var _finalState:String;

      private var _preTransitionEvent:String;

      private var _transitionEvent:String;

      private var _postTransitionEvent:String;

      private var malu:Boolean;

      public function fromStates(... rest) : Siq {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         for each (_loc2_ in rest)
         {
            this.kusyp.push(_loc2_);
         }
         return this;
      }

      public function toStates(param1:String, param2:String) : Siq {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.lam=param1;
         this._finalState=param2;
         return this;
      }

      public function withEvents(param1:String, param2:String, param3:String) : Siq {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this._preTransitionEvent=param1;
         this._transitionEvent=param2;
         this._postTransitionEvent=param3;
         return this;
      }

      public function inReverse() : Siq {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.malu=true;
         this.kypiqow.fuji(this._preTransitionEvent,this._transitionEvent,this._postTransitionEvent);
         return this;
      }

      public function dozahi(param1:Function) : Siq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jepyqibip.jemur(this._name,param1);
         return this;
      }

      public function enter(param1:Function=null) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var initialState:String = null;
         var callback:Function = param1;
         if(this.kypiqow.state==this._finalState)
         {
            return;
         }
         if(this.kypiqow.state==this.lam)
         {
            return;
         }
         if(this.vik())
         {
            this.reportError("Invalid transition",[callback]);
            return;
         }
         initialState=this.kypiqow.state;
         this.setState(this.lam);
         this.jepyqibip.tyzekyzi(this._name,new function(param1:Object):void
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
            },this.malu);
            return;
      }

      private function vik() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.kusyp.length>0&&this.kusyp.indexOf(this.kypiqow.state)==-1;
      }

      private function setState(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return;
      }

      private function dispatch(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1)&&(this.kypiqow.hasEventListener(param1)))
         {
            this.kypiqow.dispatchEvent(new Ryt(param1));
         }
         return;
      }

      private function reportError(param1:Object, param2:Array=null) : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc4_:Ryt = null;
         var _loc5_:Function = null;
         var _loc3_:Error = param1 is Error?param1 as Error:new Error(param1);
         if(this.kypiqow.hasEventListener(Ryt.ERROR))
         {
            _loc4_=new Ryt(Ryt.ERROR);
            _loc4_.error=_loc3_;
            this.kypiqow.dispatchEvent(_loc4_);
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

}