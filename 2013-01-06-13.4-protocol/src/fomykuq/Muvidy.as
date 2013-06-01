package fomykuq
{
[CLASS140]   import bikyvym.Kynidamy;
   import __AS3__.vec.Vector;
   import bikyvym.Voduzak;


   public class Muvidy extends Object implements Kynidamy
   {
      public function Muvidy() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var hibif:uint = 16;

      public function get zabyz() : uint {
         return this.hibif;
      }

      public function set zabyz(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hibif=param1;
         return;
      }

      private const lubopoqe:Vector.<Kynidamy> = new Vector.<Kynidamy>();

      public function diruboli(param1:Object) : Voduzak {
         return new Wifujiqe(param1,this);
      }

      public function lyrajiti(param1:Kynidamy) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.lubopoqe.push(param1);
         return;
      }

      public function log(param1:Object, param2:uint, param3:int, param4:String, param5:Array=null) : void {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc6_:Kynidamy = null;
         if(param2>this.hibif)
         {
            return;
         }
         for each (_loc6_ in this.lubopoqe)
         {
            _loc6_.log(param1,param2,param3,param4,param5);
         }
         return;
      }
   }
[/CLASS]
}