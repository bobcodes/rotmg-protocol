package micac
{
   import com.company.assembleegameclient.objects.GameObject;


   public class Leguwa extends Object
   {
      public function Leguwa(param1:int, param2:int, param3:GameObject) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         this.nokapi=param1;
         this.bytula=param2;
         this.hoby=param3;
         return;
      }

      public var nokapi:int;

      public var bytula:int;

      public var hoby:GameObject;
   }

}