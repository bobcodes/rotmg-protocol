package korer
{
[CLASS1010]   import flash.events.EventDispatcher;
   import suzu.Naneciry;
   import __AS3__.vec.Vector;
   import flash.display.DisplayObjectContainer;
   import suzu.Ved;


   public class Focy extends EventDispatcher implements Naneciry
   {
      public function Focy(param1:Fiwocazut) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.include=param1;
         return;
      }

      private const poja:Vector.<DisplayObjectContainer> = new Vector.<DisplayObjectContainer>();

      public function get licivy() : Vector.<DisplayObjectContainer> {
         return this.poja;
      }

      private const _handlers:Vector.<Ved> = new Vector.<Ved>();

      private var include:Fiwocazut;

      public function bypos(param1:DisplayObjectContainer) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Ved = null;
         if(!this.nise(param1))
         {
            return;
         }
         this.poja.push(param1);
         for each (_loc2_ in this._handlers)
         {
            this.include.bypos(param1).moson(_loc2_);
         }
         dispatchEvent(new Bijut(Bijut.wowow,param1));
         return;
      }

      public function dezemeri(param1:DisplayObjectContainer) : void {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:Ved = null;
         var _loc2_:int = this.poja.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this.poja.splice(_loc2_,1);
         var _loc3_:Gonawegyn = this.include.wyri(param1);
         for each (_loc4_ in this._handlers)
         {
            _loc3_.wary(_loc4_);
         }
         dispatchEvent(new Bijut(Bijut.mynyhyqo,param1));
         return;
      }

      public function fijyhefuh(param1:Ved) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:DisplayObjectContainer = null;
         if(this._handlers.indexOf(param1)!=-1)
         {
            return;
         }
         this._handlers.push(param1);
         for each (_loc2_ in this.poja)
         {
            this.include.bypos(_loc2_).moson(param1);
         }
         dispatchEvent(new Bijut(Bijut.tysefyq,null,param1));
         return;
      }

      public function joder(param1:Ved) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:DisplayObjectContainer = null;
         var _loc2_:int = this._handlers.indexOf(param1);
         if(_loc2_==-1)
         {
            return;
         }
         this._handlers.splice(_loc2_,1);
         for each (_loc3_ in this.poja)
         {
            this.include.wyri(_loc3_).wary(param1);
         }
         dispatchEvent(new Bijut(Bijut.petafedi,null,param1));
         return;
      }

      public function gabyga() : void {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:Gonawegyn = null;
         var _loc3_:Ved = null;
         for each (_loc1_ in this.poja)
         {
            _loc2_=this.include.wyri(_loc1_);
            for each (_loc3_ in this._handlers)
            {
               _loc2_.wary(_loc3_);
            }
         }
         return;
      }

      private function nise(param1:DisplayObjectContainer) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:DisplayObjectContainer = null;
         for each (_loc2_ in this.poja)
         {
            if(param1==_loc2_)
            {
               return false;
            }
            if((_loc2_.contains(param1))||(param1.contains(_loc2_)))
            {
               throw new Error("Containers can not be nested");
            }
            else
            {
               continue;
            }
         }
         return true;
      }
   }
[/CLASS]
}