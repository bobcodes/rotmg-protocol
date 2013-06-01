package fomykuq
{
[CLASS138]   import flash.events.EventDispatcher;
   import bikyvym.Tysugujik;
   import bikyvym.Dilig;
   import flash.utils.Dictionary;
   import bikyvym.Gejoqolu;
   import flash.events.IEventDispatcher;


   public class Bupepi extends EventDispatcher implements Tysugujik
   {
      public function Bupepi(param1:Object) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.vur=param1;
         this.zyqumin();
         return;
      }

      private var _state:String = "uninitialized";

      public function get state() : String {
         return this._state;
      }

      private var vur:Object;

      public function get target() : Object {
         return this.vur;
      }

      public function get initialized() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this._state==Dilig.rurifu)&&!(this._state==Dilig.rev);
      }

      public function get active() : Boolean {
         return this._state==Dilig.nir;
      }

      public function get suspended() : Boolean {
         return this._state==Dilig.pojyfu;
      }

      public function get destroyed() : Boolean {
         return this._state==Dilig.fop;
      }

      private const nabirowu:Dictionary = new Dictionary();

      private var tadi:int;

      private var kada:Kekikaf;

      private var wopyhil:Kekikaf;

      private var melofaci:Kekikaf;

      private var gibe:Kekikaf;

      public function initialize(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.kada.enter(param1);
         return;
      }

      public function suspend(param1:Function=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wopyhil.enter(param1);
         return;
      }

      public function resume(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.melofaci.enter(param1);
         return;
      }

      public function destroy(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gibe.enter(param1);
         return;
      }

      public function ton(param1:Function) : Tysugujik {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.kada.hik(param1);
         return this;
      }

      public function zilesadyk(param1:Function) : Tysugujik {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.wopyhil.hik(param1);
         return this;
      }

      public function byre(param1:Function) : Tysugujik {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.melofaci.hik(param1);
         return this;
      }

      public function dypegu(param1:Function) : Tysugujik {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gibe.hik(param1);
         return this;
      }

      public function zubyfi(param1:Function) : Tysugujik {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Gejoqolu.nyhyginul,this.pafah(param1,true));
         return this;
      }

      public function tigo(param1:Function) : Tysugujik {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Gejoqolu.hopelih,this.pafah(param1));
         return this;
      }

      public function caqoqura(param1:Function) : Tysugujik {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Gejoqolu.ninuc,this.pafah(param1));
         return this;
      }

      public function hypyry(param1:Function) : Tysugujik {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Gejoqolu.wywihaw,this.pafah(param1,true));
         return this;
      }

      public function kan(param1:Function) : Tysugujik {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Gejoqolu.lideb,this.pafah(param1,true));
         return this;
      }

      public function bypef(param1:Function) : Tysugujik {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Gejoqolu.gohogy,this.pafah(param1));
         return this;
      }

      public function voziji(param1:Function) : Tysugujik {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Gejoqolu.nedim,this.pafah(param1));
         return this;
      }

      public function bijyfopuw(param1:Function) : Tysugujik {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Gejoqolu.nemudywy,this.pafah(param1,true));
         return this;
      }

      override public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var param4:int = this.fudus(param1,param4);
         super.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      function buma(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this._state==param1)
         {
            return;
         }
         this._state=param1;
         return;
      }

      function zyje(... rest) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for each (_loc2_ in rest)
         {
            this.nabirowu[_loc2_]=true;
         }
         return;
      }

      private function zyqumin() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.kada=new Kekikaf(Gejoqolu.rokuzahy,this).fromStates(Dilig.rurifu).toStates(Dilig.rev,Dilig.nir).withEvents(Gejoqolu.rokuzahy,Gejoqolu.nyhyginul,Gejoqolu.lideb);
         this.wopyhil=new Kekikaf(Gejoqolu.ducuw,this).fromStates(Dilig.nir).toStates(Dilig.temeripigy,Dilig.pojyfu).withEvents(Gejoqolu.ducuw,Gejoqolu.hopelih,Gejoqolu.gohogy).inReverse();
         this.melofaci=new Kekikaf(Gejoqolu.cafuve,this).fromStates(Dilig.pojyfu).toStates(Dilig.vobozobi,Dilig.nir).withEvents(Gejoqolu.cafuve,Gejoqolu.ninuc,Gejoqolu.nedim);
         this.gibe=new Kekikaf(Gejoqolu.powohidab,this).fromStates(Dilig.pojyfu,Dilig.nir).toStates(Dilig.fibu,Dilig.fop).withEvents(Gejoqolu.powohidab,Gejoqolu.wywihaw,Gejoqolu.nemudywy).inReverse();
         return;
      }

      private function fudus(param1:String, param2:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return param2==0&&(this.nabirowu[param1])?this.tadi++:param2;
      }

      private function pafah(param1:Function, param2:Boolean=false) : Function {
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
               return new function(param1:Gejoqolu):void
               {
                  handler(param1.type);
                  return;
               };
            }
            return new function(param1:Gejoqolu):void
            {
               handler();
               return;
            };
         }
      }
   }
[/CLASS]
}