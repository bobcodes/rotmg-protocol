package nafa
{
   import com.company.assembleegameclient.map.Vehulumes;


   public class Nap extends Kumip
   {
      public function Nap() {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:XML = null;
         var _loc2_:Pikuduhat = null;
         super(Himo.picobozuc);
         for each (_loc1_ in Vehulumes.tem)
         {
            _loc2_=new Pikuduhat(_loc1_);
            pozecoh(_loc2_);
         }
         return;
      }
   }

}