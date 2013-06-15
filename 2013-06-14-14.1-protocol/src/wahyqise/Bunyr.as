package wahyqise
{
   import com.company.assembleegameclient.parameters.Parameters;


   public class Bunyr extends Object
   {
      public function Bunyr() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function tuj(param1:String) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         if(param1==null)
         {
            return true;
         }
         if(param1==Parameters.lugiboso||param1==Parameters.quc||param1==Parameters.kokapo||param1==Parameters.wyfa)
         {
            _loc2_=true;
         }
         if(param1.charAt(0)=="#")
         {
            _loc2_=true;
         }
         if(param1.charAt(0)=="@")
         {
            _loc2_=true;
         }
         return _loc2_;
      }
   }

}