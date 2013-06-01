package cycygaj
{
[CLASS1802]   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import totuhare.Qebar;
   import pudev.Capitu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsStroke;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.display.IGraphicsFill;
   import flash.display.Graphics;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class Degyko extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Degyko(param1:Vector.<Qebar>, param2:Array, param3:Object) {
         var _loc4_:* = false;
         var _loc5_:* = true;
         this.internalFill_=new GraphicsSolidFill(3355443,1);
         this.qybodanyz=new GraphicsSolidFill(11776947,1);
         this.zoz=new GraphicsSolidFill(4473924,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.deb=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.zoz);
         new Vector.<IGraphicsData>(5)[0]=this.internalFill_;
         new Vector.<IGraphicsData>(5)[1]=this.deb;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.puzy;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.END_FILL;
         super();
         this.furahyqe=param1;
         this.jamuz=param2;
         this.labelText_=new Capitu().setSize(16).setColor(16777215);
         this.labelText_.x=WIDTH/2;
         this.labelText_.y=HEIGHT/2;
         this.labelText_.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Capitu.MIDDLE);
         this.labelText_.setBold(true);
         this.labelText_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         addChild(this.labelText_);
         this.setValue(param3);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.nonolypyr);
         return;
      }

      public static const WIDTH:int = 80;

      public static const HEIGHT:int = 32;

      public var furahyqe:Vector.<Qebar>;

      public var jamuz:Array;

      public var tiji:int = -1;

      public var labelText_:Capitu;

      private var over_:Boolean = false;

      public function setValue(param1:*) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.jamuz.length)
         {
            if(param1==this.jamuz[_loc2_])
            {
               if(_loc2_==this.tiji)
               {
                  return;
               }
               this.tiji=_loc2_;
               break;
            }
            _loc2_++;
         }
         this.setSelected(this.tiji);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      public function value() : * {
         return this.jamuz[this.tiji];
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.over_=true;
         this.qafu();
         return;
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.over_=false;
         this.qafu();
         return;
      }

      private function nonolypyr(param1:MouseEvent) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.setSelected((this.tiji+1)%this.jamuz.length);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      private var internalFill_:GraphicsSolidFill;

      private var qybodanyz:GraphicsSolidFill;

      private var zoz:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private var deb:GraphicsStroke;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function qafu() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         this.deb.fill=this.over_?this.qybodanyz:this.zoz;
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function setSelected(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tiji=param1;
         this.rike(this.furahyqe[this.tiji]);
         return;
      }

      private function rike(param1:Qebar) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.labelText_.setStringBuilder(param1);
         this.qafu();
         return;
      }
   }
[/CLASS]
}