package jezasowib
{
   import flash.errors.IllegalOperationError;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;


   public class Tiqufu extends Object
   {
      public function Tiqufu() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public function layout(param1:int, ... rest) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:int = rest.length;
         switch(_loc3_)
         {
            case 1:
               this.hiviqecos(param1,rest[0]);
               break;
            case 2:
               this.vopuvumoc(param1,rest[0],rest[1]);
               break;
            default:
               throw new IllegalOperationError("Currently unable to layout more than 2 buttons");
         }
         return;
      }

      private function hiviqecos(param1:int, param2:DisplayObject) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Rectangle = param2.getRect(param2);
         param2.x=(param1-_loc3_.width)*0.5-_loc3_.left;
         return;
      }

      private function vopuvumoc(param1:int, param2:DisplayObject, param3:DisplayObject) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:Rectangle = null;
         var _loc4_:Rectangle = param2.getRect(param2);
         _loc5_=param3.getRect(param3);
         param2.x=(param1-2*param2.width)*0.25-_loc4_.left;
         param3.x=(3*param1-2*param3.width)*0.25-_loc5_.left;
         return;
      }
   }

}