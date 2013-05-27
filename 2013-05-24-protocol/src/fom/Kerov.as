package fom
{
   import com.company.assembleegameclient.objects.GameObject;


   public class Kerov extends Object
   {
      public function Kerov(param1:int, param2:int, param3:GameObject) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.hup=param1;
         this.qen=param2;
         this.casijor=param3;
         return;
      }

      public var hup:int;

      public var qen:int;

      public var casijor:GameObject;
   }

}