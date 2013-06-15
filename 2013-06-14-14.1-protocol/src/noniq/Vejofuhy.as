package noniq
{
   import flash.display.Sprite;
   import com.company.ui.Vovoj;
   import flash.events.Event;
   import flash.geom.Rectangle;
   import __AS3__.vec.Vector;
   import com.company.assembleegameclient.map.Qemujy;
   import com.company.assembleegameclient.objects.ObjectLibrary;
   import com.company.assembleegameclient.map.Focu;
   import flash.display.GraphicsSolidFill;
   import flash.display.GraphicsStroke;
   import flash.display.GraphicsPath;
   import flash.display.IGraphicsData;
   import com.company.util.Dyrejocu;
   import flash.display.LineScaleMode;
   import flash.display.CapsStyle;
   import flash.display.JointStyle;
   import flash.filters.DropShadowFilter;


   public class Vejofuhy extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Vejofuhy(param1:Vibefij) {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.outlineFill_=new GraphicsSolidFill(16777215,1);
         this.dabyqeqi=new GraphicsStroke(1,false,LineScaleMode.NORMAL,CapsStyle.NONE,JointStyle.ROUND,3,this.outlineFill_);
         this.dudoja=new GraphicsSolidFill(3552822,1);
         this.path_=new GraphicsPath(new Vector.<int>(),new Vector.<Number>());
         new Vector.<IGraphicsData>(5)[0]=this.dabyqeqi;
         new Vector.<IGraphicsData>(5)[1]=this.dudoja;
         new Vector.<IGraphicsData>(5)[2]=this.path_;
         new Vector.<IGraphicsData>(5)[3]=Dyrejocu.END_FILL;
         new Vector.<IGraphicsData>(5)[4]=Dyrejocu.jydebugu;
         super();
         this.hoh=param1;
         this.guviqejy();
         this.duditec=new Vovoj(12,16777215,false,WIDTH-10,0);
         this.duditec.filters=[new DropShadowFilter(0,0,0)];
         this.duditec.y=4;
         this.duditec.x=4;
         addChild(this.duditec);
         this.geni=new Vovoj(12,16777215,false,WIDTH-10,0);
         this.geni.wordWrap=true;
         this.geni.filters=[new DropShadowFilter(0,0,0)];
         this.geni.x=4;
         this.geni.y=36;
         addChild(this.geni);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static const WIDTH:int = 134;

      public static const HEIGHT:int = 150;

      private static const sat:String = ".in { margin-left:10px; text-indent: -10px; }";

      private var hoh:Vibefij;

      private var duditec:Vovoj;

      private var geni:Vovoj;

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
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc2_:Rectangle = this.hoh.vofon();
         this.duditec.text="Position: "+_loc2_.x+", "+_loc2_.y;
         if(_loc2_.width>1||_loc2_.height>1)
         {
            this.duditec.text=this.duditec.text+("\nRect: "+_loc2_.width+", "+_loc2_.height);
         }
         this.duditec.jacuf();
         var _loc3_:Gyd = this.hoh.zekotal(_loc2_.x,_loc2_.y);
         var _loc4_:Vector.<int> = _loc3_==null?Cariwepy.cevoludo:_loc3_.vodypemo;
         var _loc5_:String = _loc4_[Cariwepy.pivycina]==-1?"None":Qemujy.ryqovol(_loc4_[Cariwepy.pivycina]);
         var _loc6_:String = _loc4_[Cariwepy.nanyt]==-1?"None":ObjectLibrary.ryqovol(_loc4_[Cariwepy.nanyt]);
         var _loc7_:String = _loc4_[Cariwepy.cis]==-1?"None":Focu.ryqovol(_loc4_[Cariwepy.cis]);
         this.geni.htmlText="<span class=\'in\'>"+"Ground: "+_loc5_+"\nObject: "+_loc6_+(_loc3_==null||_loc3_.quduk==null?"":" ("+_loc3_.quduk+")")+"\nRegion: "+_loc7_+"</span>";
         this.geni.jacuf();
         return;
      }

      private var outlineFill_:GraphicsSolidFill;

      private var dabyqeqi:GraphicsStroke;

      private var dudoja:GraphicsSolidFill;

      private var path_:GraphicsPath;

      private const graphicsData_:Vector.<IGraphicsData> = new Vector.<IGraphicsData>(5);

      private function guviqejy() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         Dyrejocu.gorudy(this.path_);
         Dyrejocu.moluv(0,0,WIDTH,HEIGHT,4,[1,1,1,1],this.path_);
         graphics.drawGraphicsData(this.graphicsData_);
         return;
      }
   }

}