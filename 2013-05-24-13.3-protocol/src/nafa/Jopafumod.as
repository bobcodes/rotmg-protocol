package nafa
{
   import flash.display.Sprite;
   import com.company.ui.Sytubyvyg;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.map.Qezab;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vehulumes;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Tizulo;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Jopafumod extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jopafumod(param1:Simezute) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.cedit=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.bolu=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.cedit;
         new Vector.<IGraphicsData>(5)[1]=this.bolu;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Tizulo.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Tizulo.gejyd;
         super();
         this.mebal=param1;
         this.tizyf();
         this.siki=new Sytubyvyg(12,16777215,false,WIDTH-10,0);
         this.siki.filters=[new DropShadowFilter(0,0,0)];
         this.siki.y=4;
         this.siki.x=4;
         addChild(this.siki);
         this.vycyz=new Sytubyvyg(12,16777215,false,WIDTH-10,0);
         this.vycyz.wordWrap=true;
         this.vycyz.filters=[new DropShadowFilter(0,0,0)];
         this.vycyz.x=4;
         this.vycyz.y=36;
         addChild(this.vycyz);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 134;

      public static const HEIGHT:int = 150;

      private static const jonu:String = ".in { margin-left:10px; text-indent: -10px; }";

      private var mebal:Simezute;

      private var siki:Sytubyvyg;

      private var vycyz:Sytubyvyg;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         return;
      }

      private function onEnterFrame(param1:Event) : void {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Rectangle = this.mebal.hah();
         this.siki.text="Position: "+_loc2_.x+", "+_loc2_.y;
         if(_loc2_.width>1||_loc2_.height>1)
         {
            this.siki.text=this.siki.text+("\nRect: "+_loc2_.width+", "+_loc2_.height);
         }
         this.siki.cijoka();
         var _loc3_:Gutunul = this.mebal.gosyq(_loc2_.x,_loc2_.y);
         var _loc4_:Vector.<int> = _loc3_==null?Himo.nyv:_loc3_.qenozyk;
         var _loc5_:String = _loc4_[Himo.zacuzo]==-1?"None":Qezab.pelek(_loc4_[Himo.zacuzo]);
         var _loc6_:String = _loc4_[Himo.himuvypeb]==-1?"None":ObjectLibrary.pelek(_loc4_[Himo.himuvypeb]);
         var _loc7_:String = _loc4_[Himo.picobozuc]==-1?"None":Vehulumes.pelek(_loc4_[Himo.picobozuc]);
         this.vycyz.htmlText="<span class=\'in\'>"+"Ground: "+_loc5_+"\nObject: "+_loc6_+(_loc3_==null||_loc3_.damu==null?"":" ("+_loc3_.damu+")")+"\nRegion: "+_loc7_+"</span>";
         this.vycyz.cijoka();
         return;
      }

      private var outlineFill_:GraphicsSolidFill;

      private var cedit:GraphicsStroke;

      private var bolu:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function tizyf() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         Tizulo.vomynaqu(this.path_);
         Tizulo.woforyzib(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}