package mejowozy
{
[CLASS1304]   import com.company.assembleegameclient.objects.Qeh;
   import sakopame.Kykike;
   import com.company.assembleegameclient.objects.Dabufyhut;


   public class Netevyqaw extends Object
   {
      public function Netevyqaw(param1:XML) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         this.id_=param1.@id;
         this.welerago=new Dabufyhut(param1);
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
            this.fily=new Kykike(param1);
         }
         return;
      }

      public var id_:String;

      public var welerago:Qeh;

      public var size_:int = 100;

      public var z_:Number = 0.0;

      public var duration_:Number = 0.0;

      public var fily:Kykike = null;
   }
[/CLASS]
}