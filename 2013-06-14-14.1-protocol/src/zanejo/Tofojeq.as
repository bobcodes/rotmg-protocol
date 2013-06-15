package zanejo
{
   import guje.Kehyg;
   import sijizoh.Duq;
   import com.company.assembleegameclient.map.Map;
   import com.company.util.IntPoint;
   import com.company.assembleegameclient.objects.GameObject;
   import com.hurlant.util.Base64;
   import flash.utils.ByteArray;
   import com.company.assembleegameclient.map.Qemujy;
   import com.company.assembleegameclient.objects.BasicObject;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Tofojeq extends Object
   {
      public function Tofojeq() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static function get tepiseha() : Kehyg {
         return Duq.pamazo().getInstance(Kehyg);
      }

      public static function nofamumuz(param1:String) : Map {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = tepiseha.parse(param1);
         var _loc3_:Map = new Map(null);
         _loc3_.setProps(_loc2_["width"],_loc2_["height"],_loc2_["name"],_loc2_["back"],false,false);
         _loc3_.initialize();
         mobehureg(_loc2_,_loc3_,0,0);
         return _loc3_;
      }

      public static function syb(param1:String, param2:Map, param3:int, param4:int) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:Object = tepiseha.parse(param1);
         mobehureg(_loc5_,param2,param3,param4);
         return;
      }

      public static function dahekuq(param1:String) : IntPoint {
         var _loc2_:Object = tepiseha.parse(param1);
         return new IntPoint(_loc2_["width"],_loc2_["height"]);
      }



      public static function tomu(param1:Object) : GameObject {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:int = ObjectLibrary.nezuwy[param1["id"]];
         var _loc3_:XML = ObjectLibrary.ziq[_loc2_];
         var _loc4_:GameObject = ObjectLibrary.hobake(_loc2_);
         _loc4_.size_=param1.hasOwnProperty("size")?param1["size"]:_loc4_.props_.dahekuq();
         return _loc4_;
      }
   }

}