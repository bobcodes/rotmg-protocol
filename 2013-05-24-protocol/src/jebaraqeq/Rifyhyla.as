package jebaraqeq
{
   import flash.events.EventDispatcher;
   import komawowag.Tojilove;
   import komawowag.Cahi;
   import flash.utils.Dictionary;
   import komawowag.Kuzyw;
   import flash.events.IEventDispatcher;


   public class Rifyhyla extends EventDispatcher implements Tojilove
   {
      public function Rifyhyla(param1:Object) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.hahu=param1;
         this.bem();
         return;
      }

      private var _state:String = "uninitialized";

      public function get state() : String {
         return this._state;
      }

      private var hahu:Object;

      public function get target() : Object {
         return this.hahu;
      }

      public function get initialized() : Boolean {
         var _loc1_:* = true;
         var _loc2_:* = false;
         return !(this._state==Cahi.betigym)&&!(this._state==Cahi.mejub);
      }

      public function get active() : Boolean {
         return this._state==Cahi.vunufat;
      }

      public function get suspended() : Boolean {
         return this._state==Cahi.boty;
      }

      public function get destroyed() : Boolean {
         return this._state==Cahi.mekeje;
      }

      private const tinyqydyq:Dictionary = new Dictionary();

      private var nalywedy:int;

      private var buco:Wuq;

      private var cek:Wuq;

      private var jiz:Wuq;

      private var lyq:Wuq;

      public function initialize(param1:Function=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buco.enter(param1);
         return;
      }

      public function suspend(param1:Function=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cek.enter(param1);
         return;
      }

      public function resume(param1:Function=null) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jiz.enter(param1);
         return;
      }

      public function destroy(param1:Function=null) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lyq.enter(param1);
         return;
      }

      public function fymer(param1:Function) : Tojilove {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.buco.pywehyf(param1);
         return this;
      }

      public function kytufo(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cek.pywehyf(param1);
         return this;
      }

      public function ziweh(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jiz.pywehyf(param1);
         return this;
      }

      public function fagufydy(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lyq.pywehyf(param1);
         return this;
      }

      public function ziwefidy(param1:Function) : Tojilove {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Kuzyw.hyga,this.ziv(param1,true));
         return this;
      }

      public function seza(param1:Function) : Tojilove {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Kuzyw.vani,this.ziv(param1));
         return this;
      }

      public function cekuk(param1:Function) : Tojilove {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Kuzyw.gacopo,this.ziv(param1));
         return this;
      }

      public function mapuzojo(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Kuzyw.dunijozet,this.ziv(param1,true));
         return this;
      }

      public function rewyji(param1:Function) : Tojilove {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.addEventListener(Kuzyw.veqiqo,this.ziv(param1,true));
         return this;
      }

      public function beje(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Kuzyw.lisibomuw,this.ziv(param1));
         return this;
      }

      public function zoku(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Kuzyw.nir,this.ziv(param1));
         return this;
      }

      public function kanewyve(param1:Function) : Tojilove {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.addEventListener(Kuzyw.qitaqihy,this.ziv(param1,true));
         return this;
      }

      override public function addEventListener(param1:String, param2:Function, param3:Boolean=false, param4:int=0, param5:Boolean=false) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var param4:int = this.mocop(param1,param4);
         super.addEventListener(param1,param2,param3,param4,param5);
         return;
      }

      function zogokuqek(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this._state==param1)
         {
            return;
         }
         this._state=param1;
         return;
      }

      function muqoqoq(... rest) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:String = null;
         for each (_loc2_ in rest)
         {
            this.tinyqydyq[_loc2_]=true;
         }
         return;
      }

      private function bem() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buco=new Wuq(Kuzyw.dyqycazuz,this).fromStates(Cahi.betigym).toStates(Cahi.mejub,Cahi.vunufat).withEvents(Kuzyw.dyqycazuz,Kuzyw.hyga,Kuzyw.veqiqo);
         this.cek=new Wuq(Kuzyw.tujuv,this).fromStates(Cahi.vunufat).toStates(Cahi.foluqarav,Cahi.boty).withEvents(Kuzyw.tujuv,Kuzyw.vani,Kuzyw.lisibomuw).inReverse();
         this.jiz=new Wuq(Kuzyw.biwudo,this).fromStates(Cahi.boty).toStates(Cahi.cavutyq,Cahi.vunufat).withEvents(Kuzyw.biwudo,Kuzyw.gacopo,Kuzyw.nir);
         this.lyq=new Wuq(Kuzyw.bupiq,this).fromStates(Cahi.boty,Cahi.vunufat).toStates(Cahi.bogod,Cahi.mekeje).withEvents(Kuzyw.bupiq,Kuzyw.dunijozet,Kuzyw.qitaqihy).inReverse();
         return;
      }

      private function mocop(param1:String, param2:int) : int {
         var _loc5_:* = false;
         var _loc6_:* = true;
         return param2==0&&(this.tinyqydyq[param1])?this.nalywedy++:param2;
      }

      private function ziv(param1:Function, param2:Boolean=false) : Function {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
               return new function(param1:Kuzyw):void
               {
                  handler(param1.type);
                  return;
               };
            }
            return new function(param1:Kuzyw):void
            {
               handler();
               return;
            };
         }
      }
   }

}