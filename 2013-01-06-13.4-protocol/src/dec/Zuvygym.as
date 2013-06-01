package dec
{
[CLASS1641]   import flash.display.Sprite;
   import com.company.ui.Remyl;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.map.Lakum;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Vin;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Nosupygu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Zuvygym extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Zuvygym(param1:Qibynud) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.deb=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.mowejyman=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.deb;
         new Vector.<IGraphicsData>(5)[1]=this.mowejyman;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Nosupygu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Nosupygu.puzy;
         super();
         this.lopec=param1;
         this.qafu();
         this.kakimyqom=new Remyl(12,16777215,false,WIDTH-10,0);
         this.kakimyqom.filters=[new DropShadowFilter(0,0,0)];
         this.kakimyqom.y=4;
         this.kakimyqom.x=4;
         addChild(this.kakimyqom);
         this.duru=new Remyl(12,16777215,false,WIDTH-10,0);
         this.duru.wordWrap=true;
         this.duru.filters=[new DropShadowFilter(0,0,0)];
         this.duru.x=4;
         this.duru.y=36;
         addChild(this.duru);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 134;

      public static const HEIGHT:int = 150;

      private static const zutozo:String = ".in { margin-left:10px; text-indent: -10px; }";

      private var lopec:Qibynud;

      private var kakimyqom:Remyl;

      private var duru:Remyl;

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
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
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc2_:Rectangle = this.lopec.wotu();
         this.kakimyqom.text="Position: "+_loc2_.x+", "+_loc2_.y;
         if(_loc2_.width>1||_loc2_.height>1)
         {
            this.kakimyqom.text=this.kakimyqom.text+("\nRect: "+_loc2_.width+", "+_loc2_.height);
         }
         this.kakimyqom.qovy();
         var _loc3_:Luvotat = this.lopec.qifybege(_loc2_.x,_loc2_.y);
         var _loc4_:Vector.<int> = _loc3_==null?Duj.cywe:_loc3_.lakejuzyg;
         var _loc5_:String = _loc4_[Duj.jejem]==-1?"None":Lakum.peboda(_loc4_[Duj.jejem]);
         var _loc6_:String = _loc4_[Duj.kehozyby]==-1?"None":ObjectLibrary.peboda(_loc4_[Duj.kehozyby]);
         var _loc7_:String = _loc4_[Duj.kumuguz]==-1?"None":Vin.peboda(_loc4_[Duj.kumuguz]);
         this.duru.htmlText="<span class=\'in\'>"+"Ground: "+_loc5_+"\nObject: "+_loc6_+(_loc3_==null||_loc3_.semes==null?"":" ("+_loc3_.semes+")")+"\nRegion: "+_loc7_+"</span>";
         this.duru.qovy();
         return;
      }

      private var outlineFill_:GraphicsSolidFill;

      private var deb:GraphicsStroke;

      private var mowejyman:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function qafu() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Nosupygu.jyrodepu(this.path_);
         Nosupygu.secebeq(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }
[/CLASS]
}