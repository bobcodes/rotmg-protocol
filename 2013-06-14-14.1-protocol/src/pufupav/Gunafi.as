package pufupav
{
   import com.company.assembleegameclient.objects.Sep;
   import zijyq.Zoq;
   import com.company.assembleegameclient.objects.Bedypy;


   public class Gunafi extends Object
   {
      public function Gunafi(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.id_=param1.@id;
         this.mor=new Bedypy(param1);
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
            this.pacuhyqa=new Zoq(param1);
         }
         return;
      }

      public var id_:String;

      public var mor:Sep;

      public var size_:int = 100;

      public var z_:Number = 0.0;

      public var duration_:Number = 0.0;

      public var pacuhyqa:Zoq = null;
   }

}