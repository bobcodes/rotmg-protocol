package fozo
{
   import flash.events.EventDispatcher;
   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import flash.display.DisplayObjectContainer;
   import flash.display.DisplayObject;


   public class Zajys extends EventDispatcher
   {
      public function Zajys() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const _bindings:Vector.<Butyk> = new Vector.<Butyk>();

      public function get zydifeha() : Vector.<Butyk> {
         return this._bindings;
      }

      private const laresa:Vector.<Butyk> = new Vector.<Butyk>();

      public function get qyv() : Vector.<Butyk> {
         return this.laresa;
      }

      private const _bindingByContainer:Dictionary = new Dictionary();

      public function neje(param1:DisplayObjectContainer) : Butyk {
         return this._bindingByContainer[param1]=(this._bindingByContainer[param1])||(this.mila(param1));
      }

      public function mego(param1:DisplayObjectContainer) : Butyk {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Butyk = this._bindingByContainer[param1];
         return _loc2_;
      }

      public function wafuweb(param1:DisplayObject) : Butyk {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Butyk = null;
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

      public function sijymad(param1:DisplayObjectContainer) : Butyk {
         return this._bindingByContainer[param1];
      }

      private function mila(param1:DisplayObjectContainer) : Butyk {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Butyk = null;
         var _loc2_:Butyk = new Butyk(param1);
         this._bindings.push(_loc2_);
         _loc2_.addEventListener(Vyt.hil,this.kewahopi);
         _loc2_.parent=this.wafuweb(param1);
         if(_loc2_.parent==null)
         {
            this.zawysubif(_loc2_);
         }
         for each (_loc3_ in this._bindingByContainer)
         {
            if(param1.contains(_loc3_.container))
            {
               if(!_loc3_.parent)
               {
                  this.sysifirim(_loc3_);
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
         dispatchEvent(new Hoqyf(Hoqyf.tebowomyq,_loc2_.container));
         return _loc2_;
      }

      private function lupemyni(param1:Butyk) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Butyk = null;
         delete this._bindingByContainer[[param1.container]];
         var _loc2_:int = this._bindings.indexOf(param1);
         this._bindings.splice(_loc2_,1);
         param1.removeEventListener(Vyt.hil,this.kewahopi);
         if(!param1.parent)
         {
            this.sysifirim(param1);
         }
         for each (_loc3_ in this._bindingByContainer)
         {
            if(_loc3_.parent==param1)
            {
               _loc3_.parent=param1.parent;
               if(!_loc3_.parent)
               {
                  this.zawysubif(_loc3_);
               }
            }
         }
         dispatchEvent(new Hoqyf(Hoqyf.wimug,param1.container));
         return;
      }

      private function zawysubif(param1:Butyk) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.laresa.push(param1);
         dispatchEvent(new Hoqyf(Hoqyf.vaviguq,param1.container));
         return;
      }

      private function sysifirim(param1:Butyk) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:int = this.laresa.indexOf(param1);
         this.laresa.splice(_loc2_,1);
         dispatchEvent(new Hoqyf(Hoqyf.nesicy,param1.container));
         return;
      }

      private function kewahopi(param1:Vyt) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.lupemyni(param1.target as Butyk);
         return;
      }
   }

}