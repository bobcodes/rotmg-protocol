package jebaraqeq
{
   import __AS3__.vec.Vector;
   import komawowag.Kuzyw;


   public class Wuq extends Object
   {
      public function Wuq(param1:String, param2:Rifyhyla) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this._name=param1;
         this.sezuze=param2;
         return;
      }

      private const lefihefa:Vector.<String> = new Vector.<String>();

      private const pidehyt:MessageDispatcher = new MessageDispatcher();

      private const _callbacks:Array = [];

      private var _name:String;

      private var sezuze:Rifyhyla;

      private var womynipil:String;

      private var _finalState:String;

      private var _preTransitionEvent:String;

      private var _transitionEvent:String;

      private var _postTransitionEvent:String;

      private var sowutyfo:Boolean;

      public function fromStates(... rest) : Wuq {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for each (_loc2_ in rest)
         {
            this.lefihefa.push(_loc2_);
         }
         return this;
      }

      public function toStates(param1:String, param2:String) : Wuq {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.womynipil=param1;
         this._finalState=param2;
         return this;
      }

      public function withEvents(param1:String, param2:String, param3:String) : Wuq {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this._preTransitionEvent=param1;
         this._transitionEvent=param2;
         this._postTransitionEvent=param3;
         return this;
      }

      public function inReverse() : Wuq {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.sowutyfo=true;
         this.sezuze.muqoqoq(this._preTransitionEvent,this._transitionEvent,this._postTransitionEvent);
         return this;
      }

      public function pywehyf(param1:Function) : Wuq {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pidehyt.qyzyn(this._name,param1);
         return this;
      }

      public function enter(param1:Function=null) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var initialState:String = null;
         var callback:Function = param1;
         if(this.sezuze.state==this._finalState)
         {
            return;
         }
         if(this.sezuze.state==this.womynipil)
         {
            return;
         }
         if(this.sitaquj())
         {
            this.reportError("Invalid transition",[callback]);
            return;
         }
         initialState=this.sezuze.state;
         this.setState(this.womynipil);
         this.pidehyt.cihisoqyk(this._name,new function(param1:Object):void
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
            },this.sowutyfo);
            return;
      }

      private function sitaquj() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return this.lefihefa.length>0&&this.lefihefa.indexOf(this.sezuze.state)==-1;
      }

      private function setState(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return;
      }

      private function dispatch(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if((param1)&&(this.sezuze.hasEventListener(param1)))
         {
            this.sezuze.dispatchEvent(new Kuzyw(param1));
         }
         return;
      }

      private function reportError(param1:Object, param2:Array=null) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Kuzyw = null;
         var _loc5_:Function = null;
         var _loc3_:Error = param1 is Error?param1 as Error:new Error(param1);
         if(this.sezuze.hasEventListener(Kuzyw.ERROR))
         {
            _loc4_=new Kuzyw(Kuzyw.ERROR);
            _loc4_.error=_loc3_;
            this.sezuze.dispatchEvent(_loc4_);
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