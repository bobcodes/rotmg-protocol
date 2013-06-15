package noniq
{
   import mavew.Qyryl;
   import flash.display.Shape;
   import com.company.assembleegameclient.map.Focu;


   public class Zyb extends Bumizerun
   {
      public function Zyb(param1:XML) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(int(param1.@type));
         this.jesanul=param1;
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(Focu.getColor(type_),0.5);
         _loc2_.graphics.drawRect(0,0,WIDTH-8,HEIGHT-8);
         _loc2_.graphics.endFill();
         _loc2_.x=WIDTH/2-_loc2_.width/2;
         _loc2_.y=HEIGHT/2-_loc2_.height/2;
         addChild(_loc2_);
         return;
      }

      public var jesanul:XML;

      override protected function getToolTip() : Qyryl {
         return new Wici(this.jesanul);
      }
   }

}