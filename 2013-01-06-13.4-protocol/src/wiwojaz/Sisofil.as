package wiwojaz
{
[CLASS1117]   import flash.display.Sprite;
   import com.company.assembleegameclient.objects.GameObject;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;
   import com.company.assembleegameclient.parameters.Parameters;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import com.company.util.Nosupygu;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.display.GraphicsPathCommand;
   import flash.filters.DropShadowFilter;


   public class Sisofil extends Sprite implements Husuwuj
   {
      public function Sisofil(param1:GameObject, param2:String, param3:uint, param4:Number, param5:uint, param6:Number, param7:uint, param8:int, param9:Boolean, param10:Boolean) {
         var _loc14_:* = true;
         var _loc15_:* = false;
         this.bot=new Point();
         this.mowejyman=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.deb;
         new Vector.<IGraphicsData>(5)[1]=this.mowejyman;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.puzy;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         this.go_=param1;
         this.lifetime_=param8*1000;
         this.haqa=param10;
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
         this.bot.x=-_loc12_/2;
         this.mowejyman.color=param3;
         this.mowejyman.alpha=param4;
         this.outlineFill_.color=param5;
         this.outlineFill_.alpha=param6;
         graphics.clear();
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(-6,-6,_loc12_+12,height+12,4,[1,1,1,1],this.path_);
         this.path_.commands.splice(6,0,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO);
         var _loc13_:int = height;
         this.path_.data.splice(12,0,_loc12_/2+8,_loc13_+6,_loc12_/2,_loc13_+18,_loc12_/2-8,_loc13_+6);
         graphics.drawGraphicsData(this.graphicsData_);
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         this.bot.y=-height-this.go_.texture_.height*param1.size_/100*5-2;
         visible=false;
         return;
      }

      public var go_:GameObject;

      public var lifetime_:int;

      public var haqa:Boolean;

      public var bot:Point;

      public var text_:TextField;

      private var mowejyman:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private var startTime_:int = 0;

      public function draw(param1:Fot, param2:int) : Boolean {
         var _loc4_:* = true;
         var _loc5_:* = false;
         if(this.startTime_==0)
         {
            this.startTime_=param2;
         }
         var _loc3_:int = param2-this.startTime_;
         if(_loc3_>this.lifetime_||!(this.go_==null)&&this.go_.map_==null)
         {
            return false;
         }
         if(this.go_==null||!this.go_.nyz)
         {
            visible=false;
            return true;
         }
         if((this.haqa)&&!Parameters.data_.textBubbles)
         {
            visible=false;
            return true;
         }
         visible=true;
         x=int(this.go_.meluhykag[0]+this.bot.x);
         y=int(this.go_.meluhykag[1]+this.bot.y);
         return true;
      }

      public function fujofegyl() : GameObject {
         return this.go_;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         parent.removeChild(this);
         return;
      }
   }
[/CLASS]
}