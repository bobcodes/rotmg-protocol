package fomykuq
{
[CLASS141]   import flash.utils.getQualifiedClassName;


   public class Sedubali extends Object
   {
      public function Sedubali() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var qacalygi:uint;

      public static function create(param1:*=null) : String {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(param1 is Class)
         {
            param1=getQualifiedClassName(param1).split("::").pop();
         }
         return (param1?param1+"-":"")+(qacalygi++).toString(16)+"-"+(Math.random()*255).toString(16);
      }
   }
[/CLASS]
}