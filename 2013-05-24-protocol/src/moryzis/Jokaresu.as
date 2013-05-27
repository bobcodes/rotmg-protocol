package moryzis
{
   import com.company.assembleegameclient.objects.Sirador;
   import ledegasy.Hiq;
   import com.company.assembleegameclient.objects.Jerakupej;


   public class Jokaresu extends Object
   {
      public function Jokaresu(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.id_=param1.@id;
         this.nipi=new Jerakupej(param1);
         if(param1.hasOwnProperty("Size"))
         {
            this.size_=Number(param1.Size);
         }
         if(param1.hasOwnProperty("Z"))
         {
            this.z_=Number(param1.Z);
         }
         if(param1.hasOwnProperty("Duration"))
         {
            this.duration_=Number(param1.Duration);
         }
         if(param1.hasOwnProperty("Animation"))
         {
            this.piba=new Hiq(param1);
         }
         return;
      }

      public var id_:String;

      public var nipi:Sirador;

      public var size_:int = 100;

      public var z_:Number = 0.0;

      public var duration_:Number = 0.0;

      public var piba:Hiq = null;
   }

}