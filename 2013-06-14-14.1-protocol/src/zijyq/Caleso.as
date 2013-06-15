package zijyq
{
   import com.company.assembleegameclient.objects.Sep;
   import com.company.assembleegameclient.objects.Bedypy;


   public class Caleso extends Object
   {
      public function Caleso(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.time_=int(Number(param1.@time)*1000);
         this.mor=new Bedypy(param1);
         return;
      }

      public var time_:int;

      public var mor:Sep;
   }

}