package donaqyzas
{
   import flash.events.EventDispatcher;
   import hunavefeg.Ramiri;
   import hunavefeg.Bykife;
   import flash.utils.Dictionary;
   import hunavefeg.Ryt;
   import flash.events.IEventDispatcher;


   public class Syqurovij extends EventDispatcher implements Ramiri
   {
      public function Syqurovij(param1:Object) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.rafek=param1;
         this.hobeced();
         return;
      }

      private var _state:String = "uninitialized";

      public function get state() : String {
         return this._state;
      }

      private var rafek:Object;

      public function get target() : Object {
         return this.rafek;
      }

      public function get initialized() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this._state==Bykife.potez)&&!(this._state==Bykife.nuga);
      }

      public function get active() : Boolean {
         return this._state==Bykife.mamefejyt;
      }

      public function get suspended() : Boolean {
         return this._state==Bykife.dipit;
      }

      public function get destroyed() : Boolean {
         return this._state==Bykife.wewodudub;
      }

      private const rejipyfo:Dictionary = new Dictionary();

      private var tequdel:int;

      private var moto:Siq;

      private var kabivo:Siq;

      private var poru:Siq;

      private var dew:Siq;

      public function initialize(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.moto.enter(param1);
         return;
      }

      public function suspend(param1:Function=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kabivo.enter(param1);
         return;
      }

      public function resume(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.poru.enter(param1);
         return;
      }

      public function destroy(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dew.enter(param1);
         return;
      }

      public function tad(param1:Function) : Ramiri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.moto.dozahi(param1);
         return this;
      }

      public function vudelok(param1:Function) : Ramiri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kabivo.dozahi(param1);
         return this;
      }

      public function pemosikeh(param1:Function) : Ramiri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.poru.dozahi(param1);
         return this;
      }

      public function rem(param1:Function) : Ramiri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.dew.dozahi(param1);
         return this;
      }

      public function cityb(param1:Function) : Ramiri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Ryt.favupun,this.jeta(param1,true));
         return this;
      }

      public function hakacyw(param1:Function) : Ramiri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Ryt.fep,this.jeta(param1));
         return this;
      }

      public function jujane(param1:Function) : Ramiri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Ryt.tuketurac,this.jeta(param1));
         return this;
      }

      public function cybif(param1:Function) : Ramiri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Ryt.liw,this.jeta(param1,true));
         return this;
      }

      public function pypygug(param1:Function) : Ramiri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Ryt.bymeveh,this.jeta(param1,true));
         return this;
      }

      public function cyq(param1:Function) : Ramiri {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Ryt.bocomak,this.jeta(param1));
         return this;
      }

      public function qecavijip(param1:Function) : Ramiri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Ryt.lefi,this.jeta(param1));
         return this;
      }

      public function zuso(param1:Function) : Ramiri {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Ryt.fijefupy,this.jeta(param1,true));
         return this;
      }

      override public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var param4:int = this.rohofe(param1,param4);
         super.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      function ceqesy(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this._state==param1)
         {
            return;
         }
         this._state=param1;
         return;
      }

      function fuji(... rest) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = null;
         for each (_loc2_ in rest)
         {
            this.rejipyfo[_loc2_]=true;
         }
         return;
      }

      private function hobeced() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.moto=new Siq(Ryt.negujig,this).fromStates(Bykife.potez).toStates(Bykife.nuga,Bykife.mamefejyt).withEvents(Ryt.negujig,Ryt.favupun,Ryt.bymeveh);
         this.kabivo=new Siq(Ryt.hyjesot,this).fromStates(Bykife.mamefejyt).toStates(Bykife.jinilab,Bykife.dipit).withEvents(Ryt.hyjesot,Ryt.fep,Ryt.bocomak).inReverse();
         this.poru=new Siq(Ryt.qiqiv,this).fromStates(Bykife.dipit).toStates(Bykife.fedamote,Bykife.mamefejyt).withEvents(Ryt.qiqiv,Ryt.tuketurac,Ryt.lefi);
         this.dew=new Siq(Ryt.zod,this).fromStates(Bykife.dipit,Bykife.mamefejyt).toStates(Bykife.bodadup,Bykife.wewodudub).withEvents(Ryt.zod,Ryt.liw,Ryt.fijefupy).inReverse();
         return;
      }

      private function rohofe(param1:String, param2:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return param2==0&&(this.rejipyfo[param1])?this.tequdel++:param2;
      }

      private function jeta(param1:Function, param2:Boolean=false) : Function {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var handler:Function = param1;
         var once:Boolean = param2;
         if(handler.length>1)
         {
            throw new Error("When and After handlers must accept 0-1 arguments");
         }
         else
         {
            if(handler.length==1)
            {
               return new function(param1:Ryt):void
               {
                  handler(param1.type);
                  return;
               };
            }
            return new function(param1:Ryt):void
            {
               handler();
               return;
            };
         }
      }
   }

}