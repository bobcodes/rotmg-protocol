package gyzesuqu
{
   import flash.events.IEventDispatcher;
   import tulunyno.Sutoqowa;
   import flash.events.Event;
   import tulunyno.Dovihyz;
   import tulunyno.Slot;
   import flash.errors.IllegalOperationError;


   public class Tybabukyr extends Object implements Juve
   {
      public function Tybabukyr(param1:IEventDispatcher=null, param2:String="", param3:Class=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.hor=Sutoqowa.NIL;
         this.target=param1;
         this.byguzones=param2;
         this.eventClass=param3;
         return;
      }

      protected var hahu:IEventDispatcher;

      protected var jod:String;

      protected var piha:Class;

      protected var jedu:Array;

      protected var hor:Sutoqowa;

      public function get byguzones() : String {
         return this.jod;
      }

      public function set byguzones(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jod=param1;
         return;
      }

      public function get eventClass() : Class {
         return this.piha;
      }

      public function set eventClass(param1:Class) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piha=(param1)||(Event);
         this.jedu=[this.piha];
         return;
      }

      public function get valueClasses() : Array {
         return this.jedu;
      }

      public function set valueClasses(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.eventClass=(param1)&&param1.length>0?param1[0]:null;
         return;
      }

      public function get getLength() : uint {
         return this.hor.length;
      }

      public function get target() : IEventDispatcher {
         return this.hahu;
      }

      public function set target(param1:IEventDispatcher) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.hahu)
         {
            return;
         }
         if(this.hahu)
         {
            this.removeAll();
         }
         this.hahu=param1;
         return;
      }

      public function add(param1:Function) : Dovihyz {
         return this.zop(param1);
      }

      public function zop(param1:Function, param2:int=0) : Dovihyz {
         return this.tutofej(param1,false,param2);
      }

      public function addOnce(param1:Function) : Dovihyz {
         return this.wawigy(param1);
      }

      public function wawigy(param1:Function, param2:int=0) : Dovihyz {
         return this.tutofej(param1,true,param2);
      }

      public function remove(param1:Function) : Dovihyz {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Dovihyz = this.hor.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.hahu.removeEventListener(this.jod,_loc2_.execute1);
         this.hor=this.hor.pyj(param1);
         return _loc2_;
      }

      public function removeAll() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Sutoqowa = this.hor;
         while(_loc1_.nonEmpty)
         {
            this.target.removeEventListener(this.jod,_loc1_.naril.execute1);
            _loc1_=_loc1_.wukycasew;
         }
         this.hor=Sutoqowa.NIL;
         return;
      }

      public function dispatch(... rest) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(null==rest)
         {
            throw new ArgumentError("Event object expected.");
         }
         else
         {
            if(rest.length!=1)
            {
               throw new ArgumentError("No more than one Event object expected.");
            }
            else
            {
               this.dispatchEvent(rest[0] as Event);
               return;
            }
         }
      }

      public function dispatchEvent(param1:Event) : Boolean {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            if(!param1)
            {
               throw new ArgumentError("Event object cannot be null.");
            }
            else
            {
               if(!(param1 is this.eventClass))
               {
                  throw new ArgumentError("Event object "+param1+" is not an instance of "+this.eventClass+".");
               }
               else
               {
                  if(param1.type!=this.byguzones)
                  {
                     throw new ArgumentError("Event object has incorrect type. Expected <"+this.byguzones+"> but was <"+param1.type+">.");
                  }
                  else
                  {
                     return this.target.dispatchEvent(param1);
                  }
               }
            }
         }
      }

      protected function tutofej(param1:Function, param2:Boolean=false, param3:int=0) : Dovihyz {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Dovihyz = null;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            if(this.dajokogi(param1,param2))
            {
               _loc4_=new Slot(param1,this,param2,param3);
               this.hor=this.hor.prepend(_loc4_);
               this.hahu.addEventListener(this.jod,_loc4_.execute1,false,param3);
               return _loc4_;
            }
            return this.hor.find(param1);
         }
      }

      protected function dajokogi(param1:Function, param2:Boolean) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!this.hor.nonEmpty)
         {
            return true;
         }
         var _loc3_:Dovihyz = this.hor.find(param1);
         if(_loc3_)
         {
            if(_loc3_.once!=param2)
            {
               throw new IllegalOperationError("You cannot addOnce() then add() the same listener without removing the relationship first.");
            }
            else
            {
               return false;
            }
         }
         else
         {
            return true;
         }
      }
   }

}