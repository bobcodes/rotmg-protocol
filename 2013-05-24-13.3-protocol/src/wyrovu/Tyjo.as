package wyrovu
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
   import com.company.assembleegameclient.map.Wypyj;
   import aaa.rotmg.config.UserConfig;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import com.company.util.Tizulo;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFormat;
   import flash.display.GraphicsPathCommand;
   import flash.filters.DropShadowFilter;


   public class Tyjo extends Sprite implements Pomuk
   {
      public function Tyjo(param1:GameObject, param2:String, param3:uint, param4:Number, param5:uint, param6:Number, param7:uint, param8:int, param9:Boolean, param10:Boolean) {
         var _loc14_:* = true;
         var _loc15_:* = false;
         this.roqopolij=new Point();
         this.bolu=new GraphicsSolidFill(0,1);
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(2,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.bolu;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         super();
         mouseEnabled=false;
         mouseChildren=false;
         this.go_=param1;
         this.lifetime_=param8*1000;
         this.gedym=param10;
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
         this.roqopolij.x=-_loc12_/2;
         this.bolu.color=param3;
         this.bolu.alpha=param4;
         this.outlineFill_.color=param5;
         this.outlineFill_.alpha=param6;
         graphics.clear();
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(-6,-6,_loc12_+12,height+12,4,[1,1,1,1],this.path_);
         this.path_.commands.splice(6,0,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO,GraphicsPathCommand.LINE_TO);
         var _loc13_:int = height;
         this.path_.data.splice(12,0,_loc12_/2+8,_loc13_+6,_loc12_/2,_loc13_+18,_loc12_/2-8,_loc13_+6);
         graphics.drawGraphicsData(this.graphicsData_);
         filters=[new DropShadowFilter(0,0,0,1,16,16)];
         this.roqopolij.y=-height-this.go_.texture_.height*param1.size_/100*5-2;
         visible=false;
         return;
      }

      public var go_:GameObject;

      public var lifetime_:int;

      public var gedym:Boolean;

      public var roqopolij:Point;

      public var text_:TextField;

      private var bolu:GraphicsSolidFill;

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private var startTime_:int = 0;

      public function draw(param1:Wypyj, param2:int) : Boolean {
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
         if(this.go_==null||!this.go_.qofeleqir)
         {
            visible=false;
            return true;
         }
         if((this.gedym)&&!UserConfig.data_.textBubbles)
         {
            visible=false;
            return true;
         }
         visible=true;
         x=int(this.go_.kiwujacam[0]+this.roqopolij.x);
         y=int(this.go_.kiwujacam[1]+this.roqopolij.y);
         return true;
      }

      public function fag() : GameObject {
         return this.go_;
      }

      public function dispose() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         parent.removeChild(this);
         return;
      }
   }

}