package zehus
{
[CLASS954]   import flash.events.IEventDispatcher;
   import tinava.Tyweti;
   import flash.events.Event;
   import tinava.Wusozuve;
   import tinava.Slot;
   import flash.errors.IllegalOperationError;


   public class Caje extends Object implements Pelacoly
   {
      public function Caje(param1:IEventDispatcher=null, param2:String="", param3:Class=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.fin=Tyweti.NIL;
         this.target=param1;
         this.hifaw=param2;
         this.eventClass=param3;
         return;
      }

      protected var vur:IEventDispatcher;

      protected var coq:String;

      protected var jabigevi:Class;

      protected var qopov:Array;

      protected var fin:Tyweti;

      public function get hifaw() : String {
         return this.coq;
      }

      public function set hifaw(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.coq=param1;
         return;
      }

      public function get eventClass() : Class {
         return this.jabigevi;
      }

      public function set eventClass(param1:Class) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.jabigevi=(param1)||(Event);
         this.qopov=[this.jabigevi];
         return;
      }

      public function get valueClasses() : Array {
         return this.qopov;
      }

      public function set valueClasses(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.eventClass=(param1)&&param1.length>0?param1[0]:null;
         return;
      }

      public function get pylyzy() : uint {
         return this.fin.length;
      }

      public function get target() : IEventDispatcher {
         return this.vur;
      }

      public function set target(param1:IEventDispatcher) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(param1==this.vur)
         {
            return;
         }
         if(this.vur)
         {
            this.removeAll();
         }
         this.vur=param1;
         return;
      }

      public function add(param1:Function) : Wusozuve {
         return this.zal(param1);
      }

      public function zal(param1:Function, param2:int=0) : Wusozuve {
         return this.tylepeci(param1,false,param2);
      }

      public function addOnce(param1:Function) : Wusozuve {
         return this.lozi(param1);
      }

      public function lozi(param1:Function, param2:int=0) : Wusozuve {
         return this.tylepeci(param1,true,param2);
      }

      public function remove(param1:Function) : Wusozuve {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Wusozuve = this.fin.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.vur.removeEventListener(this.coq,_loc2_.execute1);
         this.fin=this.fin.menuraqy(param1);
         return _loc2_;
      }

      public function removeAll() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Tyweti = this.fin;
         while(_loc1_.nonEmpty)
         {
            this.target.removeEventListener(this.coq,_loc1_.bufitot.execute1);
            _loc1_=_loc1_.tafumapoq;
         }
         this.fin=Tyweti.NIL;
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
                  if(param1.type!=this.hifaw)
                  {
                     throw new ArgumentError("Event object has incorrect type. Expected <"+this.hifaw+"> but was <"+param1.type+">.");
                  }
                  else
                  {
                     return this.target.dispatchEvent(param1);
                  }
               }
            }
         }
      }

      protected function tylepeci(param1:Function, param2:Boolean=false, param3:int=0) : Wusozuve {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Wusozuve = null;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            if(this.rada(param1,param2))
            {
               _loc4_=new Slot(param1,this,param2,param3);
               this.fin=this.fin.prepend(_loc4_);
               this.vur.addEventListener(this.coq,_loc4_.execute1,false,param3);
               return _loc4_;
            }
            return this.fin.find(param1);
         }
      }

      protected function rada(param1:Function, param2:Boolean) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(!this.fin.nonEmpty)
         {
            return true;
         }
         var _loc3_:Wusozuve = this.fin.find(param1);
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
[/CLASS]
}