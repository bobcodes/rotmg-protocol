package wuhafyv
{
[CLASS1795]   import sogi.Tuwenaq;
   import __AS3__.vec.Vector;
   import sogi.Vydosyb;
   import few.Qego;
   import pogefeqeh.Wahovy;
   import flash.events.Event;


   public class Medijutow extends Object
   {
      public function Medijutow(param1:Tuwenaq, param2:Qego, param3:Wahovy, param4:Class) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.jimiq=param1;
         this.zucucy=param2;
         this.qod=param3.zawan();
         this.jabigevi=param4;
         this._factory=new Qyvakuzab(this.qod);
         return;
      }

      private var jimiq:Tuwenaq;

      private var geqas:Vector.<Vydosyb>;

      private var zucucy:Qego;

      private var qod:Wahovy;

      private var jabigevi:Class;

      private var _factory:Qyvakuzab;

      public function execute(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = param1["constructor"] as Class;
         if(this.hoqiqadu(_loc2_))
         {
            this.suzoq(param1,_loc2_);
         }
         return;
      }

      private function hoqiqadu(param1:Class) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !this.jabigevi||param1==this.jabigevi;
      }

      private function jobeta(param1:Class) : Boolean {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return !(param1==Event);
      }

      private function kakymyp(param1:Event, param2:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qod.map(Event).zoru(param1);
         if(this.jobeta(param2))
         {
            this.qod.map((this.jabigevi)||(param2)).zoru(param1);
         }
         return;
      }

      private function wopuv(param1:Class) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qod.gihacas(Event);
         if(this.jobeta(param1))
         {
            this.qod.gihacas((this.jabigevi)||(param1));
         }
         return;
      }

      private function suzoq(param1:Event, param2:Class) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Object = null;
         var _loc4_:Vydosyb = this.zucucy.bufitot;
         while(_loc4_)
         {
            _loc4_.vavog();
            this.kakymyp(param1,param2);
            _loc3_=this._factory.create(_loc4_);
            this.wopuv(param2);
            if(_loc3_)
            {
               this.neb(_loc4_);
               _loc3_.execute();
            }
            _loc4_=_loc4_.next;
         }
         return;
      }

      private function neb(param1:Vydosyb) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.mateqebew)
         {
            this.jimiq.cove(param1);
         }
         return;
      }
   }
[/CLASS]
}