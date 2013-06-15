package cerywij
{
   import sudiba.Fozinomu;
   import jediwip.Tunyhazo;
   import com.company.assembleegameclient.objects.GameObject;


   public class Hoheje extends Fozinomu
   {
      public function Hoheje(param1:GameObject, param2:Tunyhazo, param3:uint, param4:int, param5:int=0) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.hihimu=param2;
         super(param1,param3,param4,param5);
         setStringBuilder(param2);
         return;
      }

      public var list:Zyze;

      public var next:Hoheje;

      public var hihimu:Tunyhazo;

      override public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list.shift();
         return;
      }
   }

}