package mukyrosu
{


   public class Qanyduk extends Cisymifok implements Gaqyd
   {
      public function Qanyduk(... rest) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var rest:Array = rest.length==1&&rest[0] is Array?rest[0]:rest;
         super(rest);
         return;
      }

      public function add(param1:Function) : Depa {
         return huzo(param1);
      }
   }

}