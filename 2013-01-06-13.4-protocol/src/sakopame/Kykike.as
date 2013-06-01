package sakopame
{
[CLASS1277]   import __AS3__.vec.Vector;


   public class Kykike extends Object
   {
      public function Kykike(param1:XML) {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         this.focagymec=new Vector.<Giryqohe>();
         super();
         for each (_loc2_ in param1.Animation)
         {
            this.focagymec.push(new Giryqohe(_loc2_));
         }
         return;
      }

      public var focagymec:Vector.<Giryqohe>;
   }
[/CLASS]
}