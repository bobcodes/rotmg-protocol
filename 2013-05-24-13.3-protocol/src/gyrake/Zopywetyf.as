package gyrake
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import nec.Zirewe;
   import movimet.Lufub;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsStroke;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.display.IGraphicsFill;
   import flash.display.Graphics;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class Zopywetyf extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zopywetyf(param1:Vector.<Zirewe>, param2:Array, param3:Object) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.internalFill_=new GraphicsSolidFill(3355443,1);
         this.havo=new GraphicsSolidFill(11776947,1);
         this.kos=new GraphicsSolidFill(4473924,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.cedit=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.kos);
         new Vector.<IGraphicsData>(5)[0]=this.internalFill_;
         new Vector.<IGraphicsData>(5)[1]=this.cedit;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.gejyd;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.END_FILL;
         super();
         this.fupujuk=param1;
         this.rofog=param2;
         this.labelText_=new Lufub().setSize(16).setColor(16777215);
         this.labelText_.x=WIDTH/2;
         this.labelText_.y=HEIGHT/2;
         this.labelText_.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Lufub.MIDDLE);
         this.labelText_.setBold(true);
         this.labelText_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         addChild(this.labelText_);
         this.setValue(param3);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.zeg);
         return;
      }

      public static const WIDTH:int = 80;

      public static const HEIGHT:int = 32;

      public var fupujuk:Vector.<Zirewe>;

      public var rofog:Array;

      public var fer:int = -1;

      public var labelText_:Lufub;

      private var over_:Boolean = false;

      public function setValue(param1:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<this.rofog.length)
         {
            if(param1==this.rofog[_loc2_])
            {
               if(_loc2_==this.fer)
               {
                  return;
               }
               this.fer=_loc2_;
               break;
            }
            _loc2_++;
         }
         this.setSelected(this.fer);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      public function value() : * {
         return this.rofog[this.fer];
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.over_=true;
         this.tizyf();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.over_=false;
         this.tizyf();
         return;
      }

      private function zeg(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSelected((this.fer+1)%this.rofog.length);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      private var internalFill_:GraphicsSolidFill;

      private var havo:GraphicsSolidFill;

      private var kos:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private var cedit:GraphicsStroke;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function tizyf() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         this.cedit.fill=this.over_?this.havo:this.kos;
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function setSelected(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.fer=param1;
         this.sonydiw(this.fupujuk[this.fer]);
         return;
      }

      private function sonydiw(param1:Zirewe) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.labelText_.setStringBuilder(param1);
         this.tizyf();
         return;
      }
   }

}