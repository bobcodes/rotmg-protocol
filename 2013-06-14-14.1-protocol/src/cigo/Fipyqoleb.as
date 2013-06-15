package cigo
{
   import flash.events.EventDispatcher;
   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Fipyqoleb extends EventDispatcher
   {
      public function Fipyqoleb() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const _bindings:Vector.<Docekar> = new Vector.<Docekar>();

      public function get kugimet() : Vector.<Docekar> {
         return this._bindings;
      }

      private const pyvug:Vector.<Docekar> = new Vector.<Docekar>();

      public function get byc() : Vector.<Docekar> {
         return this.pyvug;
      }

      private const _bindingByContainer:Dictionary = new Dictionary();

      public function joderihuz(param1:DisplayObjectContainer) : Docekar {
         return this._bindingByContainer[param1]=(this._bindingByContainer[param1])||(this.nimavuw(param1));
      }

      public function zyvyzecad(param1:DisplayObjectContainer) : Docekar {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Docekar = this._bindingByContainer[param1];
         return _loc2_;
      }

      public function raciguly(param1:DisplayObject) : Docekar {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Docekar = null;
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

      public function jopi(param1:DisplayObjectContainer) : Docekar {
         return this._bindingByContainer[param1];
      }

      private function nimavuw(param1:DisplayObjectContainer) : Docekar {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Docekar = null;
         var _loc2_:Docekar = new Docekar(param1);
         this._bindings.push(_loc2_);
         _loc2_.addEventListener(Tyweraqe.peceby,this.vydemy);
         _loc2_.parent=this.raciguly(param1);
         if(_loc2_.parent==null)
         {
            this.mop(_loc2_);
         }
         for each (_loc3_ in this._bindingByContainer)
         {
            if(param1.contains(_loc3_.container))
            {
               if(!_loc3_.parent)
               {
                  this.sivodis(_loc3_);
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
         dispatchEvent(new Pipocy(Pipocy.zav,_loc2_.container));
         return _loc2_;
      }

      private function saciboh(param1:Docekar) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Docekar = null;
         GlobalNotificationActionte this._bindingByContainer[[param1.container]];
         var _loc2_:int = this._bindings.indexOf(param1);
         this._bindings.splice(_loc2_,1);
         param1.removeEventListener(Tyweraqe.peceby,this.vydemy);
         if(!param1.parent)
         {
            this.sivodis(param1);
         }
         for each (_loc3_ in this._bindingByContainer)
         {
            if(_loc3_.parent==param1)
            {
               _loc3_.parent=param1.parent;
               if(!_loc3_.parent)
               {
                  this.mop(_loc3_);
               }
            }
         }
         dispatchEvent(new Pipocy(Pipocy.jajah,param1.container));
         return;
      }

      private function mop(param1:Docekar) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.pyvug.push(param1);
         dispatchEvent(new Pipocy(Pipocy.mema,param1.container));
         return;
      }

      private function sivodis(param1:Docekar) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.pyvug.indexOf(param1);
         this.pyvug.splice(_loc2_,1);
         dispatchEvent(new Pipocy(Pipocy.masac,param1.container));
         return;
      }

      private function vydemy(param1:Tyweraqe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.saciboh(param1.target as Docekar);
         return;
      }
   }

}