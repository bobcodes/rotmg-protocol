package sudiba
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import com.company.util.Dyrejocu;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.display.GraphicsPathCommand;
   import flash.filters.DropShadowFilter;


   public class Lyrawo extends Sprite implements Pidub
   {
      public function Lyrawo(param1:GameObject, param2:String, param3:uint, param4:Number, param5:uint, param6:Number, param7:uint, param8:int, param9:Boolean, param10:Boolean) {
         var _loc14_:* = false;
         var _loc15_:* = true;
         this.jidade=new Point();
         this.dudoja=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         this.go_=param1;
         this.lifetime_=param8*1000;
         this.sotug=param10;
         this.text_=new TextField();
         this.text_.autoSize=TextFieldAutoSize.LEFT;
         this.text_.embedFonts=true;
         this.text_.width=150;
         var _loc11_:TextFormat = new TextFormat();
         _loc11_.font="Myriad Pro";
         _loc11_.size=14;
         _loc11_.bold=param9;
         _loc11_.color=param7;
         this.text_.defaultTextFormat=_loc11_;
         this.text_.selectable=false;
         this.text_.mouseEnabled=false;
         this.text_.multiline=true;
         this.text_.wordWrap=true;
         this.text_.text=param2;
         addChild(this.text_);
         var _loc12_:int = this.text_.textWidth+4;
         this.jidade.x=-_loc12_/2;
         this.dudoja.color=param3;
         this.dudoja.alpha=param4;
         this.outlineFill_.color=param5;
         this.outlineFill_.alpha=param6;
         graphics.clear();
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(-6,-6,_loc12_+12,height+12,4,[1,1,1,1],this.path_);
         this.path_.commands.splice(6,0,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO);
         var _loc13_:int = height;
         this.path_.data.splice(12,0,_loc12_/2+8,_loc13_+6,_loc12_/2,_loc13_+18,_loc12_/2-8,_loc13_+6);
         graphics.drawGraphicsData(this.graphicsData_);
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         this.jidade.y=-height-this.go_.texture_.height*param1.size_/100*5-2;
         visible=false;
         return;
      }

      public var go_:GameObject;

      public var lifetime_:int;

      public var sotug:Boolean;

      public var jidade:Point;

      public var text_:TextField;

      private var dudoja:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private var startTime_:int = 0;

      public function draw(param1:Qawosiwi, param2:int) : Boolean {
         var _loc4_:* = false;
         var _loc5_:* = true;
         if(this.startTime_==0)
         {
            this.startTime_=param2;
         }
         var _loc3_:int = param2-this.startTime_;
         if(_loc3_>this.lifetime_||!(this.go_==null)&&this.go_.map_==null)
         {
            return false;
         }
         if(this.go_==null||!this.go_.vuci)
         {
            visible=false;
            return true;
         }
         if((this.sotug)&&!Parameters.data_.textBubbles)
         {
            visible=false;
            return true;
         }
         visible=true;
         x=int(this.go_.witog[0]+this.jidade.x);
         y=int(this.go_.witog[1]+this.jidade.y);
         return true;
      }

      public function tomu() : GameObject {
         return this.go_;
      }

      public function dispose() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         parent.removeChild(this);
         return;
      }
   }

}