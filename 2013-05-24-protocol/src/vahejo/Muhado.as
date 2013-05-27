package vahejo
{
   import flash.display.Sprite;
   import com.company.rotmg.graphics.ScreenGraphic;
   import sakugyt.Tiqigawul;
   import flash.geom.Rectangle;


   public class Muhado extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Muhado() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.sygutuv();
         return;
      }

      private static const libago:Number = 550;

      private static const kalakys:int = 20;

      public static const CENTER:String = "CENTER";

      public static const RIGHT:String = "RIGHT";

      public static const LEFT:String = "LEFT";

      private var motimug:ScreenGraphic;

      private const lajidi:Array = [];

      private const behakimy:Array = [];

      private function sygutuv() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.motimug=new ScreenGraphic();
         addChild(this.motimug);
         return;
      }

      public function ryquwocy(param1:Tiqigawul, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.motimug.addChild(param1);
         switch(param2)
         {
            case CENTER:
               this.lajidi[0]=this.behakimy[0]=param1;
               param1.x=this.motimug.width/2;
               param1.y=libago;
               break;
            case LEFT:
               this.was(this.lajidi[this.lajidi.length-1],param1);
               this.lajidi.push(param1);
               param1.seda.add(this.vap);
               break;
            case RIGHT:
               this.hazevuci(this.behakimy[this.behakimy.length-1],param1);
               this.behakimy.push(param1);
               param1.seda.add(this.samicisu);
               break;
         }
         return;
      }

      private function vap() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 1;
         while(_loc1_<this.lajidi.length)
         {
            this.was(this.lajidi[_loc1_-1],this.lajidi[_loc1_]);
            _loc1_++;
         }
         return;
      }

      private function was(param1:Tiqigawul, param2:Tiqigawul) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:Rectangle = param2.getBounds(param2);
         param2.x=param1.x+_loc3_.left-_loc4_.right-kalakys;
         param2.y=libago;
         return;
      }

      private function samicisu() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 1;
         while(_loc1_<this.behakimy.length)
         {
            this.hazevuci(this.behakimy[_loc1_-1],this.behakimy[_loc1_]);
            _loc1_++;
         }
         return;
      }

      private function hazevuci(param1:Tiqigawul, param2:Tiqigawul) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:Rectangle = param2.getBounds(param2);
         param2.x=param1.x+_loc3_.right-_loc4_.left+kalakys;
         param2.y=libago;
         return;
      }
   }

}