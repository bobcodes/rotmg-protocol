package tulunyno
{


   public final class Sutoqowa extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Sutoqowa(param1:Dovihyz, param2:Sutoqowa=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         if(!param1&&!param2)
         {
            if(NIL)
            {
               throw new ArgumentError("UserConfig head and tail are null. Use the NIL element instead.");
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
               this.naril=param1;
               this.wukycasew=(param2)||(NIL);
               this.nonEmpty=true;
            }
         }
         return;
      }

      public static const NIL:Sutoqowa = new Sutoqowa(null,null);

      public var naril:Dovihyz;

      public var wukycasew:Sutoqowa;

      public var nonEmpty:Boolean = false;

      public function get length() : uint {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.nonEmpty)
         {
            return 0;
         }
         if(this.wukycasew==NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:Sutoqowa = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_++;
            _loc2_=_loc2_.wukycasew;
         }
         return _loc1_;
      }

      public function prepend(param1:Dovihyz) : Sutoqowa {
         return new Sutoqowa(param1,this);
      }

      public function append(param1:Dovihyz) : Sutoqowa {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!param1)
         {
            return this;
         }
         if(!this.nonEmpty)
         {
            return new Sutoqowa(param1);
         }
         if(this.wukycasew==NIL)
         {
            return new Sutoqowa(param1).prepend(this.naril);
         }
         var _loc2_:Sutoqowa = new Sutoqowa(this.naril);
         var _loc3_:Sutoqowa = _loc2_;
         var _loc4_:Sutoqowa = this.wukycasew;
         while(_loc4_.nonEmpty)
         {
            _loc3_=_loc3_.wukycasew=new Sutoqowa(_loc4_.naril);
            _loc4_=_loc4_.wukycasew;
         }
         _loc3_.wukycasew=new Sutoqowa(param1);
         return _loc2_;
      }

      public function insertWithPriority(param1:Dovihyz) : Sutoqowa {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(!this.nonEmpty)
         {
            return new Sutoqowa(param1);
         }
         var _loc2_:int = param1.priority;
         if(_loc2_>this.naril.priority)
         {
            return this.prepend(param1);
         }
         var _loc3_:Sutoqowa = new Sutoqowa(this.naril);
         var _loc4_:Sutoqowa = _loc3_;
         var _loc5_:Sutoqowa = this.wukycasew;
         while(_loc5_.nonEmpty)
         {
            if(_loc2_>_loc5_.naril.priority)
            {
               _loc4_.wukycasew=_loc5_.prepend(param1);
               return _loc3_;
            }
            _loc4_=_loc4_.wukycasew=new Sutoqowa(_loc5_.naril);
            _loc5_=_loc5_.wukycasew;
         }
         _loc4_.wukycasew=new Sutoqowa(param1);
         return _loc3_;
      }

      public function pyj(param1:Function) : Sutoqowa {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!this.nonEmpty||param1==null)
         {
            return this;
         }
         if(param1==this.naril.listener)
         {
            return this.wukycasew;
         }
         var _loc2_:Sutoqowa = new Sutoqowa(this.naril);
         var _loc3_:Sutoqowa = _loc2_;
         var _loc4_:Sutoqowa = this.wukycasew;
         while(_loc4_.nonEmpty)
         {
            if(_loc4_.naril.listener==param1)
            {
               _loc3_.wukycasew=_loc4_.wukycasew;
               return _loc2_;
            }
            _loc3_=_loc3_.wukycasew=new Sutoqowa(_loc4_.naril);
            _loc4_=_loc4_.wukycasew;
         }
         return this;
      }

      public function contains(param1:Function) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.nonEmpty)
         {
            return false;
         }
         var _loc2_:Sutoqowa = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.naril.listener==param1)
            {
               return true;
            }
            _loc2_=_loc2_.wukycasew;
         }
         return false;
      }

      public function find(param1:Function) : Dovihyz {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.nonEmpty)
         {
            return null;
         }
         var _loc2_:Sutoqowa = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.naril.listener==param1)
            {
               return _loc2_.naril;
            }
            _loc2_=_loc2_.wukycasew;
         }
         return null;
      }

      public function toString() : String {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = "";
         var _loc2_:Sutoqowa = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_=_loc1_+(_loc2_.naril+" -> ");
            _loc2_=_loc2_.wukycasew;
         }
         _loc1_=_loc1_+"NIL";
         return "[List "+_loc1_+"]";
      }
   }

}