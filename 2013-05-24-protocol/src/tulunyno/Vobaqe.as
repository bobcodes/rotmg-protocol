package tulunyno
{
   import flash.utils.getQualifiedClassName;
   import flash.errors.IllegalOperationError;


   public class Vobaqe extends Object implements Sabudaweb
   {
      public function Vobaqe(... rest) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hor=Sutoqowa.NIL;
         super();
         this.valueClasses=rest.length==1&&rest[0] is Array?rest[0]:rest;
         return;
      }

      protected var jedu:Array;

      protected var hor:Sutoqowa;

      public function get valueClasses() : Array {
         return this.jedu;
      }

      public function set valueClasses(param1:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.jedu=param1?param1.slice():[];
         var _loc2_:int = this.jedu.length;
         while(_loc2_--)
         {
            if(!(this.jedu[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: "+"item at index "+_loc2_+" should be a Class but was:<"+this.jedu[_loc2_]+">."+getQualifiedClassName(this.jedu[_loc2_]));
            }
            else
            {
               continue;
            }
         }
         return;
      }

      public function get getLength() : uint {
         return this.hor.length;
      }

      public function addOnce(param1:Function) : Dovihyz {
         return this.ceryc(param1,true);
      }

      public function remove(param1:Function) : Dovihyz {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dovihyz = this.hor.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.hor=this.hor.pyj(param1);
         return _loc2_;
      }

      public function removeAll() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.hor=Sutoqowa.NIL;
         return;
      }

      public function dispatch(... rest) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:int = this.jedu.length;
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
               if(rest[_loc4_] is this.jedu[_loc4_]||rest[_loc4_]===null)
               {
                  _loc4_++;
                  continue;
               }
               throw new ArgumentError("Value object <"+rest[_loc4_]+"> is not an instance of <"+this.jedu[_loc4_]+">.");
            }
            _loc5_=this.hor;
            if(_loc5_.nonEmpty)
            {
               while(_loc5_.nonEmpty)
               {
                  _loc5_.naril.execute(rest);
                  _loc5_=_loc5_.wukycasew;
               }
            }
            return;
         }
      }

      protected function ceryc(param1:Function, param2:Boolean=false) : Dovihyz {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Dovihyz = null;
         if(this.dajokogi(param1,param2))
         {
            _loc3_=new Slot(param1,this,param2);
            this.hor=this.hor.prepend(_loc3_);
            return _loc3_;
         }
         return this.hor.find(param1);
      }

      protected function dajokogi(param1:Function, param2:Boolean) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!this.hor.nonEmpty)
         {
            return true;
         }
         var _loc3_:Dovihyz = this.hor.find(param1);
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

}