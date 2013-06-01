package dugahymu
{
[CLASS1115]   import wiwojaz.Hymefit;
   import totuhare.Qebar;
   import com.company.assembleegameclient.objects.GameObject;


   public class Bisu extends Hymefit
   {
      public function Bisu(param1:GameObject, param2:Qebar, param3:uint, param4:int, param5:int=0) {
         var _loc6_:* = false;
         var _loc7_:* = true;
         this.goqypus=param2;
         super(param1,param3,param4,param5);
         setStringBuilder(param2);
         return;
      }

      public var list:Tasyjujul;

      public var next:Bisu;

      public var goqypus:Qebar;

      override public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.list.shift();
         return;
      }
   }
[/CLASS]
}