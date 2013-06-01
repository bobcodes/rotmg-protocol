package gyzesuqu
{
   import tulunyno.Hugyqufyq;
   import flash.events.IEventDispatcher;
   import flash.events.Event;
   import tulunyno.Dovihyz;
   import tulunyno.Sutoqowa;
   import tulunyno.Slot;


   public class Cabih extends Hugyqufyq implements Juve
   {
      public function Cabih(param1:IEventDispatcher, param2:String, param3:Class=null) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super((param3)||(Event));
         this.byguzones=param2;
         this.eventClass=param3;
         this.target=param1;
         return;
      }

      protected var hahu:IEventDispatcher;

      protected var jod:String;

      protected var piha:Class;

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

      public function get byguzones() : String {
         return this.jod;
      }

      public function set byguzones(param1:String) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jod=param1;
         return;
      }

      public function get eventClass() : Class {
         return this.piha;
      }

      public function set eventClass(param1:Class) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piha=(param1)||(Event);
         jedu=[this.piha];
         return;
      }

      override public function set valueClasses(param1:Array) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.eventClass=(param1)&&param1.length>0?param1[0]:null;
         return;
      }

      override public function add(param1:Function) : Dovihyz {
         return this.zop(param1);
      }

      override public function addOnce(param1:Function) : Dovihyz {
         return this.wawigy(param1);
      }

      public function zop(param1:Function, param2:int=0) : Dovihyz {
         return this.tutofej(param1,false,param2);
      }

      public function wawigy(param1:Function, param2:int=0) : Dovihyz {
         return this.tutofej(param1,true,param2);
      }

      override public function remove(param1:Function) : Dovihyz {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Boolean = hor.nonEmpty;
         var _loc3_:Dovihyz = super.remove(param1);
         if(_loc2_!=hor.nonEmpty)
         {
            this.target.removeEventListener(this.byguzones,this.onNativeEvent);
         }
         return _loc3_;
      }

      override public function removeAll() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.target)
         {
            this.target.removeEventListener(this.byguzones,this.onNativeEvent);
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

      protected function onNativeEvent(param1:Event) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sutoqowa = hor;
         while(_loc2_.nonEmpty)
         {
            _loc2_.naril.execute1(param1);
            _loc2_=_loc2_.wukycasew;
         }
         return;
      }

      protected function tutofej(param1:Function, param2:Boolean=false, param3:int=0) : Dovihyz {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!this.target)
         {
            throw new ArgumentError("Target object cannot be null.");
         }
         else
         {
            _loc4_=hor.nonEmpty;
            _loc5_=null;
            if(dajokogi(param1,param2))
            {
               _loc5_=new Slot(param1,this,param2,param3);
               hor=hor.insertWithPriority(_loc5_);
            }
            else
            {
               _loc5_=hor.find(param1);
            }
            if(_loc4_!=hor.nonEmpty)
            {
               this.target.addEventListener(this.byguzones,this.onNativeEvent,false,param3);
            }
            return _loc5_;
         }
      }
   }

}