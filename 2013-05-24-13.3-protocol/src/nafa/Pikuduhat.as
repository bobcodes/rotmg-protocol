package nafa
{
   import povopito.Ryduwi;
   import flash.display.Shape;
   import com.company.assembleegameclient.map.Vehulumes;


   public class Pikuduhat extends Fyduc
   {
      public function Pikuduhat(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(int(param1.@type));
         this.bihewyb=param1;
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(Vehulumes.getColor(type_),0.5);
         _loc2_.graphics.drawRect(0,0,WIDTH-8,HEIGHT-8);
         _loc2_.graphics.endFill();
         _loc2_.x=WIDTH/2-_loc2_.width/2;
         _loc2_.y=HEIGHT/2-_loc2_.height/2;
         addChild(_loc2_);
         return;
      }

      public var bihewyb:XML;

      override protected function getToolTip() : Ryduwi {
         return new Leduzem(this.bihewyb);
      }
   }

}