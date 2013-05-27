package ledegasy
{
   import com.company.assembleegameclient.objects.Sirador;
   import com.company.assembleegameclient.objects.Jerakupej;


   public class Saqavekof extends Object
   {
      public function Saqavekof(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.time_=int(Number(param1.@time)*1000);
         this.nipi=new Jerakupej(param1);
         return;
      }

      public var time_:int;

      public var nipi:Sirador;
   }

}