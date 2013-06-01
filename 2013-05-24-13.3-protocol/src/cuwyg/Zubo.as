package cuwyg
{
   import aaa.rotmg.config.UserConfig;


   public class Zubo extends Object
   {
      public function Zubo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public function tavozygal(param1:String) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         if(param1==null)
         {
            return true;
         }
         if(param1==UserConfig.syjara||param1==UserConfig.giqik||param1==UserConfig.gez||param1==UserConfig.pynezad)
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