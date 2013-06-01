package rymuhuduh
{
[CLASS1074]   import flash.display.Sprite;
   import com.company.rotmg.graphics.ScreenGraphic;
   import qilarag.Boqurot;
   import flash.geom.Rectangle;


   public class Jadyluf extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Jadyluf() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.kijy();
         return;
      }

      private static const tajure:Number = 550;

      private static const vum:int = 20;

      public static const CENTER:String = "CENTER";

      public static const RIGHT:String = "RIGHT";

      public static const LEFT:String = "LEFT";

      private var mut:ScreenGraphic;

      private const dafihy:Array = [];

      private const pywuham:Array = [];

      private function kijy() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.mut=new ScreenGraphic();
         addChild(this.mut);
         return;
      }

      public function tisypure(param1:Boqurot, param2:String) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.mut.addChild(param1);
         switch(null)
         {
            case CENTER:
               this.dafihy[0]=this.pywuham[0]=param1;
               param1.x=this.mut.width/2;
               param1.y=tajure;
               break;
            case LEFT:
               this.gyhyhaqa(this.dafihy[this.dafihy.length-1],param1);
               this.dafihy.push(param1);
               param1.copysa.add(this.mukeg);
               break;
            case RIGHT:
               this.kasawibot(this.pywuham[this.pywuham.length-1],param1);
               this.pywuham.push(param1);
               param1.copysa.add(this.vykosinep);
               break;
         }
         return;
      }

      private function mukeg() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 1;
         while(_loc1_<this.dafihy.length)
         {
            this.gyhyhaqa(this.dafihy[_loc1_-1],this.dafihy[_loc1_]);
            _loc1_++;
         }
         return;
      }

      private function gyhyhaqa(param1:Boqurot, param2:Boqurot) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:Rectangle = param2.getBounds(param2);
         param2.x=param1.x+_loc3_.left-_loc4_.right-vum;
         param2.y=tajure;
         return;
      }

      private function vykosinep() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 1;
         while(_loc1_<this.pywuham.length)
         {
            this.kasawibot(this.pywuham[_loc1_-1],this.pywuham[_loc1_]);
            _loc1_++;
         }
         return;
      }

      private function kasawibot(param1:Boqurot, param2:Boqurot) : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:Rectangle = param2.getBounds(param2);
         param2.x=param1.x+_loc3_.right-_loc4_.left+vum;
         param2.y=tajure;
         return;
      }
   }
[/CLASS]
}