package mukyrosu
{


   public final class Syjagaqa extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Syjagaqa(param1:Depa, param2:Syjagaqa=null) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         if(!param1&&!param2)
         {
            if(NIL)
            {
               throw new ArgumentError("RotmgParameters head and tail are null. Use the NIL element instead.");
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
               this.ryvulavaj=param1;
               this.qyr=(param2)||(NIL);
               this.nonEmpty=true;
            }
         }
         return;
      }

      public static const NIL:Syjagaqa = new Syjagaqa(null,null);

      public var ryvulavaj:Depa;

      public var qyr:Syjagaqa;

      public var nonEmpty:Boolean = false;

      public function get length() : uint {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.nonEmpty)
         {
            return 0;
         }
         if(this.qyr==NIL)
         {
            return 1;
         }
         var _loc1_:uint = 0;
         var _loc2_:Syjagaqa = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_++;
            _loc2_=_loc2_.qyr;
         }
         return _loc1_;
      }

      public function prepend(param1:Depa) : Syjagaqa {
         return new Syjagaqa(param1,this);
      }

      public function append(param1:Depa) : Syjagaqa {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(!param1)
         {
            return this;
         }
         if(!this.nonEmpty)
         {
            return new Syjagaqa(param1);
         }
         if(this.qyr==NIL)
         {
            return new Syjagaqa(param1).prepend(this.ryvulavaj);
         }
         var _loc2_:Syjagaqa = new Syjagaqa(this.ryvulavaj);
         var _loc3_:Syjagaqa = _loc2_;
         var _loc4_:Syjagaqa = this.qyr;
         while(_loc4_.nonEmpty)
         {
            _loc3_=_loc3_.qyr=new Syjagaqa(_loc4_.ryvulavaj);
            _loc4_=_loc4_.qyr;
         }
         _loc3_.qyr=new Syjagaqa(param1);
         return _loc2_;
      }

      public function insertWithPriority(param1:Depa) : Syjagaqa {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(!this.nonEmpty)
         {
            return new Syjagaqa(param1);
         }
         var _loc2_:int = param1.priority;
         if(_loc2_>this.ryvulavaj.priority)
         {
            return this.prepend(param1);
         }
         var _loc3_:Syjagaqa = new Syjagaqa(this.ryvulavaj);
         var _loc4_:Syjagaqa = _loc3_;
         var _loc5_:Syjagaqa = this.qyr;
         while(_loc5_.nonEmpty)
         {
            if(_loc2_>_loc5_.ryvulavaj.priority)
            {
               _loc4_.qyr=_loc5_.prepend(param1);
               return _loc3_;
            }
            _loc4_=_loc4_.qyr=new Syjagaqa(_loc5_.ryvulavaj);
            _loc5_=_loc5_.qyr;
         }
         _loc4_.qyr=new Syjagaqa(param1);
         return _loc3_;
      }

      public function vomac(param1:Function) : Syjagaqa {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(!this.nonEmpty||param1==null)
         {
            return this;
         }
         if(param1==this.ryvulavaj.listener)
         {
            return this.qyr;
         }
         var _loc2_:Syjagaqa = new Syjagaqa(this.ryvulavaj);
         var _loc3_:Syjagaqa = _loc2_;
         var _loc4_:Syjagaqa = this.qyr;
         while(_loc4_.nonEmpty)
         {
            if(_loc4_.ryvulavaj.listener==param1)
            {
               _loc3_.qyr=_loc4_.qyr;
               return _loc2_;
            }
            _loc3_=_loc3_.qyr=new Syjagaqa(_loc4_.ryvulavaj);
            _loc4_=_loc4_.qyr;
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
         var _loc2_:Syjagaqa = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.ryvulavaj.listener==param1)
            {
               return true;
            }
            _loc2_=_loc2_.qyr;
         }
         return false;
      }

      public function find(param1:Function) : Depa {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(!this.nonEmpty)
         {
            return null;
         }
         var _loc2_:Syjagaqa = this;
         while(_loc2_.nonEmpty)
         {
            if(_loc2_.ryvulavaj.listener==param1)
            {
               return _loc2_.ryvulavaj;
            }
            _loc2_=_loc2_.qyr;
         }
         return null;
      }

      public function toString() : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = "";
         var _loc2_:Syjagaqa = this;
         while(_loc2_.nonEmpty)
         {
            _loc1_=_loc1_+(_loc2_.ryvulavaj+" -> ");
            _loc2_=_loc2_.qyr;
         }
         _loc1_=_loc1_+"NIL";
         return "[List "+_loc1_+"]";
      }
   }

}