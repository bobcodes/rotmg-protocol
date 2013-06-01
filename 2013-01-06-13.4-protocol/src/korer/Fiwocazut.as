package korer
{
[CLASS1011]   import flash.events.EventDispatcher;
   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Fiwocazut extends EventDispatcher
   {
      public function Fiwocazut() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const _bindings:Vector.<Gonawegyn> = new Vector.<Gonawegyn>();

      public function get tavu() : Vector.<Gonawegyn> {
         return this._bindings;
      }

      private const gep:Vector.<Gonawegyn> = new Vector.<Gonawegyn>();

      public function get lujec() : Vector.<Gonawegyn> {
         return this.gep;
      }

      private const _bindingByContainer:Dictionary = new Dictionary();

      public function bypos(param1:DisplayObjectContainer) : Gonawegyn {
         return this._bindingByContainer[param1]=(this._bindingByContainer[param1])||(this.tyroduras(param1));
      }

      public function dezemeri(param1:DisplayObjectContainer) : Gonawegyn {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Gonawegyn = this._bindingByContainer[param1];
         return _loc2_;
      }

      public function kyhoh(param1:DisplayObject) : Gonawegyn {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Gonawegyn = null;
         var _loc2_:DisplayObjectContainer = param1.parent;
         while(_loc2_)
         {
            _loc3_=this._bindingByContainer[_loc2_];
            if(_loc3_)
            {
               return _loc3_;
            }
            _loc2_=_loc2_.parent;
         }
         return null;
      }

      public function wyri(param1:DisplayObjectContainer) : Gonawegyn {
         return this._bindingByContainer[param1];
      }

      private function tyroduras(param1:DisplayObjectContainer) : Gonawegyn {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Gonawegyn = null;
         var _loc2_:Gonawegyn = new Gonawegyn(param1);
         this._bindings.push(_loc2_);
         _loc2_.addEventListener(Jikusoh.negag,this.nilafeq);
         _loc2_.parent=this.kyhoh(param1);
         if(_loc2_.parent==null)
         {
            this.vujo(_loc2_);
         }
         for each (_loc3_ in this._bindingByContainer)
         {
            if(param1.contains(_loc3_.container))
            {
               if(!_loc3_.parent)
               {
                  this.kowi(_loc3_);
                  _loc3_.parent=_loc2_;
               }
               else
               {
                  if(!param1.contains(_loc3_.parent.container))
                  {
                     _loc3_.parent=_loc2_;
                  }
               }
            }
         }
         dispatchEvent(new Kezihe(Kezihe.wowow,_loc2_.container));
         return _loc2_;
      }

      private function pys(param1:Gonawegyn) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Gonawegyn = null;
         delete this._bindingByContainer[[param1.container]];
         var _loc2_:int = this._bindings.indexOf(param1);
         this._bindings.splice(_loc2_,1);
         param1.removeEventListener(Jikusoh.negag,this.nilafeq);
         if(!param1.parent)
         {
            this.kowi(param1);
         }
         for each (_loc3_ in this._bindingByContainer)
         {
            if(_loc3_.parent==param1)
            {
               _loc3_.parent=param1.parent;
               if(!_loc3_.parent)
               {
                  this.vujo(_loc3_);
               }
            }
         }
         dispatchEvent(new Kezihe(Kezihe.mynyhyqo,param1.container));
         return;
      }

      private function vujo(param1:Gonawegyn) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.gep.push(param1);
         dispatchEvent(new Kezihe(Kezihe.vomy,param1.container));
         return;
      }

      private function kowi(param1:Gonawegyn) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.gep.indexOf(param1);
         this.gep.splice(_loc2_,1);
         dispatchEvent(new Kezihe(Kezihe.merepuf,param1.container));
         return;
      }

      private function nilafeq(param1:Jikusoh) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.pys(param1.target as Gonawegyn);
         return;
      }
   }
[/CLASS]
}