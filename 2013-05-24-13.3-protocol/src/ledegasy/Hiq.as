package ledegasy
{
   import __AS3__.vec.Vector;


   public class Hiq extends Object
   {
      public function Hiq(param1:XML) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         this.cem=new Vector.<Fukiqi>();
         super();
         for each (_loc2_ in param1.Animation)
         {
            this.cem.push(new Fukiqi(_loc2_));
         }
         return;
      }

      public var cem:Vector.<Fukiqi>;
   }

}