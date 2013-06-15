package nyqojafof
{
   import hivysif.Guzowoja;
   import flash.filters.DropShadowFilter;
   import flash.display.Bitmap;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Relaseka extends Object
   {
      public function Relaseka() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static function guta(param1:int, param2:int, param3:Boolean, param4:Boolean=false) : Guzowoja {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Guzowoja = new Guzowoja();
         _loc5_.setSize(param2).setColor(param1).setBold(param3);
         _loc5_.setVerticalAlign(Guzowoja.BOTTOM);
         _loc5_.filters=param4?[new DropShadowFilter(0,0,0)]:[];
         return _loc5_;
      }

      public static function motizilo(param1:uint) : Bitmap {
         return new Bitmap(ObjectLibrary.getRedrawnTextureFromType(param1,80,true));
      }
   }

}