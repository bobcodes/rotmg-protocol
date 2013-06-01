package cukopumin
{
[CLASS608]   import flash.utils.Dictionary;
   import pogefeqeh.Duba;
   import flash.utils.getQualifiedClassName;


   public class Sov extends Object
   {
      public function Sov(param1:Boolean=true) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         if(param1)
         {
            this.ctor=new Remosu();
         }
         return;
      }

      public var ctor:Myfuvu;

      public var injectionPoints:Gak;

      public var dot:Zadibe;

      private var wavepuk:Boolean;

      public function heqidaba(param1:Array, param2:Array=null, param3:uint=2147483647, param4:Dictionary=null) : Sov {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.ctor=new Myfuvu(this.jili(param1,(param2)||([])),param3,param4);
         return this;
      }

      public function todopo(param1:String, param2:Class, param3:String="", param4:Boolean=false, param5:Dictionary=null) : Sov {
         var _loc6_:* = false;
         var _loc7_:* = true;
         if(this.wavepuk)
         {
            throw new Duba("Can\'t add injection point after post construct method");
         }
         else
         {
            this.kivav(new Hekyh(getQualifiedClassName(param2)+"|"+param3,param1,param4,param5));
            return this;
         }
      }

      public function zojysac(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647, param5:Boolean=false, param6:Dictionary=null) : Sov {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.wavepuk)
         {
            throw new Duba("Can\'t add injection point after post construct method");
         }
         else
         {
            this.kivav(new Wehaqy(param1,this.jili(param2,(param3)||([])),Math.min(param4,param2.length),param5,param6));
            return this;
         }
      }

      public function poduzec(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647) : Sov {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.wavepuk=true;
         this.kivav(new Fes(param1,this.jili(param2,(param3)||([])),Math.min(param4,param2.length),0));
         return this;
      }

      public function nydam(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647) : Sov {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Zadibe = new Zadibe(param1,this.jili(param2,(param3)||([])),Math.min(param4,param2.length),0);
         if(this.dot)
         {
            this.dot.last.next=_loc5_;
            this.dot.last=_loc5_;
         }
         else
         {
            this.dot=_loc5_;
            this.dot.last=_loc5_;
         }
         return this;
      }

      public function kivav(param1:Gak) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.injectionPoints)
         {
            this.injectionPoints.last.next=param1;
            this.injectionPoints.last=param1;
         }
         else
         {
            this.injectionPoints=param1;
            this.injectionPoints.last=param1;
         }
         return;
      }

      private function jili(param1:Array, param2:Array) : Array {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Array = new Array(param1.length);
         var _loc4_:int = _loc3_.length;
         while(_loc4_--)
         {
            _loc3_[_loc4_]=getQualifiedClassName(param1[_loc4_])+"|"+((param2[_loc4_])||(""));
         }
         return _loc3_;
      }
   }
[/CLASS]
}