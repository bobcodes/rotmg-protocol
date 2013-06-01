package dec
{
[CLASS1821]   import pigeguwo.Jazyv;
   import flash.display.Shape;
   import com.company.assembleegameclient.map.Vin;


   public class Viqujo extends Cozicebyk
   {
      public function Viqujo(param1:XML) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(int(param1.@type));
         this.net=param1;
         var _loc2_:Shape = new Shape();
         _loc2_.graphics.beginFill(Vin.getColor(type_),0.5);
         _loc2_.graphics.drawRect(0,0,WIDTH-8,HEIGHT-8);
         _loc2_.graphics.endFill();
         _loc2_.x=WIDTH/2-_loc2_.width/2;
         _loc2_.y=HEIGHT/2-_loc2_.height/2;
         addChild(_loc2_);
         return;
      }

      public var net:XML;

      override protected function getToolTip() : Jazyv {
         return new Boqopiwyv(this.net);
      }
   }
[/CLASS]
}