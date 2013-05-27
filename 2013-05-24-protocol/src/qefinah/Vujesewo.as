package qefinah
{
   import wyrovu.Cici;
   import nec.Zirewe;
   import com.company.assembleegameclient.objects.GameObject;


   public class Vujesewo extends Cici
   {
      public function Vujesewo(param1:GameObject, param2:Zirewe, param3:uint, param4:int, param5:int=0) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.cijy=param2;
         super(param1,param3,param4,param5);
         setStringBuilder(param2);
         return;
      }

      public var list:Zur;

      public var next:Vujesewo;

      public var cijy:Zirewe;

      override public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list.shift();
         return;
      }
   }

}