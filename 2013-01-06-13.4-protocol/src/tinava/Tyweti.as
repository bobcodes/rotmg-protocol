package tinava
{
[CLASS167]

   public final class Tyweti extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Tyweti(param1:Wusozuve, param2:Tyweti=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         if(!param1&&!param2)
         {
            if(NIL)
            {
               throw new ArgumentError("Parameters head and tail are null. Use the NIL element instead.");
            }
            else
            {
               this.nonEmpty=false;
            }
         }
         else
         {
            if(!param1)
            {
               throw new ArgumentError("Parameter head cannot be null.");
            }
            else
            {
               this.bufitot=param1;
               this.tafumapoq=(param2)||(NIL);
               this.nonEmpty=true;
            }
         }
         return;
      }

      public static const NIL:Tyweti = new Tyweti(null,null);

      public var bufitot:Wusozuve;

      public var tafumapoq:Tyweti;

      public var nonEmpty:Boolean = false;

      public function get length() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.nonEmpty)
         {
            return 0;
         }
         if(this.tafumapoq==NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:Tyweti = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_++;
            _loc2_=_loc2_.tafumapoq;
         }
         return _loc1_;
      }

      public function prepend(param1:Wusozuve) : Tyweti {
         return new Tyweti(param1,this);
      }

      public function append(param1:Wusozuve) : Tyweti {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!param1)
         {
            return this;
         }
         if(!this.nonEmpty)
         {
            return new Tyweti(param1);
         }
         if(this.tafumapoq==NIL)
         {
            return new Tyweti(param1).prepend(this.bufitot);
         }
         var _loc2_:Tyweti = new Tyweti(this.bufitot);
         var _loc3_:Tyweti = _loc2_;
         var _loc4_:Tyweti = this.tafumapoq;
         while(_loc4_.nonEmpty)
         {
            _loc3_=_loc3_.tafumapoq=new Tyweti(_loc4_.bufitot);
            _loc4_=_loc4_.tafumapoq;
         }
         _loc3_.tafumapoq=new Tyweti(param1);
         return _loc2_;
      }

      public function insertWithPriority(param1:Wusozuve) : Tyweti {
         var _loc7_:* = false;
         var _loc8_:* = true;
         if(!this.nonEmpty)
         {
            return new Tyweti(param1);
         }
         var _loc2_:int = param1.priority;
         if(_loc2_>this.bufitot.priority)
         {
            return this.prepend(param1);
         }
         var _loc3_:Tyweti = new Tyweti(this.bufitot);
         var _loc4_:Tyweti = _loc3_;
         var _loc5_:Tyweti = this.tafumapoq;
         while(_loc5_.nonEmpty)
         {
            if(_loc2_>_loc5_.bufitot.priority)
            {
               _loc4_.tafumapoq=_loc5_.prepend(param1);
               return _loc3_;
            }
            _loc4_=_loc4_.tafumapoq=new Tyweti(_loc5_.bufitot);
            _loc5_=_loc5_.tafumapoq;
         }
         _loc4_.tafumapoq=new Tyweti(param1);
         return _loc3_;
      }

      public function menuraqy(param1:Function) : Tyweti {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!this.nonEmpty||param1==null)
         {
            return this;
         }
         if(param1==this.bufitot.listener)
         {
            return this.tafumapoq;
         }
         var _loc2_:Tyweti = new Tyweti(this.bufitot);
         var _loc3_:Tyweti = _loc2_;
         var _loc4_:Tyweti = this.tafumapoq;
         while(_loc4_.nonEmpty)
         {
            if(_loc4_.bufitot.listener==param1)
            {
               _loc3_.tafumapoq=_loc4_.tafumapoq;
               return _loc2_;
            }
            _loc3_=_loc3_.tafumapoq=new Tyweti(_loc4_.bufitot);
            _loc4_=_loc4_.tafumapoq;
         }
         return this;
      }

      public function contains(param1:Function) : Boolean {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.nonEmpty)
         {
            return false;
         }
         var _loc2_:Tyweti = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.bufitot.listener==param1)
            {
               return true;
            }
            _loc2_=_loc2_.tafumapoq;
         }
         return false;
      }

      public function find(param1:Function) : Wusozuve {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.nonEmpty)
         {
            return null;
         }
         var _loc2_:Tyweti = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.bufitot.listener==param1)
            {
               return _loc2_.bufitot;
            }
            _loc2_=_loc2_.tafumapoq;
         }
         return null;
      }

      public function toString() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = "";
         var _loc2_:Tyweti = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_=_loc1_+(_loc2_.bufitot+" -> ");
            _loc2_=_loc2_.tafumapoq;
         }
         _loc1_=_loc1_+"NIL";
         return "[List "+_loc1_+"]";
      }
   }
[/CLASS]
}