package mukyrosu
{
   import flash.utils.getQualifiedClassName;
   import flash.errors.IllegalOperationError;


   public class Cisymifok extends Object implements Peq
   {
      public function Cisymifok(... rest) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.dyle=Syjagaqa.NIL;
         super();
         this.valueClasses=rest.length==1&&rest[0] is Array?rest[0]:rest;
         return;
      }

      protected var tubupebu:Array;

      protected var dyle:Syjagaqa;

      public function get valueClasses() : Array {
         return this.tubupebu;
      }

      public function set valueClasses(param1:Array) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.tubupebu=param1?param1.slice():[];
         var _loc2_:int = this.tubupebu.length;
         while(_loc2_--)
         {
            if(!(this.tubupebu[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: "+"item at index "+_loc2_+" should be a Class but was:<"+this.tubupebu[_loc2_]+">."+getQualifiedClassName(this.tubupebu[_loc2_]));
            }
            else
            {
               continue;
            }
         }
         return;
      }

      public function get kuzag() : uint {
         return this.dyle.length;
      }

      public function addOnce(param1:Function) : Depa {
         return this.huzo(param1,true);
      }

      public function remove(param1:Function) : Depa {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Depa = this.dyle.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.dyle=this.dyle.vomac(param1);
         return _loc2_;
      }

      public function removeAll() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.dyle=Syjagaqa.NIL;
         return;
      }

      public function dispatch(... rest) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:int = this.tubupebu.length;
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
               if(rest[_loc4_] is this.tubupebu[_loc4_]||rest[_loc4_]===null)
               {
                  _loc4_++;
                  continue;
               }
               throw new ArgumentError("Value object <"+rest[_loc4_]+"> is not an instance of <"+this.tubupebu[_loc4_]+">.");
            }
            _loc5_=this.dyle;
            if(_loc5_.nonEmpty)
            {
               while(_loc5_.nonEmpty)
               {
                  _loc5_.ryvulavaj.execute(rest);
                  _loc5_=_loc5_.qyr;
               }
            }
            return;
         }
      }

      protected function huzo(param1:Function, param2:Boolean=false) : Depa {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Depa = null;
         if(this.jynu(param1,param2))
         {
            _loc3_=new Slot(param1,this,param2);
            this.dyle=this.dyle.prepend(_loc3_);
            return _loc3_;
         }
         return this.dyle.find(param1);
      }

      protected function jynu(param1:Function, param2:Boolean) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!this.dyle.nonEmpty)
         {
            return true;
         }
         var _loc3_:Depa = this.dyle.find(param1);
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