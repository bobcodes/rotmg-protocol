package tinava
{
[CLASS17]   import flash.utils.getQualifiedClassName;
   import flash.errors.IllegalOperationError;


   public class Busake extends Object implements Pysu
   {
      public function Busake(... rest) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fin=Tyweti.NIL;
         super();
         this.valueClasses=rest.length==1&&rest[0] is Array?rest[0]:rest;
         return;
      }

      protected var qopov:Array;

      protected var fin:Tyweti;

      public function get valueClasses() : Array {
         return this.qopov;
      }

      public function set valueClasses(param1:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.qopov=param1?param1.slice():[];
         var _loc2_:int = this.qopov.length;
         while(_loc2_--)
         {
            if(!(this.qopov[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: "+"item at index "+_loc2_+" should be a Class but was:<"+this.qopov[_loc2_]+">."+getQualifiedClassName(this.qopov[_loc2_]));
            }
            else
            {
               continue;
            }
         }
         return;
      }

      public function get pylyzy() : uint {
         return this.fin.length;
      }

      public function addOnce(param1:Function) : Wusozuve {
         return this.kum(param1,true);
      }

      public function remove(param1:Function) : Wusozuve {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Wusozuve = this.fin.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.fin=this.fin.menuraqy(param1);
         return _loc2_;
      }

      public function removeAll() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.fin=Tyweti.NIL;
         return;
      }

      public function dispatch(... rest) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:int = this.qopov.length;
         var _loc3_:int = rest.length;
         if(_loc3_<_loc2_)
         {
            throw new ArgumentError("Incorrect number of arguments. "+"Expected at least "+_loc2_+" but received "+_loc3_+".");
         }
         else
         {
            _loc4_=0;
            while(_loc4_<_loc2_)
            {
               if(rest[_loc4_] is this.qopov[_loc4_]||rest[_loc4_]===null)
               {
                  _loc4_++;
                  continue;
               }
               throw new ArgumentError("Value object <"+rest[_loc4_]+"> is not an instance of <"+this.qopov[_loc4_]+">.");
            }
            _loc5_=this.fin;
            if(_loc5_.nonEmpty)
            {
               while(_loc5_.nonEmpty)
               {
                  _loc5_.bufitot.execute(rest);
                  _loc5_=_loc5_.tafumapoq;
               }
            }
            return;
         }
      }

      protected function kum(param1:Function, param2:Boolean=false) : Wusozuve {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Wusozuve = null;
         if(this.rada(param1,param2))
         {
            _loc3_=new Slot(param1,this,param2);
            this.fin=this.fin.prepend(_loc3_);
            return _loc3_;
         }
         return this.fin.find(param1);
      }

      protected function rada(param1:Function, param2:Boolean) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!this.fin.nonEmpty)
         {
            return true;
         }
         var _loc3_:Wusozuve = this.fin.find(param1);
         if(!_loc3_)
         {
            return true;
         }
         if(_loc3_.once!=param2)
         {
            throw new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first.");
         }
         else
         {
            return false;
         }
      }
   }
[/CLASS]
}