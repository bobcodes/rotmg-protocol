package vyko
{
   import qypajun.Byjytydon;
   import __AS3__.vec.Vector;
   import qypajun.Gaz;
   import hegasin.Qaqykuby;
   import dyca.Mes;
   import flash.events.Event;


   public class Zucyq extends Object
   {
      public function Zucyq(param1:Byjytydon, param2:Qaqykuby, param3:Mes, param4:Class) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super();
         this.kiz=param1;
         this.pilyteno=param2;
         this.vybility=param3.dybi();
         this.fov=param4;
         this._factory=new Wazecu(this.vybility);
         return;
      }

      private var kiz:Byjytydon;

      private var zenupi:Vector.<Gaz>;

      private var pilyteno:Qaqykuby;

      private var vybility:Mes;

      private var fov:Class;

      private var _factory:Wazecu;

      public function execute(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Class = param1["constructor"] as Class;
         if(this.pasoba(_loc2_))
         {
            this.kare(param1,_loc2_);
         }
         return;
      }

      private function pasoba(param1:Class) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !this.fov||param1==this.fov;
      }

      private function lesa(param1:Class) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return !(param1==Event);
      }

      private function kimocewow(param1:Event, param2:Class) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.vybility.map(Event).pylo(param1);
         if(this.lesa(param2))
         {
            this.vybility.map((this.fov)||(param2)).pylo(param1);
         }
         return;
      }

      private function gebo(param1:Class) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vybility.ricelira(Event);
         if(this.lesa(param1))
         {
            this.vybility.ricelira((this.fov)||(param1));
         }
         return;
      }

      private function kare(param1:Event, param2:Class) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Object = null;
         var _loc4_:Gaz = this.pilyteno.ryvulavaj;
         while(_loc4_)
         {
            _loc4_.fuhe();
            this.kimocewow(param1,param2);
            _loc3_=this._factory.create(_loc4_);
            this.gebo(param2);
            if(_loc3_)
            {
               this.zavela(_loc4_);
               _loc3_.execute();
            }
            _loc4_=_loc4_.next;
         }
         return;
      }

      private function zavela(param1:Gaz) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1.wokijyp)
         {
            this.kiz.wozohyk(param1);
         }
         return;
      }
   }

}