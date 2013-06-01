package zehus
{
[CLASS834]   import tinava.Dab;
   import flash.events.IEventDispatcher;
   import flash.events.Event;
   import tinava.Wusozuve;
   import tinava.Tyweti;
   import tinava.Slot;


   public class Jucobuv extends Dab implements Pelacoly
   {
      public function Jucobuv(param1:IEventDispatcher, param2:String, param3:Class=null) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super((param3)||(Event));
         this.hifaw=param2;
         this.eventClass=param3;
         this.target=param1;
         return;
      }

      protected var vur:IEventDispatcher;

      protected var coq:String;

      protected var jabigevi:Class;

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

      public function get hifaw() : String {
         return this.coq;
      }

      public function set hifaw(param1:String) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
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
         qopov=[this.jabigevi];
         return;
      }

      override public function set valueClasses(param1:Array) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.eventClass=(param1)&&param1.length>0?param1[0]:null;
         return;
      }

      override public function add(param1:Function) : Wusozuve {
         return this.zal(param1);
      }

      override public function addOnce(param1:Function) : Wusozuve {
         return this.lozi(param1);
      }

      public function zal(param1:Function, param2:int=0) : Wusozuve {
         return this.tylepeci(param1,false,param2);
      }

      public function lozi(param1:Function, param2:int=0) : Wusozuve {
         return this.tylepeci(param1,true,param2);
      }

      override public function remove(param1:Function) : Wusozuve {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Boolean = fin.nonEmpty;
         var _loc3_:Wusozuve = super.remove(param1);
         if(_loc2_!=fin.nonEmpty)
         {
            this.target.removeEventListener(this.hifaw,this.onNativeEvent);
         }
         return _loc3_;
      }

      override public function removeAll() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.target)
         {
            this.target.removeEventListener(this.hifaw,this.onNativeEvent);
         }
         super.removeAll();
         return;
      }

      override public function dispatch(... rest) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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

      protected function onNativeEvent(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Tyweti = fin;
         while(_loc2_.nonEmpty)
         {
            _loc2_.bufitot.execute1(param1);
            _loc2_=_loc2_.tafumapoq;
         }
         return;
      }

      protected function tylepeci(param1:Function, param2:Boolean=false, param3:int=0) : Wusozuve {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            _loc4_=fin.nonEmpty;
            _loc5_=null;
            if(rada(param1,param2))
            {
               _loc5_=new Slot(param1,this,param2,param3);
               fin=fin.insertWithPriority(_loc5_);
            }
            else
            {
               _loc5_=fin.find(param1);
            }
            if(_loc4_!=fin.nonEmpty)
            {
               this.target.addEventListener(this.hifaw,this.onNativeEvent,false,param3);
            }
            return _loc5_;
         }
      }
   }
[/CLASS]
}