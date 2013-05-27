package mol
{
   import flash.display.Sprite;
   import com.company.ui.Sytubyvyg;
   import flash.events.MouseEvent;
   import flash.filters.DropShadowFilter;


   public class Gozujo extends Sprite
   {
      public function Gozujo(param1:String, param2:int, param3:int) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.w_=param2;
         this.h_=param3;
         this.nameText_=new Sytubyvyg(16,11776947,false,0,0);
         this.nameText_.setBold(true);
         this.nameText_.text=param1;
         this.nameText_.nuji();
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         this.nameText_.x=this.w_/2-this.nameText_.width/2;
         this.nameText_.y=this.h_/2-this.nameText_.height/2;
         addChild(this.nameText_);
         this.tizyf(3552822);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         return;
      }

      public var w_:int;

      public var h_:int;

      private var nameText_:Sytubyvyg;

      public function getValue() : String {
         return this.nameText_.text;
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tizyf(5658198);
         return;
      }

      private function onMouseOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tizyf(3552822);
         return;
      }

      private function tizyf(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         graphics.clear();
         graphics.lineStyle(1,11776947);
         graphics.beginFill(param1,1);
         graphics.drawRect(0,0,this.w_,this.h_);
         graphics.endFill();
         graphics.lineStyle();
         return;
      }
   }

}