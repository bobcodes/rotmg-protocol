package jyqiqagog
{
   import flash.utils.Dictionary;
   import kyco.Jugiwuly;
   import flash.utils.getQualifiedClassName;


   public class Wubelet extends Object
   {
      public function Wubelet(param1:Boolean=true) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         if(param1)
         {
            this.ctor=new Mokicira();
         }
         return;
      }

      public var ctor:Cyrad;

      public var injectionPoints:Cotaras;

      public var lymatudo:Nytiq;

      private var pawy:Boolean;

      public function piritared(param1:Array, param2:Array=null, param3:uint=2147483647, param4:Dictionary=null) : Wubelet {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.ctor=new Cyrad(this.wobiq(param1,(param2)||([])),param3,param4);
         return this;
      }

      public function mynawys(param1:String, param2:Class, param3:String="", param4:Boolean=false, param5:Dictionary=null) : Wubelet {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(this.pawy)
         {
            throw new Jugiwuly("Can\'t add injection point after post construct method");
         }
         else
         {
            this.zoqy(new Qahazonyb(getQualifiedClassName(param2)+"|"+param3,param1,param4,param5));
            return this;
         }
      }

      public function hityrad(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647, param5:Boolean=false, param6:Dictionary=null) : Wubelet {
         var _loc7_:* = true;
         var _loc8_:* = false;
         if(this.pawy)
         {
            throw new Jugiwuly("Can\'t add injection point after post construct method");
         }
         else
         {
            this.zoqy(new Tezeg(param1,this.wobiq(param2,(param3)||([])),Math.min(param4,param2.length),param5,param6));
            return this;
         }
      }

      public function tarezy(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647) : Wubelet {
         var _loc5_:* = true;
         var _loc6_:* = false;
         this.pawy=true;
         this.zoqy(new Nys(param1,this.wobiq(param2,(param3)||([])),Math.min(param4,param2.length),0));
         return this;
      }

      public function fyfipe(param1:String, param2:Array, param3:Array=null, param4:uint=2147483647) : Wubelet {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Nytiq = new Nytiq(param1,this.wobiq(param2,(param3)||([])),Math.min(param4,param2.length),0);
         if(this.lymatudo)
         {
            this.lymatudo.last.next=_loc5_;
            this.lymatudo.last=_loc5_;
         }
         else
         {
            this.lymatudo=_loc5_;
            this.lymatudo.last=_loc5_;
         }
         return this;
      }

      public function zoqy(param1:Cotaras) : void {
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

      private function wobiq(param1:Array, param2:Array) : Array {
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

}