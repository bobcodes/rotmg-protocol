package donaqyzas
{
   import hunavefeg.Puka;
   import __AS3__.vec.Vector;
   import hunavefeg.Depyrew;


   public class Zanuv extends Object implements Puka
   {
      public function Zanuv() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var neg:uint = 16;

      public function get cimopob() : uint {
         return this.neg;
      }

      public function set cimopob(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.neg=param1;
         return;
      }

      private const putemif:Vector.<Puka> = new Vector.<Puka>();

      public function jok(param1:Object) : Depyrew {
         return new Vojujytyz(param1,this);
      }

      public function qoze(param1:Puka) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.putemif.push(param1);
         return;
      }

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:Puka = null;
         if(param2>this.neg)
         {
            return;
         }
         for each (_loc6_ in this.putemif)
         {
            _loc6_.log(param1,param2,param3,param4,param5);
         }
         return;
      }
   }

}