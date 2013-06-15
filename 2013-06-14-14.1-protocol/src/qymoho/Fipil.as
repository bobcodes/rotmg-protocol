package qymoho
{
   import flash.display.Sprite;
   import com.company.rotmg.graphics.ScreenGraphic;
   import waryp.Nulejufyl;
   import flash.geom.Rectangle;


   public class Fipil extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Fipil() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.jyg();
         return;
      }

      private static const biripyq:Number = 550;

      private static const jipe:int = 20;

      public static const CENTER:String = "CENTER";

      public static const RIGHT:String = "RIGHT";

      public static const LEFT:String = "LEFT";

      private var mudabi:ScreenGraphic;

      private const numywigan:Array = [];

      private const vuvoqav:Array = [];

      private function jyg() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.mudabi=new ScreenGraphic();
         addChild(this.mudabi);
         return;
      }

      public function mubob(param1:Nulejufyl, param2:String) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.mudabi.addChild(param1);
         switch(null)
         {
            case CENTER:
               this.numywigan[0]=this.vuvoqav[0]=param1;
               param1.x=this.mudabi.width/2;
               param1.y=biripyq;
               break;
            case LEFT:
               this.vefa(this.numywigan[this.numywigan.length-1],param1);
               this.numywigan.push(param1);
               param1.fow.add(this.mogotav);
               break;
            case RIGHT:
               this.bocimacom(this.vuvoqav[this.vuvoqav.length-1],param1);
               this.vuvoqav.push(param1);
               param1.fow.add(this.gyrebez);
               break;
         }
         return;
      }

      private function mogotav() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 1;
         while(_loc1_<this.numywigan.length)
         {
            this.vefa(this.numywigan[_loc1_-1],this.numywigan[_loc1_]);
            _loc1_++;
         }
         return;
      }

      private function vefa(param1:Nulejufyl, param2:Nulejufyl) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:Rectangle = param2.getBounds(param2);
         param2.x=param1.x+_loc3_.left-_loc4_.right-jipe;
         param2.y=biripyq;
         return;
      }

      private function gyrebez() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 1;
         while(_loc1_<this.vuvoqav.length)
         {
            this.bocimacom(this.vuvoqav[_loc1_-1],this.vuvoqav[_loc1_]);
            _loc1_++;
         }
         return;
      }

      private function bocimacom(param1:Nulejufyl, param2:Nulejufyl) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:Rectangle = param2.getBounds(param2);
         param2.x=param1.x+_loc3_.right-_loc4_.left+jipe;
         param2.y=biripyq;
         return;
      }
   }

}