package qykifavol
{
   import mukyrosu.Qanyduk;
   import flash.events.IEventDispatcher;
   import flash.events.Event;
   import mukyrosu.Depa;
   import mukyrosu.Syjagaqa;
   import mukyrosu.Slot;


   public class Mila extends Qanyduk implements Mev
   {
      public function Mila(param1:IEventDispatcher, param2:String, param3:Class=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super((param3)||(Event));
         this.lygadyw=param2;
         this.eventClass=param3;
         this.target=param1;
         return;
      }

      protected var rafek:IEventDispatcher;

      protected var qunefenyk:String;

      protected var fov:Class;

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
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.fov=(param1)||(Event);
         tubupebu=[this.fov];
         return;
      }

      override public function set valueClasses(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.eventClass=(param1)&&param1.length>0?param1[0]:null;
         return;
      }

      override public function add(param1:Function) : Depa {
         return this.rujudufeg(param1);
      }

      override public function addOnce(param1:Function) : Depa {
         return this.gowisugob(param1);
      }

      public function rujudufeg(param1:Function, param2:int=0) : Depa {
         return this.businof(param1,false,param2);
      }

      public function gowisugob(param1:Function, param2:int=0) : Depa {
         return this.businof(param1,true,param2);
      }

      override public function remove(param1:Function) : Depa {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Boolean = dyle.nonEmpty;
         var _loc3_:Depa = super.remove(param1);
         if(_loc2_!=dyle.nonEmpty)
         {
            this.target.removeEventListener(this.lygadyw,this.onNativeEvent);
         }
         return _loc3_;
      }

      override public function removeAll() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.target)
         {
            this.target.removeEventListener(this.lygadyw,this.onNativeEvent);
         }
         super.removeAll();
         return;
      }

      override public function dispatch(... rest) : void {
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

      protected function onNativeEvent(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Syjagaqa = dyle;
         while(_loc2_.nonEmpty)
         {
            _loc2_.ryvulavaj.execute1(param1);
            _loc2_=_loc2_.qyr;
         }
         return;
      }

      protected function businof(param1:Function, param2:Boolean=false, param3:int=0) : Depa {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            _loc4_=dyle.nonEmpty;
            _loc5_=null;
            if(jynu(param1,param2))
            {
               _loc5_=new Slot(param1,this,param2,param3);
               dyle=dyle.insertWithPriority(_loc5_);
            }
            else
            {
               _loc5_=dyle.find(param1);
            }
            if(_loc4_!=dyle.nonEmpty)
            {
               this.target.addEventListener(this.lygadyw,this.onNativeEvent,false,param3);
            }
            return _loc5_;
         }
      }
   }

}