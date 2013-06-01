package zec
{
[CLASS276]   import flash.display.Sprite;
   import jat.Gevin;
   import com.company.assembleegameclient.util.Vureriju;


   public class Tug extends Sprite implements Gevin
   {
      public function Tug() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.kebycos=new Vureriju(this);
         return;
      }

      public var kebycos:Vureriju;

      protected function wavyfy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.x=(this.kebycos.lonahi()-this.width)*0.5;
         this.y=(this.kebycos.tek()-this.height)*0.5;
         return;
      }
   }
[/CLASS]
}