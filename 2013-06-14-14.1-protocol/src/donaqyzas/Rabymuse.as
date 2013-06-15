package donaqyzas
{
   import flash.utils.getQualifiedClassName;


   public class Rabymuse extends Object
   {
      public function Rabymuse() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static var makyfu:uint;

      public static function create(param1:*=null) : String {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(param1 is Class)
         {
            param1=getQualifiedClassName(param1).split("::").pop();
         }
         return (param1?param1+"-":"")+(makyfu++).toString(16)+"-"+(Math.random()*255).toString(16);
      }
   }

}