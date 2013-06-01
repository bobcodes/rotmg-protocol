package zehus
{
[CLASS835]   import flash.utils.getQualifiedClassName;
   import flash.events.Event;
   import tinava.Tyweti;
   import flash.events.IEventDispatcher;


   public class Kelapu extends Jucobuv
   {
      public function Kelapu(param1:IEventDispatcher, param2:String, param3:Class=null, ... rest) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         super(param1,param2,param3);
         this.valueClasses=rest;
         return;
      }

      private var jom:Function = null;

      protected function get heqa() : Function {
         return this.jom;
      }

      override public function get eventClass() : Class {
         return jabigevi;
      }

      override public function set eventClass(param1:Class) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         jabigevi=param1;
         return;
      }

      override public function set valueClasses(param1:Array) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         qopov=param1?param1.slice():[];
         var _loc2_:int = qopov.length;
         while(_loc2_--)
         {
            if(!(qopov[_loc2_] is Class))
            {
               throw new ArgumentError("Invalid valueClasses argument: "+"item at index "+_loc2_+" should be a Class but was:<"+qopov[_loc2_]+">."+getQualifiedClassName(qopov[_loc2_]));
            }
            else
            {
               continue;
            }
         }
         return;
      }

      public function ped(... rest) : Kelapu {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var objectListOrFunction:Array = rest;
         if(objectListOrFunction.length==1&&objectListOrFunction[0] is Function)
         {
            this.jom=objectListOrFunction[0] as Function;
            if(this.jom.length>1)
            {
               throw new ArgumentError("Mapping function has "+this.jom.length+" arguments but it needs zero or one of type Event");
            }
         }
         else
         {
            this.jom=new function():Object
            {
               return objectListOrFunction;
            };
         }
         return this;
      }

      protected function puduveb(param1:Event) : Object {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.heqa!=null)
         {
            if(this.heqa.length==1)
            {
               return this.heqa(param1);
            }
            return this.heqa();
         }
         if(valueClasses.length==0)
         {
            return [];
         }
         throw new ArgumentError("There are valueClasses set to be dispatched <"+valueClasses+"> but mappingFunction is null.");
      }

      override public function dispatchEvent(param1:Event) : Boolean {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:Class = null;
         var _loc7_:* = 0;
         var _loc2_:Object = this.puduveb(param1);
         var _loc3_:int = valueClasses.length;
         if(_loc2_ is Array)
         {
            _loc4_=_loc2_ as Array;
            _loc7_=0;
            while(_loc7_<_loc3_)
            {
               _loc5_=_loc4_[_loc7_];
               _loc6_=valueClasses[_loc7_];
               if(_loc5_===null||_loc5_ is _loc6_)
               {
                  _loc7_++;
                  continue;
               }
               throw new ArgumentError("Value object <"+_loc5_+"> is not an instance of <"+_loc6_+">.");
            }
         }
         else
         {
            if(_loc3_>1)
            {
               throw new ArgumentError("Expected more than one value.");
            }
            else
            {
               if(!(_loc2_ is valueClasses[0]))
               {
                  throw new ArgumentError("Mapping returned "+getQualifiedClassName(_loc2_)+", expected "+valueClasses[0]+".");
               }
            }
         }
         return super.dispatchEvent(param1);
      }

      override protected function onNativeEvent(param1:Event) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Array = null;
         var _loc2_:Object = this.puduveb(param1);
         var _loc3_:Tyweti = fin;
         if(_loc2_ is Array)
         {
            if(valueClasses.length==1&&valueClasses[0]==Array)
            {
               while(_loc3_.nonEmpty)
               {
                  _loc3_.bufitot.execute1(_loc2_);
                  _loc3_=_loc3_.tafumapoq;
               }
            }
            else
            {
               _loc4_=_loc2_ as Array;
               while(_loc3_.nonEmpty)
               {
                  _loc3_.bufitot.execute(_loc4_);
                  _loc3_=_loc3_.tafumapoq;
               }
            }
            return;
         }
         while(_loc3_.nonEmpty)
         {
            _loc3_.bufitot.execute1(_loc2_);
            _loc3_=_loc3_.tafumapoq;
         }
         return;
      }
   }
[/CLASS]
}