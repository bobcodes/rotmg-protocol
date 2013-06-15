package loradaby
{
   import flash.display.Sprite;
   import __AS3__.vec.Vector;
   import jediwip.Tunyhazo;
   import hivysif.Guzowoja;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsPath;
   import flash.display.GraphicsStroke;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.display.IGraphicsFill;
   import flash.display.Graphics;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.text.TextFieldAutoSize;
   import flash.filters.DropShadowFilter;


   public class Vode extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vode(param1:Vector.<Tunyhazo>, param2:Array, param3:Object) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         this.internalFill_=new GraphicsSolidFill(3355443,1);
         this.dudeb=new GraphicsSolidFill(11776947,1);
         this.ralo=new GraphicsSolidFill(4473924,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         this.dabyqeqi=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.ralo);
         new Vector.<IGraphicsData>(5)[0]=this.internalFill_;
         new Vector.<IGraphicsData>(5)[1]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.jydebugu;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.END_FILL;
         super();
         this.revuk=param1;
         this.sivege=param2;
         this.labelText_=new Guzowoja().setSize(16).setColor(16777215);
         this.labelText_.x=WIDTH/2;
         this.labelText_.y=HEIGHT/2;
         this.labelText_.setAutoSize(TextFieldAutoSize.CENTER).setVerticalAlign(Guzowoja.MIDDLE);
         this.labelText_.setBold(true);
         this.labelText_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         addChild(this.labelText_);
         this.setValue(param3);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         addEventListener(MouseEvent.ROLL_OUT,this.onRollOut);
         addEventListener(MouseEvent.CLICK,this.zug);
         return;
      }

      public static const WIDTH:int = 80;

      public static const HEIGHT:int = 32;

      public var revuk:Vector.<Tunyhazo>;

      public var sivege:Array;

      public var jos:int = -1;

      public var labelText_:Guzowoja;

      private var over_:Boolean = false;

      public function setValue(param1:*) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<this.sivege.length)
         {
            if(param1==this.sivege[_loc2_])
            {
               if(_loc2_==this.jos)
               {
                  return;
               }
               this.jos=_loc2_;
               break;
            }
            _loc2_++;
         }
         this.setSelected(this.jos);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      public function value() : * {
         return this.sivege[this.jos];
      }

      private function onMouseOver(param1:MouseEvent) : void {
         var [OFS2]_loc2_:* = [/OFS]true;
         var [OFS3]_loc3_:* = [/OFS]false;
         this.[OFS8]over_[/OFS][OFS8]=[/OFS]true;
         this.[OFS12]guviqejy[/OFS][OFS12]([/OFS][OFS12])[/OFS];
         [OFS16]return[/OFS];
      }

      private function onRollOut(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.over_=false;
         this.guviqejy();
         return;
      }

      private function zug(param1:MouseEvent) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.setSelected((this.jos+1)%this.sivege.length);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }

      private var internalFill_:GraphicsSolidFill;

      private var dudeb:GraphicsSolidFill;

      private var ralo:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private var dabyqeqi:GraphicsStroke;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function guviqejy() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         this.dabyqeqi.fill=this.over_?this.dudeb:this.ralo;
         graphics.drawGraphicsData(this.graphicsData_);
         var _loc1_:Graphics = graphics;
         _loc1_.clear();
         _loc1_.drawGraphicsData(this.graphicsData_);
         return;
      }

      private function setSelected(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.jos=param1;
         this.kenadyb(this.revuk[this.jos]);
         return;
      }

      private function kenadyb(param1:Tunyhazo) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.labelText_.setStringBuilder(param1);
         this.guviqejy();
         return;
      }
   }

}