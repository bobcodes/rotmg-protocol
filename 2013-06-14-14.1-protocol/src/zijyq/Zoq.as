package zijyq
{
   import __AS3__.vec.Vector;


   public class Zoq extends Object
   {
      public function Zoq(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         this.fyvub=new Vector.<Tif>();
         super();
         for each (_loc2_ in param1.Animation)
         {
            this.fyvub.push(new Tif(_loc2_));
         }
         return;
      }

      public var fyvub:Vector.<Tif>;
   }

}