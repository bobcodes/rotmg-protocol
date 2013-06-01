package sakopame
{
[CLASS1700]   import com.company.assembleegameclient.objects.Qeh;
   import com.company.assembleegameclient.objects.Dabufyhut;


   public class Jokyhaqob extends Object
   {
      public function Jokyhaqob(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         this.time_=int(Number(param1.@time)*1000);
         this.welerago=new Dabufyhut(param1);
         return;
      }

      public var time_:int;

      public var welerago:Qeh;
   }
[/CLASS]
}