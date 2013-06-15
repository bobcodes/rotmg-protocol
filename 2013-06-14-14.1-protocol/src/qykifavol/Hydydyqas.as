package qykifavol
{
   import flash.events.IEventDispatcher;
   import mukyrosu.Syjagaqa;
   import flash.events.Event;
   import mukyrosu.Depa;
   import mukyrosu.Slot;
   import flash.errors.IllegalOperationError;


   public class Hydydyqas extends Object implements Mev
   {
      public function Hydydyqas(param1:IEventDispatcher=null, param2:String="", param3:Class=null) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.dyle=Syjagaqa.NIL;
         this.target=param1;
         this.lygadyw=param2;
         this.eventClass=param3;
         return;
      }

      protected var rafek:IEventDispatcher;

      protected var qunefenyk:String;

      protected var fov:Class;

      protected var tubupebu:Array;

      protected var dyle:Syjagaqa;

      public function get lygadyw() : String {
         return this.qunefenyk;
      }

      public function set lygadyw(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.qunefenyk=param1;
         return;
      }

      public function get eventClass() : Class {
         return this.fov;
      }

      public function set eventClass(param1:Class) : void {
         var [OFS3]_loc2_:* = [/OFS]false;
         var [OFS4]_loc3_:* = [/OFS]true;
         this.[OFS21]fov[/OFS][OFS21]=[/OFS]([OFS8]param1[/OFS])||([OFS17]Event[/OFS]);
         this.[OFS31]tubupebu[/OFS][OFS31]=[/OFS][OFS29][[/OFS]this.[OFS26]fov[/OFS][OFS29]][/OFS];
         [OFS34]return[/OFS];
      }

      public function get valueClasses() : Array {
         return this.tubupebu;
      }

      public function set valueClasses(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.eventClass=(param1)&&param1.length>0?param1[0]:null;
         return;
      }

      public function get kuzag() : uint {
         return this.dyle.length;
      }

      public function get target() : IEventDispatcher {
         return this.rafek;
      }

      public function set target(param1:IEventDispatcher) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(param1==this.rafek)
         {
            return;
         }
         if(this.rafek)
         {
            this.removeAll();
         }
         this.rafek=param1;
         return;
      }

      public function add(param1:Function) : Depa {
         return this.rujudufeg(param1);
      }

      public function rujudufeg(param1:Function, param2:int=0) : Depa {
         return this.businof(param1,false,param2);
      }

      public function addOnce(param1:Function) : Depa {
         return this.gowisugob(param1);
      }

      public function gowisugob(param1:Function, param2:int=0) : Depa {
         return this.businof(param1,true,param2);
      }

      public function remove(param1:Function) : Depa {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Depa = this.dyle.find(param1);
         if(!_loc2_)
         {
            return null;
         }
         this.rafek.removeEventListener(this.qunefenyk,_loc2_.execute1);
         this.dyle=this.dyle.vomac(param1);
         return _loc2_;
      }

      public function removeAll() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Syjagaqa = this.dyle;
         while(_loc1_.nonEmpty)
         {
            this.target.removeEventListener(this.qunefenyk,_loc1_.ryvulavaj.execute1);
            _loc1_=_loc1_.qyr;
         }
         this.dyle=Syjagaqa.NIL;
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
         var _loc2_:* = false;
         var _loc3_:* = true;
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
                  if(param1.type!=this.lygadyw)
                  {
                     throw new ArgumentError("Event object has incorrect type. Expected <"+this.lygadyw+"> but was <"+param1.type+">.");
                  }
                  else
                  {
                     return this.target.dispatchEvent(param1);
                  }
               }
            }
         }
      }

      protected function businof(param1:Function, param2:Boolean=false, param3:int=0) : Depa {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Depa = null;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            if(this.jynu(param1,param2))
            {
               _loc4_=new Slot(param1,this,param2,param3);
               this.dyle=this.dyle.prepend(_loc4_);
               this.rafek.addEventListener(this.qunefenyk,_loc4_.execute1,false,param3);
               return _loc4_;
            }
            return this.dyle.find(param1);
         }
      }

      protected function jynu(param1:Function, param2:Boolean) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(!this.dyle.nonEmpty)
         {
            return true;
         }
         var _loc3_:Depa = this.dyle.find(param1);
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